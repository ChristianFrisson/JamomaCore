/* 
 * Multicore Audio Graph Layer for Jamoma DSP
 * Creates a wrapper for TTAudioObjects that can be used to build an audio processing graph.
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __LYDBAER_H__
#define __LYDBAER_H__

#include "TTDSP.h"


enum MCoreProcessStatus {
	kProcessUnknown = 0,
	kProcessNotStarted,
	kProcessingCurrently,	
	kProcessComplete
};

enum MCoreFlags {
	kMCoreProcessor = 0,
	kMCoreGenerator = 1
};

class MCoreObject;
typedef MCoreObject*	MCoreObjectPtr;


#ifdef TT_PLATFORM_WIN
	#include "windows.h"
	#ifdef _DLL_EXPORT
		#define MULTICORE_EXPORT __declspec(dllexport)
	#else
		#define MULTICORE_EXPORT __declspec(dllimport)
	#endif
#else // TT_PLATFORM_MAC
	#ifdef _DLL_EXPORT
		#define MULTICORE_EXPORT __attribute__((visibility("default")))
	#else
		#define MULTICORE_EXPORT  
	#endif
#endif



/**
	The MCoreObject wraps a TTBlue object in way that makes it possible to 
	build a dynamic graph of audio processing units.
 
	It is implemented as a TTObject so that it can receive dynamically bound messages, 
	such as notifications from other objects.
*/

class MULTICORE_EXPORT MCoreObject : public TTObject {	
	TTCLASS_SETUP(MCoreObject)
	
protected:
	MCoreProcessStatus		processStatus;				///< Used to enable correct processing of feedback loops, multiple destinations, etc.
	MCoreFlags				flags;
	TTUInt16				inChansToOutChansRatio[2];	///< for every N incoming channels, this object should produce M output channels.
	TTBoolean				alwaysProcessSidechain;		///< always process with the sidechain, regardless of whether the sidechain is provided with valid input.
	
	MCoreObjectPtr*			audioSources;				///< An array of objects from which we pull our source samples using the ::getAudioOutput() method.
	TTUInt16*				audioSourceOutletIndices;
	MCoreObjectPtr*			sidechainSources;			///< An array of objects from which we pull our source samples using the ::getAudioOutput() method.
	TTUInt16*				sidechainOutletIndices;
public:
	TTUInt16				numSources;					///< The number of getSamples callback functions (sources) from which we pull.
	TTUInt16				numSidechainSources;		///< The number of getSamples callback functions (sources) from which we pull.
protected:
	TTAudioSignalPtr		audioInput;					///< The buffered input for processing audio with our object.
	TTAudioSignalPtr		audioOutput;				///< The results of processing audio with our object.
	TTAudioSignalPtr		sidechainInput;				///< The buffered input for processing audio with our object.
	TTAudioSignalPtr		sidechainOutput;			///< The results of processing audio with our object.
public:	
	TTAudioObjectPtr		audioObject;				///< The actual TTBlue object doing the processing.
	
	
	// Methods

	/**	Constructor.	
		@param	arguments		There should be two arguments: 
								1. The name of the TTBlue object you want to wrap, and
								2. The initial number of channel. */
//	MCoreObject(const TTValue& arguments);
	
	/**	Destructor.		*/
//	virtual ~MCoreObject();

	/**	A notification that the specified object is being deleted -- so we should drop it from our list of input sources.  */
	TTErr objectFreeing(const TTValue& theObjectBeingDeleted);

	/**	Rather than use the internal audio output signal, it is possible to set your own.
		One example for why you might want this is for creating generator objects.	*/
	TTErr setAudioOutputPtr(TTAudioSignalPtr newOutputPtr);

	TTErr setInChansToOutChansRatio(TTUInt16 numInputChannels, TTUInt16 numOutputChannels);
	TTErr setAlwaysProcessSidechain(TTBoolean newValue);
	
	TTUInt16 getNumOutputChannels()
	{
		return audioOutput->getNumChannels();
	}
	
	TTUInt16 getNumSidechainOutputChannels()
	{
		return sidechainOutput->getNumChannels();
	}
	
	TTUInt16 getSampleRate()
	{
		TTUInt16 sr;
		audioObject->getAttributeValue(kTTSym_sr, sr);
		return sr;
	}
	
	TTUInt16 getOutputVectorSize()
	{
		return audioOutput->getVectorSize();
	}
	
	TTErr addFlag(MCoreFlags newFlag)
	{
		flags = newFlag;
		return kTTErrNone;
	}
	
	
	/**	Clear the list of source objects from which this object will try to pull audio.	
		@param	vs		The global vector size that will be used for the chain's output.	*/
	TTErr resetSources(TTUInt16 vs);
	
	
	/**	Add a source to the list of objects from which to request audio.
		@param	anObject		The lydbaer object which is supplying us with input.
		@param	anInletNumber	If this object has a second input mechanism (e.g. a sidechain input), then that is indicated here.
								Typically the value passed here will be 0, indicating the normal audio input.
		@return					An error code.	*/
	TTErr addSource(MCoreObjectPtr anObject, TTUInt16 sourceOutletNumber=0, TTUInt16 anInletNumber=0);

private:
	TTUInt16 initAudioSignal(TTAudioSignalPtr aSignal, MCoreObjectPtr aSource);
public:
	
	/**	Allocate buffers and prepare for processing.	*/
	TTErr init();
	
	
	/**	This method is called by an object about to process audio, prior to calling getAudioOutput().
		As with the getAudioOutput() method, this is driven by the destination object and working up through the chains.
		@return 		An error code.		*/
	virtual TTErr prepareToProcess();
	
	
	/**	This method is required to be implemented by all objects except for those existing solely as a destination.
		@param	audioOutput		This method is passed a reference to an audio signal pointer.
								We then set this audio signal pointer to point to the TTAudioSignal containing our calculated samples.
	 	@return					An error code.	*/
	virtual TTErr getAudioOutput(TTAudioSignalPtr& returnedSignal, TTBoolean getSidechain=false);
	
};




/**	MCoreOutput is an audio object that serves as the destination and master for a MCore graph.		*/
class MULTICORE_EXPORT MCoreOutput : public TTAudioObject
{
	TTCLASS_SETUP(MCoreOutput)

public:
	TTObjectPtr			audioEngine;
	TTAudioSignalPtr	placeHolder;	///< an unused audio signal that we pass
	MCoreObjectPtr	owner;			///< the owning lydbaer instance
	TTValuePtr			me;
	
	
	TTErr start();
	TTErr stop();
	
	/** Called by the audio engine every time a new vector of output is required. */
	TTErr audioEngineWillProcess();
	
	TTErr setOwner(TTValue& newOwner);

	
	// Attribute Accessors
	TTErr setsampleRate(const TTValue& newValue);
	TTErr getsampleRate(TTValue& returnedValue);
	TTErr setvectorSize(const TTValue& newValue);
	TTErr getvectorSize(TTValue& returnedValue);
	
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	outputs	unused.		*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef MCoreOutput* MCoreOutputPtr;




/**	MCoreSource is a very simple audio object that holds a signal from TTBlue
 that can be used by a MCore graph.		*/
class MULTICORE_EXPORT MCoreSource : public TTAudioObject
{
	TTCLASS_SETUP(MCoreSource)

public:
	TTAudioSignalPtr	buffer;		///< storage for the audioSignal that we provide
	
	
	/**	A standard audio processing method as used by TTBlue objects.
		@param	inputs	unused.				*/
	TTErr processAudio(TTAudioSignalArrayPtr inputs, TTAudioSignalArrayPtr outputs);	
};

typedef MCoreSource* MCoreSourcePtr;


MULTICORE_EXPORT void TTMulticoreInit(void);


#endif // __LYDBAER_H__
