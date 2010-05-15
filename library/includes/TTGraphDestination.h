/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TTGRAPH_DESTINATION_H__
#define __TTGRAPH_DESTINATION_H__

#include "TTGraph.h"
//#include "TTGraphObject.h"
#include "TTGraphOutlet.h"

class TTGraphOutlet;
typedef TTGraphOutlet*					TTGraphOutletPtr;


/******************************************************************************************/

// NOTE: we don't need to keep a buffer of our own, be we just mirror the buffer of mSourceObject

class TTGraphDestination {
	friend void TTGraphDestinationObserverCallback(TTGraphDestination* self, TTValue& arg);
	
	TTGraphObjectPtr	mDestinationObject;	// the object from which we pull samples
	TTUInt16			mInletNumber;		// zero-based
	TTObjectPtr			mCallbackHandler;
	TTGraphOutletPtr	mOwner;				// the owning inlet
	
public:
	TTGraphDestination();	
	~TTGraphDestination();			

	// Internal method shared/called by constructors.
	void create();
	
	TTBoolean match(TTGraphObjectPtr anObject, TTUInt16 anInletNumber)
	{
		if (anObject == mDestinationObject && anInletNumber == mInletNumber)
			return YES;
		else
			return NO;
	}
	
	void setOwner(TTGraphOutletPtr theOwningOutlet)
	{
		mOwner = theOwningOutlet;
	}
	
	// Copying Functions -- critical due to use by std::vector 
	
	TTGraphDestination(const TTGraphDestination& original) :
		mDestinationObject(NULL),
		mInletNumber(0),
		mCallbackHandler(NULL),
		mOwner(NULL)
	{
		create();
		mOwner = original.mOwner;
		
		// NOTE: See notes below in TTMulticoreInlet copy constructor...
		// NOTE: When vector of sources is resized, it is possible for an object to be created and immediately copied -- prior to a 'connect' method call
		// NOTE: Are we ever called after connecting?  If so, then we need to set up the connection...
		
		if (original.mDestinationObject)
			connect(original.mDestinationObject, original.mInletNumber);
	}
	
	// This one is called, for example, on the Mac when dropping a source and the vector has to be re-arranged.	
	TTGraphDestination& operator=(const TTGraphDestination& original)
	{
		mDestinationObject = NULL;
		mInletNumber = 0;
		mCallbackHandler = NULL;
		mOwner = NULL;
	
		// TODO: We're probably leaking memory here, because mCallbackHandler is potentially never freed...
		// However, if we don't NULL the mCallbackHandler 
		// then we end up with crashes when we do something like close a Max patcher after editing connections while running. 
		
		create();
		mOwner = original.mOwner;

		// TODO: evaluate if this is doing the correct thing:
		// - we can copy the owner ptr for sure
		// - we definitely can not copy the mCallbackHandler pointer
		// - not certain about the mSourceObject

		if (original.mDestinationObject)
			connect(original.mDestinationObject, original.mInletNumber);
		
		return *this;
	}
	
	/** Compare two sources for equality. */
	inline friend bool operator == (const TTGraphDestination& source1, const TTGraphDestination& source2)
	{
		if (source1.mDestinationObject == source2.mDestinationObject && source1.mInletNumber == source2.mInletNumber)
			return true;
		else
			return false;
	}
	
	
	// Graph Methods
	
	void connect(TTGraphObjectPtr anObject, TTUInt16 fromOutletNumber);
			
	
	TTErr push(const TTDictionary& aDictionary);
	
};

typedef TTGraphDestination*					TTGraphDestinationPtr;
typedef vector<TTGraphDestination>			TTGraphDestinationVector;
typedef TTGraphDestinationVector::iterator	TTGraphDestinationIter;


#endif // __TTGRAPH_DESTINATION_H__
