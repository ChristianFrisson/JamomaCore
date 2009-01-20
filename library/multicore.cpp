/* 
 * MCore Extensions for TTBlue
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "multicore.h"
#define thisTTClass MCoreObject


MCoreObject::MCoreObject(const TTValue& arguments)
	: TTObject("multicore.object"), flags(kMCoreProcessor), alwaysProcessSidechain(false), audioSources(NULL), sidechainSources(NULL), numSources(0), numSidechainSources(0), 
	audioInput(NULL), audioOutput(NULL), sidechainInput(NULL), sidechainOutput(NULL), audioObject(NULL)
{
	TTErr		err;
	TTSymbolPtr	wrappedObjectName;
	TTUInt16	initialNumChannels;
	
	TT_ASSERT(multicore_correct_instantiation_args, arguments.getSize() == 2);
	
	arguments.get(0, &wrappedObjectName);
	arguments.get(1, initialNumChannels);
	inChansToOutChansRatio[0] = 1;
	inChansToOutChansRatio[1] = 1;
	
	err = TTObjectInstantiate(wrappedObjectName, &audioObject, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioInput, initialNumChannels);
	err = TTObjectInstantiate(kTTSym_audiosignal, &audioOutput, initialNumChannels * TTLimitMin<TTFloat32>(inChansToOutChansRatio[1] / inChansToOutChansRatio[0], 1));
	
	registerMessageWithArgument(objectFreeing);	// called when one of our input source objects is deleted
}


MCoreObject::~MCoreObject()
{
	for(TTUInt16 i=0; i<numSources; i++)
		audioSources[i]->unregisterObserverForNotifications(*this);

	TTObjectRelease(&audioObject);
	TTObjectRelease(&audioInput);
	TTObjectRelease(&audioOutput);
	TTObjectRelease(&sidechainInput);
	TTObjectRelease(&sidechainOutput);
}


TTErr MCoreObject::objectFreeing(const TTValue& theObjectBeingDeleted)
{
	TTObjectPtr o = theObjectBeingDeleted;
	TTBoolean	found = NO;
	TTBoolean	oldValid = valid;
	// This is an ugly operation
	// the problem is that we don't want to traverse a linked-list in the processing chain
	
	valid = false;
	while(getlock())
		;
	
	for(TTUInt16 i=0; i<(numSources-1); i++){
		if(audioSources[i] == o)
			found = YES;
		if(found)
			audioSources[i] = audioSources[i+1];
	}
	
	audioSources[numSources-1] = 0;
	numSources--;
	
	valid = oldValid;
	return kTTErrNone;
}


TTErr MCoreObject::setAudioOutputPtr(TTAudioSignalPtr newOutputPtr)
{
	if(audioOutput)
		TTObjectRelease(&audioOutput);

	audioOutput = (TTAudioSignalPtr)TTObjectReference(newOutputPtr);
	return kTTErrNone;
}


TTErr MCoreObject::setInChansToOutChansRatio(TTUInt16 numInputChannels, TTUInt16 numOutputChannels)
{
	inChansToOutChansRatio[0] = numInputChannels;
	inChansToOutChansRatio[1] = numOutputChannels;
	return kTTErrNone;
}


TTErr MCoreObject::setAlwaysProcessSidechain(TTBoolean newValue)
{
	alwaysProcessSidechain = newValue;
	return kTTErrNone;
}


TTErr MCoreObject::prepareToProcess()
{
	lock();
	if(valid){
		processStatus = kProcessNotStarted;

		for(TTUInt16 i=0; i<numSources; i++)
			audioSources[i]->prepareToProcess();
		for(TTUInt16 i=0; i<numSidechainSources; i++)
			sidechainSources[i]->prepareToProcess();
		
	}
	unlock();
	return kTTErrNone;
}


TTErr MCoreObject::resetSources(TTUInt16 vs)
{
	// go through all of the sources and tell them we don't want to watch them any more
	for(TTUInt16 i=0; i<numSources; i++)
		audioSources[i]->unregisterObserverForNotifications(*this);

	if(audioSources && numSources)
		free(audioSources);
	audioSources = NULL;
	numSources = 0;
	
	if(sidechainSources && numSidechainSources)
		free(sidechainSources);
	sidechainSources = NULL;
	numSidechainSources = 0;
	
	// Generators will not receive an 'addSource' call, 
	// so we set them with the 'default' vector size provided by the global reset
	if(flags & kMCoreGenerator){
		audioOutput->allocWithVectorSize(vs);
	}
	
	return kTTErrNone;
}


TTErr MCoreObject::addSource(MCoreObjectPtr anObject, TTUInt16 sourceOutletNumber, TTUInt16 anInletNumber)
{	
	if(anInletNumber){		// A sidechain source
		numSidechainSources++;
		if(numSidechainSources == 1){
			sidechainSources = (MCoreObjectPtr*)malloc(sizeof(MCoreObjectPtr) * numSidechainSources);
			sidechainOutletIndices = (TTUInt16*)malloc(sizeof(TTUInt16) * numSources);
		}
		else{
			sidechainSources = (MCoreObjectPtr*)realloc(sidechainSources, sizeof(MCoreObjectPtr) * numSidechainSources);
			sidechainOutletIndices = (TTUInt16*)realloc(audioSourceOutletIndices, sizeof(TTUInt16) * numSources);
		}
		sidechainSources[numSidechainSources-1] = anObject;
		sidechainOutletIndices[numSidechainSources-1] = sourceOutletNumber;
		
		if(!sidechainInput)
			TTObjectInstantiate(kTTSym_audiosignal, &sidechainInput, 1);
		if(!sidechainOutput)
			TTObjectInstantiate(kTTSym_audiosignal, &sidechainOutput, TTLimitMin<TTFloat32>(inChansToOutChansRatio[1] / inChansToOutChansRatio[0], 1));			
	}
	else{					// A normal audio source
		numSources++;
		if(numSources == 1){
			audioSources = (MCoreObjectPtr*)malloc(sizeof(MCoreObjectPtr) * numSources);
			audioSourceOutletIndices = (TTUInt16*)malloc(sizeof(TTUInt16) * numSources);
		}
		else{
			audioSources = (MCoreObjectPtr*)realloc(audioSources, sizeof(MCoreObjectPtr) * numSources);
			audioSourceOutletIndices = (TTUInt16*)realloc(audioSourceOutletIndices, sizeof(TTUInt16) * numSources);
		}
		audioSources[numSources-1] = anObject;
		audioSourceOutletIndices[numSources-1] = sourceOutletNumber;
	}
	
	// tell the source that is passed in that we want to watch it
	anObject->registerObserverForNotifications(*this);
	
	return kTTErrNone;
}


TTUInt16 MCoreObject::initAudioSignal(TTAudioSignalPtr aSignal, MCoreObjectPtr aSource)
{
	TTUInt16	numChannels;
	TTUInt16	sourceProducesNumChannels;
	
	numChannels = aSignal->getNumChannels();
	sourceProducesNumChannels = aSource->audioOutput->getNumChannels();

	// currently we only up-size a signal, but perhaps we should also down-size them as appropriate?
	if(sourceProducesNumChannels > numChannels)
		aSignal->setmaxNumChannels(sourceProducesNumChannels);

	aSignal->setnumChannels(sourceProducesNumChannels);
	return sourceProducesNumChannels;
}


TTErr MCoreObject::init()
{
	TTUInt16	sourceProducesNumChannels;
	TTUInt16	sidechainSourceProducesNumChannels;
	TTUInt16	weDeliverNumChannels;
	
	lock();
	
	// init objects higher up in the chain first
	for(TTUInt16 i=0; i<numSources; i++)
		audioSources[i]->init();
	for(TTUInt16 i=0; i<numSidechainSources; i++)
		sidechainSources[i]->init();
	
	// What follows is a bit ugly (including code duplication) and should be reviewed:
	// The sidechain situation makes this even more complex...
	// For now we make the dubious assumption that sidechains are going to follow along
	// and be set up just like the normal audio inputs.
	
	if(numSources && audioSources){
		// match our source's vector size and number of channels
		sourceProducesNumChannels = initAudioSignal(audioInput, audioSources[0]);
		
		// while it make sense to always match the input of this object to the output of the previous object (as above)
		// we might want to have a different number of outputs here -- how should we handle that?
		// for now we are just matching them more or less...		
		weDeliverNumChannels = sourceProducesNumChannels * TTLimitMin<TTFloat32>(inChansToOutChansRatio[1] / inChansToOutChansRatio[0], 1);
		audioOutput->setmaxNumChannels(weDeliverNumChannels);
		audioOutput->setnumChannels(weDeliverNumChannels);

		// for generators, these are already alloc'd in the reset method
		audioInput->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
		audioOutput->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
		
		if(numSidechainSources){
			sidechainSourceProducesNumChannels = initAudioSignal(sidechainInput, sidechainSources[0]);
			sidechainInput->allocWithVectorSize(sidechainSources[0]->audioOutput->getVectorSize());
		}
		if(alwaysProcessSidechain){
			if(!sidechainOutput)
				TTObjectInstantiate(kTTSym_audiosignal, &sidechainOutput, sourceProducesNumChannels * TTLimitMin<TTFloat32>(inChansToOutChansRatio[1] / inChansToOutChansRatio[0], 1));				
			sidechainOutput->allocWithVectorSize(audioSources[0]->audioOutput->getVectorSize());
		}
	}
	else{
		sourceProducesNumChannels = 0;
		weDeliverNumChannels = getNumOutputChannels();
	}
	
	// Even more ambiguous, what do we do for the acual audio object?  
	// For now we are setting it to the higher of the two options to be safe.
	// (and we are not taking sidechains into account at all
	if(weDeliverNumChannels > sourceProducesNumChannels)
		audioObject->setMaxNumChannels(weDeliverNumChannels);
	else
		audioObject->setMaxNumChannels(sourceProducesNumChannels);

	unlock();
	return kTTErrNone;
}


TTErr MCoreObject::getAudioOutput(TTAudioSignalPtr& returnedSignal, TTBoolean getSidechain)
{
	TTAudioSignalPtr	pulledInput = NULL;
	TTAudioSignalPtr	pulledSidechainInput = NULL;
	TTErr				err;
	
	lock();
	switch(processStatus){
		
		// we have not processed anything yet, so let's get started
		case kProcessNotStarted:
			processStatus = kProcessingCurrently;
			
			// zero the samples
			audioInput->clear();

			// sum the sources
			for(TTUInt16 i=0; i<numSources; i++){
				// if there is a non-zero source outlet index, that means we are supposed to request the sidechain signal
				err = audioSources[i]->getAudioOutput(pulledInput, audioSourceOutletIndices[i]);
				if(!err)
					(*audioInput) += (*pulledInput);
			}
			
			
			
			if(numSidechainSources){
				sidechainInput->clear();	// zero the samples
				
				// sum the sidechain sources
				for(TTUInt16 i=0; i<numSidechainSources; i++){
					err = sidechainSources[i]->getAudioOutput(pulledSidechainInput);
					if(!err)
						(*sidechainInput) += (*pulledSidechainInput);
				}
				
				audioObject->process(audioInput, sidechainInput, audioOutput);		// a processor with sidechain input
			}
			else if(alwaysProcessSidechain){								
				audioObject->process(audioInput, audioInput, audioOutput, sidechainOutput);		// a processor with sidechain output
			}			
			else if(numSources){
				audioObject->process(audioInput, audioOutput);		// a processor
			}
			else{
				audioObject->process(audioOutput);					// a generator (or no input)
			}
			
			// return
			if(getSidechain)
				returnedSignal = sidechainOutput;
			else
				returnedSignal = audioOutput;
			
			processStatus = kProcessComplete;
			break;
		
		
		// we already processed everything that needs to be processed, so just set the pointer
		case kProcessComplete:
			if(getSidechain)
				returnedSignal = sidechainOutput;
			else
				returnedSignal = audioOutput;
			break;
			
		
		// to prevent feedback / infinite loops, we just hand back the last calculated output here
		case kProcessingCurrently:
			if(getSidechain)
				returnedSignal = sidechainOutput;
			else
				returnedSignal = audioOutput;
			break;
			
		
		// we should never get here
		default:
			unlock();
			return kTTErrGeneric;
	}
	unlock();
	return kTTErrNone;
}

