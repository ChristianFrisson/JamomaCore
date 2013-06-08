/** @file
 *
 * @ingroup dspSoundFileLib
 *
 * @brief Provides a common interface to soundfile data
 *
 * @details This object provides a common set of attributes and methods for working with soundfiles at a specific filepath.
 * This allows us to access metadata and copy values in a common way without duplicating code. As with the rest of the 
 * SoundfileLib, the third-party <a href="http://www.mega-nerd.com/libsndfile/">libsndfile library</a> is used for actual
 * access.
 *
 * @authors Nathan Wolek
 *
 * @copyright Copyright © 2013 by Nathan Wolek @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SOUNDFILE_H__
#define __TT_SOUNDFILE_H__

#include "TTDSP.h"

#ifdef uint
#undef uint
#endif
#include "libsndfile/sndfile.h"

#define thisTTClass			TTSoundfile
#define thisTTClassName		"soundfile"
#define thisTTClassTags		"soundfile"

//** Creates an interface to data in a soundfile from disk */
class TTSoundfile : public TTAudioObjectBase {
	TTCLASS_SETUP(TTSoundfile)
	
protected:
	TTSymbol		mFilePath;		///< full POSIX path to the file, including file name
	TTSymbol		mTitle, mAnnotation, mArtist, mDate; ///< soundfile metadata
	SNDFILE*		mSoundFile; 	///< libsndfile handle for the actual file open
	SF_INFO			mSoundFileInfo;	///< libsndfile metadata for the file we open
	
};



/** Atribute accessor. Send a filepath to the object and attempt to interface with the file.
    @param	newValue        full POSIX path to the file, including file name
    @return	TTErr			returns kTTErrNone until futher notice
    */
TTErr TTSoundfile::setFilePath(const TTValue& newValue);

#endif
