/** @file
 *
 * @ingroup dspEffectsLib
 *
 * @brief Mute and solo one or more of the incomming channels
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2013, Tropnd Lossius @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMuteSolo.h"

#define thisTTClass			TTMuteSolo
#define thisTTClassName		"muteSolo"
#define thisTTClassTags		"audio, processor, dynamics, mixing"


TT_AUDIO_CONSTRUCTOR,
	pOldGainArray(NULL),
	pOldMuteArray(NULL),
	pOldSoloArray(NULL),
	pTempArray(NULL),
	mInterpolated(0),
	mGainArray(NULL),
	mMuteArray(NULL),
	mSoloArray(NULL)

{
	// For convinience we'll use Nx1 matrixes as arrays
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&mGainArray, 0);
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&pOldGainArray, 0);
	
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&mMuteArray, 0);
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&pOldMuteArray, 0);
	
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&mSoloArray, 0);
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&pOldSoloArray, 0);
	
	TTObjectBaseInstantiate(kTTSym_matrix, (TTObjectBasePtr*)&pTempArray, 0);
	
	
	addAttributeWithSetter(NumChannels,	kTypeUInt16);
	addAttribute(Interpolated,		kTypeBoolean);
	
	addMessageWithArguments(channelMute);
	addMessageWithArguments(channelSolo);
	
	addMessage(clear);
	
	mGainArray->setAttributeValue	(TT("type"), TT("float64"));
	pOldGainArray->setAttributeValue	(TT("type"), TT("float64"));
	
	mMuteArray->setAttributeValue	(TT("type"), TT("float64"));
	pOldMuteArray->setAttributeValue	(TT("type"), TT("float64"));
	
	mSoloArray->setAttributeValue	(TT("type"), TT("float64"));
	pOldSoloArray->setAttributeValue	(TT("type"), TT("float64"));
	
	pTempArray->setAttributeValue	(TT("type"), TT("float64"));
	
	// Initally the dimension of all arrays is set to (1,1)
	TTValue		v(1, 1);
	
	mGainArray->setAttributeValue(TT("dimensions"), v);
	pOldGainArray->setAttributeValue(TT("dimensions"), v);
	
	mMuteArray->setAttributeValue(TT("dimensions"), v);
	pOldMuteArray->setAttributeValue(TT("dimensions"), v);
	
	mSoloArray->setAttributeValue(TT("dimensions"), v);
	pOldSoloArray->setAttributeValue(TT("dimensions"), v);
	
	pTempArray->setAttributeValue(TT("dimensions"), v);
	
	clear();
	
	// Set Defaults...
	setProcessMethod(processAudio);
}


TTMuteSolo::~TTMuteSolo()
{
	TTObjectBaseRelease((TTObjectBasePtr*)&mGainArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&pOldGainArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&mMuteArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&pOldMuteArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&mSoloArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&pOldSoloArray);
	TTObjectBaseRelease((TTObjectBasePtr*)&pTempArray);
}


TTErr TTMuteSolo::clear()
{	
	mMuteArray->clear();
	pOldMuteArray->clear();
	
	mSoloArray->clear();
	pOldSoloArray->clear();
	
	/* TODO: When clearing, all gains should be set to 1. rather than 0.
	 The best way of doing so might be to first clear mute and solo, and then recalculate gains. */
	mGainArray->clear();
	pOldGainArray->clear();
	
	return kTTErrNone;
}


TTErr TTMuteSolo::checkArraySize(TTUInt16 x)
//this function will resize mGainArray if necessary while preserving its content
{
	if (x > (mNumChannels-1)){
		setNumChannels(x+1);
	}
	return kTTErrNone;
}



TTErr TTMuteSolo::resizeAndRestoreArrayPair(TTMatrix *myArray, TTMatrix *oldArray)
{
	TTValue		v(1, mNumChannels);
	
	//1: Copy myArray => pTempMatrix
	pTempArray->adaptTo(myArray);
	TTMatrix::copy(*myArray, *pTempArray);
	
	//2: Resize
	myArray->setAttributeValue(TT("dimensions"), v);
	oldArray->setAttributeValue(TT("dimensions"), v);
	
	//3: Clear
	myArray->clear();
	oldArray->clear();
	
	//4: Element-wise copy pTempMatrix content over to myArray and oldArray
	TTFloat64 tempValue;
	TTUInt16 channels;
	
	TTValue dim;
	pTempArray->getDimensions(dim);
	dim.get(1,channels);
	
	TTLimit(channels,(TTUInt16) 1, mNumChannels);
	for (TTUInt16 i=0; i < channels; i++) {
		pTempArray->get2d(0, i, tempValue);
		myArray->set2d(   0, i, tempValue);
		oldArray->set2d(  0, i, tempValue);
	}
	
	return kTTErrNone;
}


TTErr TTMuteSolo::setNumChannels(const TTValue& newValue)
{
	TTUInt16	numChannels = newValue;
	
	if (numChannels != mNumChannels) {
		mNumChannels = numChannels;
		
		resizeAndRestoreArrayPair(mMuteArray, pOldMuteArray);
		resizeAndRestoreArrayPair(mSoloArray, pOldSoloArray);
		
		/* TODO: Gain should not be restored this way, but rather be calculated based on resized and restored properties of mute and solo. */
		/* TODO: Should we lock processing while updating gain coefficients to ensure that they do not happen in the midst of audio processing? */
		resizeAndRestoreArrayPair(mGainArray, pOldGainArray);
	}
	return kTTErrNone;
}


TTErr TTMuteSolo::channelMute(const TTValue& newValue, TTValue&)
{
	TTUInt16	channel;
	TTFloat64	muteFlag;
	
	if (newValue.getSize() != 2)
		return kTTErrWrongNumValues;
	
	newValue.get(0, channel);
	newValue.get(1, muteFlag);
	
	checkArraySize(channel);
    
	mGainArray->set2d(channel, TTDecibelsToLinearGain(gainValue));
	
	if (mInterpolated)
		setProcessMethod(processAudioInterpolated);
 	return kTTErrNone;
}



TTErr TTMuteSolo::calculateGains()
{
	TTFloat64 tempValue;
	TTUInt16 i;
	
	// Are any channels soloed?
	TTFloat64 hasSoloedChannels = 0;
	for (i=0; i < mNumChannels; i++) {
		mSoloArray->get2d(0, i, tempValue);
		hasSoloedChannels += tempValue;
	}
	
	// If so, this takes precedence over mute settings.
	if (hasSoloedChannels) {
		for (i=0; i < mNumChannels; i++) {
			mSoloArray->get2d(0, i, tempValue);
			mGainArray->set2d(0, i, tempValue);
		}
	} else {
		for (i=0; i<mNumChannels; i++) {
			mMuteArray->get2d(0, i, tempValue);
			mGainArray->set2d(0, i, (tempValue == 0.));
		}
	}
	return kTTErrNone;
}


TTErr TTMuteSolo::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs;
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;

	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		while (vs--)
			*outSample++ = (*inSample++) * mGain;
	}
	return kTTErrNone;
}


TTErr TTMuteSolo::processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TTAudioSignal&	in = inputs->getSignal(0);
	TTAudioSignal&	out = outputs->getSignal(0);
	TTUInt16		vs = in.getVectorSizeAsInt();
	TTSampleValue	*inSample, *outSample;
	TTUInt16		numchannels = TTAudioSignal::getMinChannelCount(in, out);
	TTUInt16		channel;
	TTFloat64		increment, temp;
	increment = (mGain-oldGain)/vs;
	TTAntiDenormal(increment);
	
	for (channel=0; channel<numchannels; channel++) {
		inSample = in.mSampleVectors[channel];
		outSample = out.mSampleVectors[channel];
		vs = in.getVectorSizeAsInt();
		temp = oldGain;
		while (vs--){
			temp = temp + increment;
			*outSample++ = (*inSample++) * temp;			
		}		
	}
	oldGain = mGain;
	setProcessMethod(processAudio);
	return kTTErrNone;
}

