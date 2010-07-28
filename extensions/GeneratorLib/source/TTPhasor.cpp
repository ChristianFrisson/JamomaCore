/* 
 * TTBlue Cycling Ramp Generator
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTPhasor.h"

#define thisTTClass TTPhasor
#define thisTTClassName		"phasor"
#define thisTTClassTags		"audio, generator, oscillator"


TT_AUDIO_CONSTRUCTOR
, mPhase(0.0), step(0.0), linearGain(1.0)
{
	addAttributeWithSetter(			Frequency,	kTypeFloat64);
	addAttributeWithGetterAndSetter(Gain,		kTypeFloat64);
	addAttribute(					Phase,		kTypeFloat64);
	// TODO: More Attributes left to add...
	//	linearGain
	//	period in ms
	//	period in samples
	
	registerMessageSimple(updateSr);

	setAttributeValue(TT("Frequency"), 1.0);
	setAttributeValue(TT("Gain"), 0.0);
	setProcessMethod(processAudio);
}


TTPhasor::~TTPhasor()
{
	;
}


TTErr TTPhasor::updateSr()
{
	TTValue	v(mFrequency);
	return setFrequency(v);
}


TTErr TTPhasor::setFrequency(const TTValue& newValue)
{
	mFrequency = newValue;
	if (mFrequency == 0) {
		rampSamples = 0xFFFFFFFF;
		rampMilliseconds = 0;
	}
	else {
		rampSamples = TTUInt32((1.0 / mFrequency) * sr);
		rampMilliseconds = 1000.0 * (rampSamples / TTFloat64(sr));
	}
	setStep();
	return kTTErrNone;
}

void TTPhasor::setStep()
{
	step = 1.0 / TTFloat64(rampSamples);	// 1.0 is the destination        
	TTZeroDenormal(step); 
}


TTErr TTPhasor::setGain(const TTValue& newValue)
{
	linearGain = dbToLinear(newValue);
	return kTTErrNone;
}

TTErr TTPhasor::getGain(TTValue& value)
{
	value = linearToDb(linearGain);
	return kTTErrNone;
}


// TODO: add flags so that TTAudioObject can call a process method with a different number audio signals?

TTErr TTPhasor::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	out = outputs->getSignal(0);
	TTSampleValue	*outSample;
	TTUInt16		numchannels = out.getNumChannelsAsInt();
	TTUInt16		channel;
	TTUInt16		vs;

	for (channel=0; channel<numchannels; channel++) {
		outSample = out.mSampleVectors[channel];
		vs = out.getVectorSizeAsInt();

		while (vs--) {
			mPhase += step;
			if (mPhase >= 1.0)
				mPhase -= 1.0;
			else if (mPhase < 0.0)
				mPhase += 1.0;
			*outSample++ = mPhase * linearGain;	
		}
	}
	return kTTErrNone;
}
