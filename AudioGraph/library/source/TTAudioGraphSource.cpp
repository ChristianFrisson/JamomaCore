/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief Represents one connection between two AudioGraph objects
 *
 * @details TTAudioGraphSource is an upstream connection from a #TTAudioGraphInlet of a #TTAudioGraphObject to a "TTAudioGraphOutlet of an upstream #TTAudioGraphObject.
 * The relationship of a source to other parts of the audio graph hierarchy is as follows:
 *
 * - A graph may have many objects.
 * - An object may have many inlets.
 * - An inlet may have many signals (sources) connected.
 * - A signal may have many channels.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"
#include "TTCallback.h"


// C Callback from any AudioGraph Source objects we are observing
void TTAudioGraphSourceObserverCallback(TTAudioGraphSourcePtr self, TTValue& arg)
{
	// at the moment we only receive one callback, which is for the object being deleted
	self->mSourceObject = NULL;
	self->mOutletNumber = 0;
	self->mOwner->drop(*self);
}


// Implementation for AudioGraph Source class

TTAudioGraphSource::TTAudioGraphSource() :
	mSourceObject(NULL),
	mOutletNumber(0),
	mCallbackHandler("callback"),
	mOwner(NULL)
{
	create();
}


TTAudioGraphSource::~TTAudioGraphSource()
{
	if (mSourceObject)
		mSourceObject->unregisterObserverForNotifications(mCallbackHandler);
	
	mSourceObject = NULL;
	mOutletNumber = 0;
}


void TTAudioGraphSource::create()
{
	mCallbackHandler.set(TT("function"), TTPtr(&TTAudioGraphSourceObserverCallback));
	mCallbackHandler.set(TT("baton"), TTPtr(this));
}


void TTAudioGraphSource::connect(TTAudioGraphObjectBasePtr anObject, TTUInt16 fromOutletNumber)
{
	mSourceObject = anObject;
	mOutletNumber = fromOutletNumber;

	// dynamically add a message to the callback object so that it can handle the 'objectFreeing' notification
	mCallbackHandler.instance()->registerMessage(TT("objectFreeing"), (TTMethod)&TTCallback::notify, kTTMessagePassValue);
	
	// tell the source that is passed in that we want to watch it
	mSourceObject->registerObserverForNotifications(mCallbackHandler);
}	
