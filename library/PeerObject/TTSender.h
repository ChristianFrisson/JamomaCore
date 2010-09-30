/* 
 * A Sender Object
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SENDER_H__
#define __TT_SENDER_H__

#include "TTModular.h"

/**	TTSender ... TODO : an explanation
 */
class TTMODULAR_EXPORT TTSender : public TTObject
{
	TTCLASS_SETUP(TTSender)
	
public:
	
	TTNodeDirectoryPtr	mDirectory;					///< the directory
	TTSymbolPtr			mAddress;					///< ATTRIBUTE: the address to bind
	TTSymbolPtr			mAttribute;					///< ATTRIBUTE: the attribute to bind (default : value)

private:
	
	TTBoolean			mIsSending;					///< a flag to lock the object in case of infinite loop
	TTListPtr			mObjectCache;				///< a cache containing all binded objects for quick access
	TTObjectPtr			mObserver;					///< a life cycle observer
	
public:
	
	/**	Setter for mAddress attribute. */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter for mAttribute attribute. */
	TTErr setAttribute(const TTValue& value);
	
	TTErr send(TTValue& valueToSend);				// to -- lower case in order to hide the message during the Class wrapping process
	
private :
	
	
	TTErr bind();
	
	TTErr unbind();
	
	friend TTErr TTMODULAR_EXPORT TTSenderDirectoryCallback(TTPtr baton, TTValue& data);
	
};

typedef TTSender* TTSenderPtr;

/**	
 @param	baton						..
 @param	data						..
 @return							an error code */
TTErr TTMODULAR_EXPORT TTSenderDirectoryCallback(TTPtr baton, TTValue& data);

#endif // __TT_SENDER_H__
