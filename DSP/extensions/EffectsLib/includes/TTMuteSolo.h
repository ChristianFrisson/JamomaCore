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

#ifndef __TT_MUTE_SOLO_H__
#define __TT_MUTE_SOLO_H__

#include "TTDSP.h"


/**	TTMuteSolo enables muting and soloing of one or more audio channels.
 */
class TTMuteSolo : public TTAudioObjectBase {
	TTCLASS_SETUP(TTMuteSolo)

private:
	
	TTMatrixPtr		pOldGainArray;	///< Previous array of gain values. Used for linear interpoaltion to avoid clicks.
	TTMatrixPtr		pTempArray;		///< Temporary array. Used to keep array content when resizing.
	
	
	/** Check what the current array size is.
	 @param x						The current number of audio signal channels
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr checkArraySize(const TTUInt16 x);
	
	
	/** Resize an array and restore its content of cells that existed before and after the resizing.
	 @param myArray					The arry to resize and restore.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr resizeAndRestoreArray(TTMatrix *myArray);
	
	
	/** Calculate gain coefficients based on current mute and solo settings.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculateGains();
	
	
protected:
	
	TTBoolean		mInterpolated;	///< Flag indicating whether interpolation will be applied when gain is changed.
	
	TTMatrixPtr		mGainArray;		///< Array of gain values deducted from current settings regarding muting and soloing. For convinience all arrays are represented as 1xN matrixes.
	TTMatrixPtr		mMuteArray;		///< Array of mute flags for each channel.
	TTMatrixPtr		mSoloArray;		///< Array of solo flags for each channel.
	
	TTUInt16		mNumChannels;	///< The number of audio channels.

	
	/** Set boolean attribute determining whether linear interpolation is applied or not.
	 @param newValue			The new value that the interpolate attribute is to have.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setInterpolated(const TTValue& newValue);
	
	
	/** Set the number of audio channels to process.
	 @param newValue				The number of channels to process.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setNumChannels(const TTValue& newValue);
	
	
	/** Set the mute flag for a channel.
	 @param newValue				An array of two values is expected:
	 -# The audio channel.
	 -# Flag indicating if this channel is to be muted or not.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr channelMute(const TTValue& newValue, TTValue&);
	
	
	/** Set the solo flag for a channel.
	 @param newValue				An array of two values is expected:
	 -# The audio channel.
	 -# Flag indicating if this channel is to be soloed or not.
	 @param
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr channelSolo(const TTValue& newValue, TTValue&);
	
	
	/** Clear all mute and soloing settings.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr clear();
	
	
	/**	A standard audio processing method as used by Jamoma DSP objects.
	 @param	inputs				Pointer to array of input audio signals.
	 @param outputs				Pointer to array of processaed audio signals.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Alternative audio processing method that might be used temporarily when gain value has been changed in order to interpolate linearly to the new gain value over one signal vector.
	 @param	inputs				Pointer to array of input audio signals.
	 @param outputs				Pointer to array of processaed audio signals.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr processAudioInterpolated(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
	
	
	/** Gain unit test.
	 @param returnedTestInfo	The outcome from the performed unit test.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	virtual TTErr test(TTValue& returnedTestInfo);

};


#endif // __TT_MUTE_SOLO_H__
