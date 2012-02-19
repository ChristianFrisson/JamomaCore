/* 
 * LogFunction Unit for TTBlue
 * Originally written for the Jamoma FunctionLib
 * Copyright © 2009 by Trond Lossius
 * Formula based on exscale (for ISPW and later for Max/MSP) by Norbert Schnell
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TTLOGFUNCTION_H__
#define __TTLOGFUNCTION_H__

#include "TTDSP.h"


/**	A function unit providing logaritmic mapping with variable base
	y = (log(x)/log(base)-1) / (base - 1)
 */
class TTLogFunction : TTAudioObject {
	TTCLASS_SETUP(TTLogFunction)

	TTFloat64	mBase;		///< Base for the exponential function
	double		k;			///< Internal coefficient
	double		l;			///< Internal coefficient

	
	/** Calculate coefficients when this attr is set */
	TTErr setBase(const TTValue& value);
		
	/** y = f(x) for a single value */
	inline TTErr calculateValue(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	inline TTErr calculateValueBypass(const TTFloat64& x, TTFloat64& y, TTPtrSizedInt data);
	/**	A standard audio processing method as used by TTBlue objects.*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	TTErr processAudioBypass(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __LOGFUNCTION_H__
