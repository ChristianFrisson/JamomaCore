/* 
 * AudioGraph Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"
#include "TTAudioGraphOutlet.h"

#define thisTTClass			TTAudioGraphObject

TTMutexPtr TTAudioGraphObject::sSharedMutex = NULL;


//	Arguments
//	1. (required) The name of the Jamoma DSP object you want to wrap
//	2. (optional) Number of inlets, default = 1
//	3. (optional) Number of outlets, default = 1


TTObjectPtr TTAudioGraphObject::instantiate (TTSymbolPtr name, TTValue& arguments) 
{
	return new TTAudioGraphObject(arguments);
}

extern "C" void TTAudioGraphObject::registerClass() 
{
	TTClassRegister(TT("audio.object"), "audio, graph, wrapper", TTAudioGraphObject::instantiate );
}


TTAudioGraphObject :: TTAudioGraphObject (TTValue& arguments) :
	TTGraphObject(arguments),
	mStatus(kTTAudioGraphProcessUnknown),
	mDescription(NULL),
	mAudioFlags(kTTAudioGraphProcessor), 
	mInputSignals(NULL), 
	mOutputSignals(NULL), 
	mVectorSize(0)
{
	TTSymbolPtr	wrappedObjectName = NULL;
	TTUInt16	numInlets = 1;
	TTUInt16	numOutlets = 1;
	
	addAttributeWithSetter(NumAudioInlets, kTypeUInt32);
	addAttributeWithSetter(NumAudioOutlets, kTypeUInt32);
	
	TT_ASSERT(audiograph_correct_instantiation_arg_count, arguments.getSize() > 0);

	arguments.get(0, &wrappedObjectName);
	if (arguments.getSize() > 1)
		arguments.get(1, numInlets);
	if (arguments.getSize() > 2)
		arguments.get(2, numOutlets);
	
	setAttributeValue(TT("numAudioInlets"), numInlets);
	setAttributeValue(TT("numAudioOutlets"), numOutlets);
	
	// if an object supports the 'setOwner' message, then we tell it that we want to become the owner
	// this is particularly important for the dac object
	TTValue v = TTPtr(this);
	mKernel->sendMessage(TT("setOwner"), v);
	
	if (!sSharedMutex)
		sSharedMutex = new TTMutex(false);
}


TTAudioGraphObject::~TTAudioGraphObject()
{
	TTObjectRelease((TTObjectPtr*)&mInputSignals);
	TTObjectRelease((TTObjectPtr*)&mOutputSignals);
}


TTErr TTAudioGraphObject::setNumAudioInlets(const TTValue& newNumInlets)
{
	TTErr err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mInputSignals, newNumInlets);
	mAudioInlets.resize(newNumInlets);
	mInputSignals->setMaxNumAudioSignals(newNumInlets);
	mInputSignals->numAudioSignals = newNumInlets;			// TODO: this array num signals access is kind of clumsy and inconsistent [tap]
	mNumAudioInlets = newNumInlets;
	return err;
}


TTErr TTAudioGraphObject::setNumAudioOutlets(const TTValue& newNumOutlets)
{
	TTErr err = TTObjectInstantiate(kTTSym_audiosignalarray, (TTObjectPtr*)&mOutputSignals, newNumOutlets);
	mAudioOutlets.resize(newNumOutlets);
	mOutputSignals->setMaxNumAudioSignals(newNumOutlets);
	mOutputSignals->numAudioSignals = newNumOutlets;
	mNumAudioOutlets = newNumOutlets;
	return err;
}


void TTAudioGraphObject::prepareAudioDescription()
{
	if (valid && mDescription) {
		mDescription->sIndex = 0;
		delete mDescription;
		mDescription = NULL;
		
		for (TTAudioGraphInletIter inlet = mAudioInlets.begin(); inlet != mAudioInlets.end(); inlet++)
			inlet->prepareDescriptions();
	}
}


void TTAudioGraphObject::getAudioDescription(TTAudioGraphDescription& desc)
{
	if (mDescription) {		// a description for this object has already been created -- use it.
		desc = *mDescription;
	}
	else {					// create a new description for this object.
		desc.mClassName = mKernel->getName();
		desc.mObjectInstance = mKernel;
		desc.mNumInlets = mInlets.size();
		desc.mNumOutlets = mOutlets.size();
		desc.mAudioDescriptionsForInlets.clear();
		desc.mID = desc.sIndex++;
		mDescription = new TTAudioGraphDescription;
		(*mDescription) = desc;
		
		for (TTAudioGraphInletIter inlet = mAudioInlets.begin(); inlet != mAudioInlets.end(); inlet++) {
			TTAudioGraphDescriptionVector	vector;

			inlet->getDescriptions(vector);
			desc.mAudioDescriptionsForInlets.push_back(vector);
		}
		
		getDescription(desc.mControlDescription);
	}
}


TTErr TTAudioGraphObject::resetAudio()
{
	sSharedMutex->lock();
	for_each(mAudioInlets.begin(), mAudioInlets.end(), mem_fun_ref(&TTAudioGraphInlet::reset));		
	sSharedMutex->unlock();
	return kTTErrNone;
}


TTErr TTAudioGraphObject::connectAudio(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{	
	TTErr err;

	// it might seem like connections should not need the critical region: 
	// the vector gets a little longer and the new items might be ignored the first time
	// it doesn't change the order or delete things or copy them around in the vector like a drop() does
	// but:
	// if the resize of the vector can't happen in-place, then the whole thing gets copied and the old one destroyed

	sSharedMutex->lock();
	err = mAudioInlets[toInletNumber].connect(anObject, fromOutletNumber);
	sSharedMutex->unlock();
	return err;
}


TTErr TTAudioGraphObject::dropAudio(TTAudioGraphObjectPtr anObject, TTUInt16 fromOutletNumber, TTUInt16 toInletNumber)
{
	TTErr err = kTTErrInvalidValue;

	sSharedMutex->lock();
	if (toInletNumber < mAudioInlets.size())
		err = mAudioInlets[toInletNumber].drop(anObject, fromOutletNumber);	
	sSharedMutex->unlock();
	return err;
}


TTErr TTAudioGraphObject::preprocess(const TTAudioGraphPreprocessData& initData)
{
	lock();
	if (valid && mStatus != kTTAudioGraphProcessNotStarted) {
		TTAudioSignalPtr	audioSignal;
		TTUInt16			index = 0;
		
		mStatus = kTTAudioGraphProcessNotStarted;		

		for (TTAudioGraphInletIter inlet = mAudioInlets.begin(); inlet != mAudioInlets.end(); inlet++) {
			inlet->preprocess(initData);
			audioSignal = inlet->getBuffer(); // TODO: It seems like we can just cache this once when we init the graph, because the number of inlets cannot change on-the-fly
			mInputSignals->setSignal(index, audioSignal);
			index++;
		}
		
		index = 0;
		for (TTAudioGraphOutletIter outlet = mAudioOutlets.begin(); outlet != mAudioOutlets.end(); outlet++) {
			audioSignal = outlet->getBuffer();
			mOutputSignals->setSignal(index, audioSignal);
			index++;
		}

		if (mAudioFlags & kTTAudioGraphGenerator) {
			if (mVectorSize != initData.vectorSize) {
				mVectorSize = initData.vectorSize;					
				mOutputSignals->allocAllWithVectorSize(initData.vectorSize);
				mInputSignals->setMaxNumAudioSignals(0);
			}			
		}
	}
	unlock();
	return kTTErrNone;
}


TTErr TTAudioGraphObject::process(TTAudioSignalPtr& returnedSignal, TTUInt16 forOutletNumber)
{
	lock();
	switch (mStatus) {		

		// we have not processed anything yet, so let's get started
		case kTTAudioGraphProcessNotStarted:
			mStatus = kTTAudioGraphProcessingCurrently;
			
			if (mAudioFlags & kTTAudioGraphGenerator) {			// a generator (or no input)
				getUnitGenerator()->process(mInputSignals, mOutputSignals);
			}
			else {												// a processor
				// zero our collected input samples
				mInputSignals->clearAll();

				// pull (process, sum, and collect) all of our source audio
				for_each(mAudioInlets.begin(), mAudioInlets.end(), mem_fun_ref(&TTAudioGraphInlet::process));

				if (!(mAudioFlags & kTTAudioGraphNonAdapting)) {
					// examples of non-adapting objects are join≈ and matrix≈
					// non-adapting in this case means channel numbers -- vector sizes still adapt
					mOutputSignals->matchNumChannels(mInputSignals);
				}
				mOutputSignals->allocAllWithVectorSize(mInputSignals->getVectorSize());
				
				// adapt ugen based on the input we are going to process
				getUnitGenerator()->adaptMaxNumChannels(mInputSignals->getMaxNumChannels());
				getUnitGenerator()->setSampleRate(mInputSignals->getSignal(0).getSampleRate());
				
				// finally, process the audio
				getUnitGenerator()->process(mInputSignals, mOutputSignals);
			}
			
			// TODO: we're doing a copy below -- is that what we really want?  Or can we just return the pointer?
			returnedSignal = mAudioOutlets[forOutletNumber].mBufferedOutput;
			mStatus = kTTAudioGraphProcessComplete;
			break;
		
		// we already processed everything that needs to be processed, so just set the pointer
		case kTTAudioGraphProcessComplete:
			returnedSignal = mAudioOutlets[forOutletNumber].mBufferedOutput;
			break;
		
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kTTAudioGraphProcessingCurrently:
			returnedSignal = mAudioOutlets[forOutletNumber].mBufferedOutput;
			break;
		
		// we should never get here
		default:
			unlock();
			return kTTErrGeneric;
	}
	unlock();
	return kTTErrNone;
}
