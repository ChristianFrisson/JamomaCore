/** @file
 *
 * @ingroup audioGraphLibrary
 *
 * @brief TTAudioGraphOutput is an audio object that serves as the destination and master (terminal obejct or sink) for a #TTAudioGraph graph.
 *
 * @details In Jamoma AudioGraph audio processing is driven from a from a ‘terminal object’ or ‘sink’ at the bottom of the chain.
 * This strategy for processing an audio graph is known as the ‘pull’ method.
 * Typically sinks may be used for audio output, recording to disk, or for monitoring purposes.
 * Sinks may have other #TTAudioGraphObjects connected upstream, but can not be connected to further downstream TTAudioGraphObjects.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright Copyright © 2010, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTAudioGraphObject.h"
#include "TTAudioGraphInlet.h"		// required for windows build
#include "TTAudioGraphOutput.h"
#include "TTAudioEngine.h"

#define thisTTClass			TTAudioGraphOutput
#define thisTTClassName		"dac"
#define thisTTClassTags		"audio, graph, output"

TT_AUDIO_CONSTRUCTOR,
	placeHolder(NULL),
	mDevice(kTTSymEmpty),
	mSampleStamp(0)
{
	TTObjectBaseInstantiate(kTTSym_audiosignal, &placeHolder, 1);
	audioEngine = TTAudioEngine::create();
	
	addAttributeWithGetterAndSetter(SampleRate, kTypeUInt32);
	addAttributeWithGetterAndSetter(VectorSize, kTypeUInt16);
	addAttributeWithGetterAndSetter(Device,		kTypeSymbol);
	
	addMessage(start);
	addMessage(stop);
	
	addMessage(audioEngineWillProcess);
	addMessageProperty(audioEngineWillProcess, hidden, YES);
	addMessageWithArguments(setOwner);
	addMessageProperty(setOwner, hidden, YES);
	
	addMessageWithArguments(getAvailableDeviceNames);
	addMessageWithArguments(getCpuLoad);
	
	setProcessMethod(processAudio);
	
	me = new TTValue;
	(*me) = (TTObjectBasePtr)this;
	audioEngine->sendMessage(TT("addCallbackObserver"), *me, kTTValNONE);
}


TTAudioGraphOutput::~TTAudioGraphOutput()
{
	audioEngine->sendMessage(TT("removeCallbackObserver"), *me, kTTValNONE);
	delete me;
	TTAudioEngine::destroy();
	TTObjectBaseRelease(&placeHolder);
}


TTErr TTAudioGraphOutput::start()
{
	TTValue						v;

	getVectorSize(v);
	mInitData.vectorSize = v;
	
	audioEngine->sendMessage(TT("start"));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::stop()
{
	audioEngine->sendMessage(TT("stop"));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::audioEngineWillProcess()
{
	TT_ASSERT("There must be an owner", owner);
	
	owner->lockProcessing();
	owner->preprocess(mInitData);
	owner->process(placeHolder, mSampleStamp);
	mSampleStamp += mInitData.vectorSize;
	owner->unlockProcessing();
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::setOwner(TTValue& newOwner, TTValue&)
{
	owner = TTAudioGraphObjectPtr(TTPtr(newOwner));
	return kTTErrNone;
}


TTErr TTAudioGraphOutput::getAvailableDeviceNames(const TTValue&, TTValue& returnedDeviceNames)
{
	return audioEngine->sendMessage(TT("getAvailableOutputDeviceNames"), kTTValNONE, returnedDeviceNames);
}


TTErr TTAudioGraphOutput::getCpuLoad(const TTValue&, TTValue& returnedValue)
{
	return audioEngine->sendMessage(TT("getCpuLoad"), kTTValNONE, returnedValue);
}


TTErr TTAudioGraphOutput::setSampleRate(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_sampleRate, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getSampleRate(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_sampleRate, returnedValue);
}


TTErr TTAudioGraphOutput::setVectorSize(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(kTTSym_vectorSize, const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getVectorSize(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(kTTSym_vectorSize, returnedValue);
}


TTErr TTAudioGraphOutput::setDevice(const TTValue& newValue)
{
	return audioEngine->setAttributeValue(TT("outputDevice"), const_cast<TTValue&>(newValue));
}

TTErr TTAudioGraphOutput::getDevice(TTValue& returnedValue)
{
	return audioEngine->getAttributeValue(TT("outputDevice"), returnedValue);
}


TTErr TTAudioGraphOutput::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	if(inputs->numAudioSignals){
		TTAudioSignal&	in = inputs->getSignal(0);

		(*((TTAudioEnginePtr)audioEngine)->mOutputBuffer) += in;
		return kTTErrNone;
	}
	else
		return kTTErrBadChannelConfig;
}

