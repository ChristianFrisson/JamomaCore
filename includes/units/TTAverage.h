/* 
 * TTBlue Running Average Filter Object
 * Copyright © 2008, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_AVERAGE_H__
#define __TT_AVERAGE_H__


#include "TTAudioObject.h"

/**	A running average filter.
 */
class TTAverage : public TTAudioObject {
protected:
	TTUInt16		maxInterval;	///< Maximum number of samples over which one can average
	TTUInt16		interval;		///< The actual number of samples over which one is averaging
	TTSymbol*		mode;			///< options: bipolar, rms, or absolute
	TTFloat64		invInterval;	///< reciprocal of attrInterval
	TTFloat64*		accumulator;
	TTSampleVector*	bins;
	TTSampleVector*	binsIn;
	TTSampleVector*	binsOut;
	TTSampleVector*	binsEnd;

	// Notifications
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);

	void calculateCoefficients();
	
	/**	Standard audio processing method as used by TTBlue objects. */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);

public:

	/**	Constructor. */
	TTAverage(TTValue& arguments);

	/**	Destructor. */
	virtual ~TTAverage();
	
	// Attributes
	TTErr setfrequency(const TTValue& newValue);
	TTErr setresonance(const TTValue& newValue);
	
	/**	This algorithm uses an IIR filter, meaning that it relies on feedback.  If the filter should
	 *	not be producing any signal (such as turning audio off and then back on in a host) or if the
	 *	feedback has become corrupted (such as might happen if a NaN is fed in) then it may be 
	 *	neccesary to clear the filter by calling this method.
	 *	@return Returns a TTErr error code.												*/
	TTErr clear();
};


#endif // __TT_AVERAGE_H__
