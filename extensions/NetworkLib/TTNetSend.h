/* 
 * Jamoma Network Sender
 * Copyright © 2010, Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_NETSEND_H__
#define __TT_NETSEND_H__

#include "TTFoundationAPI.h"
#include "TTNetSocket.h"


/**	TTNetSend is a simple client that echoes input out to a network. */
class TTNetSend : public TTDataObject {
	TTCLASS_SETUP(TTNetSend)

	TTSymbolPtr				mAddress;	///< www.jamoma.org, 192.168.1.1, etc.
	TTUInt16				mPort;		///< port number
	TTSymbolPtr				mMode;		///< "tcp" or "udp"	
	TTNetSocketPtr			mSocket;
	
	
	// internal helper method
	void connect();
	
	
	/**	Setter */
	TTErr setAddress(const TTValue& value);
	
	/**	Setter */
	TTErr setPort(const TTValue& value);
	
	/**	Setter */
	TTErr setMode(const TTValue& value);
	
	
	/** Transmit a message.	*/
	TTErr send(const TTValue& arguments, TTValue& unusedOutput);

};


#endif // __TT_NETSEND_H__
