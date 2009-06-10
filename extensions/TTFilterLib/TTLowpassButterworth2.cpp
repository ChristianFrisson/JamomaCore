/* 
 * TTBlue 2nd order Butterworth Lowpass Filter Object
 * Copyright © 2008, Trond Lossius
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTLowpassButterworth2.h"
#define thisTTClass TTLowpassButterworth2


TTLowpassButterworth2::TTLowpassButterworth2(TTUInt16 newMaxNumChannels)
	: TTAudioObject("filter.lowpass.butterworth", newMaxNumChannels),
	xm1(NULL), xm2(NULL), ym1(NULL), ym2(NULL)
{
	// register attributes
	registerAttributeWithSetter(frequency,	kTypeFloat64);
	addAttributeProperty(frequency,			range,			TTValue(10.0, sr*0.475));
	addAttributeProperty(frequency,			rangeChecking,	TT("clip"));

	// register for notifications from the parent class so we can allocate memory as required
	registerMessageWithArgument(updateMaxNumChannels);
	// register for notifications from the parent class so we can recalculate coefficients as required
	registerMessageSimple(updateSr);
	// make the clear method available to the outside world
	registerMessageSimple(clear);

	// Set Defaults...
	setAttributeValue(TT("maxNumChannels"),	newMaxNumChannels);			// This attribute is inherited
	setAttributeValue(TT("frequency"),		1000.0);
	setProcessMethod(processAudio);
}


TTLowpassButterworth2::~TTLowpassButterworth2()
{
	delete[] xm1;
	delete[] xm2;
	delete[] ym1;
	delete[] ym2;
}


TTErr TTLowpassButterworth2::updateMaxNumChannels(const TTValue& oldMaxNumChannels)
{
	delete[] xm1;
	delete[] xm2;
	delete[] ym1;
	delete[] ym2;
	
	xm1 = new TTFloat64[maxNumChannels];
	xm2 = new TTFloat64[maxNumChannels];
	ym1 = new TTFloat64[maxNumChannels];
	ym2 = new TTFloat64[maxNumChannels];
	
	clear();
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::updateSr()
{
	TTValue	v(frequency);
	return setfrequency(v);
}


TTErr TTLowpassButterworth2::clear()
{
	short i;

	for(i=0; i<maxNumChannels; i++){
		xm1[i] = 0.0;
		xm2[i] = 0.0;
		ym1[i] = 0.0;
		ym2[i] = 0.0;
	}
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::setfrequency(const TTValue& newValue)
{
	frequency = newValue;

	c = 1 / ( tan( kTTPi*(frequency/sr) ) );
	a0 = 1 / (1 + kTTSqrt2*c + c*c);
	a1 = 2*a0;
	a2 = a0;
	b1 = 2*a0*( 1 - c*c );
	b2 = a0 * (1 - kTTSqrt2*c + c*c);
	return kTTErrNone;
}

inline TTErr TTLowpassButterworth2::calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt channel)
{
    y = TTAntiDenormal(a0*x + a1*xm1[channel] + a2*xm2[channel] - b1*ym1[channel] - b2*ym2[channel]);
    xm2[channel] = xm1[channel];
    xm1[channel] = x;
    ym2[channel] = ym1[channel];
    ym1[channel] = y;
	return kTTErrNone;
}


TTErr TTLowpassButterworth2::processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs)
{
	TT_WRAP_CALCULATE_METHOD(calculateValue);
}

