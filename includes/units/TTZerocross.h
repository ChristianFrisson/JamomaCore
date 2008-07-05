/* 
 * TTBlue Zero-crossing detector and counter.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_ZEROCROSS_H__
#define __TT_ZEROCROSS_H__


#include "TTAudioObject.h"

/**	TTZerocross analyzes the incoming audio by looking for zero-crossings.
	When a zero crossing occurs it both reports the crossing and also 
	keeps a count of the number of zero crossings per analysis period.
 */
 
class TTEXPORT TTZerocross : public TTAudioObject {
private:
	TTSampleValue*		lastInput;		///< Feedback values used for the audio filter			
	TTSampleValue*		lastOutput;		///< Feedback values used for the audio filter

	/**	This method gets called when the inherited maxNumChannels attribute is changed. */
	TTErr updateMaxNumChannels(const TTValue& oldMaxNumChannels);
	
	/**	This method gets called when the inherited sr attribute is changed. */
	TTErr updateSr();
	
	/**	Standard audio processing method as used by TTBlue objects.
	 *	This object can process N parallel channels of audio.  It is assumed that the number
	 *	of inputs and outputs are the same, as are the vector sizes of those inputs and outputs.
	 *	@param	in		A pointer to a TTAudioSignal object that may contain any number of channels.
	 *					This signal is considered the master, and thus it provides the vectorsize
	 *					and number of channels should the two signals not be matched.
	 *	@param	out		A pointer to a TTAudioSignal object that has the output sample vectors.
	 *	@return	Returns a TTBlue Error Code.  TODO: Perhaps we should check if the signals are matched and then
	 *			return an error if they aren't?  Currently we are just returning TT_ERR_NONE all the time.	*/
	TTErr processAudio(TTAudioSignal& in, TTAudioSignal& out);

public:
	/**	Constructor. */
	TTZerocross(TTUInt16 maxNumChannels);

	/**	Destructor. */
	~TTZerocross();
	

	/**	Resets the history used in the analysis.	*/
	TTErr clear();
	
};


#endif // __TT_ZEROCROSS_H__
