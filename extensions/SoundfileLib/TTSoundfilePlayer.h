/* 
 * Jamoma DSP Soundfile Player
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_SOUNDFILEPLAYER_H__
#define __TT_SOUNDFILEPLAYER_H__

#include "TTDSP.h"
#include "libsndfile/sndfile.h"


/**	The simplest of lowpass filters: a single-pole, no-zero algorithm. */
class TTSoundfilePlayer : public TTAudioObject {
	TTCLASS_SETUP(TTSoundfilePlayer)

	TTSymbolPtr			mFilePath;			///< full POSIX path to the file, including file name
	SNDFILE*			mSoundFile;			///< libsndfile handle for the actual file we open
	SF_INFO				mSoundFileInfo;		///< libsndfile metadata for the file we open
	TTBoolean			mPlay;				///< is actively playing back the file?
	TTBoolean			mLoop;				///< Loop flag
	TTUInt16			mNumChannels;		///< read-only: number of channels in the open file
//	TTFloat64			mLength;			///< length of the file in seconds, read-only

	TTUInt16			mNumBufferFrames;	///< number of frames in the buffer to be read from the file at a time
	TTSampleVector		mBuffer;			///< buffer of mNumBufferFrames * mNumChannels;
	
	

	/**	Setter for the mode attribute.
	 	This also sets the audio processing method.  */
	TTErr setFilePath(const TTValue& value);
	
	// Block-based Audio Processing Methods
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);
};


#endif // __TT_SOUNDFILEPLAYER_H__
