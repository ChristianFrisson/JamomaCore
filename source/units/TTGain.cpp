/* 
 * TTBlue Gain Control Object
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTGain.h"


TTGain::TTGain(TTUInt8 newMaxNumChannels)
	: TTAudioObject::TTAudioObject(newMaxNumChannels)
{
	registerParameter(TT("linearGain"),	kTypeFloat32,	&gain);
	registerParameter(TT("gain"),		kTypeInt32,		NULL,	(TTGetterMethod)&TTGain::getGain, (TTSetterMethod)&TTGain::setGain);

	// Set Defaults...
	setParameterValue(TT("linearGain"),	1.0);
}


TTGain::~TTGain()
{
	;
}


TTErr TTGain::setGain(const TTValue& newValue)
{
	gain = dbToLinear(newValue);
	return kTTErrNone;
}


TTErr TTGain::getGain(TTValue& value)
{
	value = linearToDb(gain);;
	return kTTErrNone;
}


// DSP LOOP
TTErr TTGain::processAudio(TTAudioSignal& in, TTAudioSignal& out)
{
	short			vs;
	TTSampleValue	*inSample,
					*outSample;
	short			numchannels = TTAudioSignal::getMinChannelCount(in, out);
	short			channel;

	for(channel=0; channel<numchannels; channel++){
		inSample = in.sampleVectors[channel];
		outSample = out.sampleVectors[channel];
		vs = in.vs;
		
		while(vs--)
			*outSample++ = (*inSample++) * gain;
	}
	return kTTErrNone;
}

