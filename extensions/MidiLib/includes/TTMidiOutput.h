/* 
 * Midi Output Object
 * Copyright © 2011, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_MIDIOUTPUT_H__
#define __TT_MIDIOUTPUT_H__

#include "TTDSP.h"
#include "TTGraph.h"
#include "portmidi.h"


/**	TTMidiOutput sends MIDI to an external device.  
	It is a wrapper around the PortMidi library. 
 */

class TTMidiOutput : TTObject {
	TTCLASS_SETUP(TTMidiOutput)

public:
	
	TTSymbolPtr			mDevice;			///< attr: selected device name
	const PmDeviceInfo*	mDeviceInfo;		///< selected device info struct
	PmDeviceID			mID;				///< selected device ID number
	PortMidiStream*		mStream;			///< a descriptor for a MIDI device that is opened when the device is set
//	TTThreadPtr			mPollingThread;		///< our loop that constantly polls for new input
//	TTBoolean			mRunning;			///< should the thread be running?  If NO then the thread will know to abort itself
//	TTListPtr			mCallbackObservers;
//	TTGraphObjectPtr	mOwner;				///< a graph object that can receive push() calls when we receive MIDI
	
	TTErr dictionary(const TTValue& aDictionary);
	TTErr getAvailableDeviceNames(TTValue& returnedDeviceNames);
	TTErr setDevice(TTValue& newDeviceName);
};


#endif // __TT_MIDIOUTPUT_H__
