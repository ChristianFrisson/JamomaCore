/* 
 * TTClipper
 * Extension Class for TTBlue
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTDSP.h"

#define thisTTClass			TTClipper
#define thisTTClassName		"clipper"
#define thisTTClassTags		"audio, processor"


/**	Hard-clip signals to a low and high bound. */
class TTClipper : TTAudioObject {
	TTCLASS_SETUP(TTClipper)

	TTFloat64	lowBound;		///< Attribute: low bound for clipping
	TTFloat64	highBound;		///< Attribute: high bound for clipping
	
	/** Audio Processing Method */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
	{
		TTAudioSignal&	in = inputs->getSignal(0);
		TTAudioSignal&	out = outputs->getSignal(0);
		TTUInt16		vs;
		TTSampleValue*	inSample;
		TTSampleValue*	outSample;
		TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);

		for(TTUInt16 channel=0; channel<numchannels; channel++){
			inSample = in.sampleVectors[channel];
			outSample = out.sampleVectors[channel];
			vs = in.getVectorSize();

			while(vs--)
				*outSample++ = TTClip(*inSample++, lowBound, highBound);
		}
		return kTTErrNone;
	}

};


TT_AUDIO_CONSTRUCTOR_EXPORT
{
	registerAttributeSimple(lowBound,	kTypeFloat64);
	registerAttributeSimple(highBound,	kTypeFloat64);
	
	setAttributeValue(TT("lowBound"), -1.0);
	setAttributeValue(TT("highBound"), -1.0);
	setProcessMethod(processAudio);	
}


TTClipper::~TTClipper()
{;}

