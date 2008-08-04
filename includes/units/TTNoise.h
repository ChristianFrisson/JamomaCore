/* 
 * TTBlue Noise Generator 
 * Copyright © 2003, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_NOISE_H__
#define __TT_NOISE_H__

#include "TTAudioObject.h"


/**	Noise Generator */
class TTEXPORT TTNoise : public TTAudioObject {
protected:
	TTSymbol*		mode;	///< Attribute: what color is the noise?
	TTUInt32		accum;	///< accumulator for the noise generation
	TTSampleValue	b[6];	///< for the "pinking" filter
	
	/**	Audio Processing Method	*/
	TTErr processWhiteNoise(TTAudioSignal& in, TTAudioSignal& out);
	/**	Audio Processing Method	*/
	TTErr processPinkNoise(TTAudioSignal& in, TTAudioSignal& out);
	/**	Audio Processing Method	*/
	TTErr processBrownNoise(TTAudioSignal& in, TTAudioSignal& out);
	/**	Audio Processing Method	*/
	TTErr processBlueNoise(TTAudioSignal& in, TTAudioSignal& out);
	
public:
	/**	Constructor. */
	TTNoise(TTUInt16 maxNumChannels);

	/**	Destructor. */
	virtual ~TTNoise();

	/**	Attribute Setter. */
	TTErr setmode(const TTValue& newMode);
};


#endif // __TT_NOISE_H__
