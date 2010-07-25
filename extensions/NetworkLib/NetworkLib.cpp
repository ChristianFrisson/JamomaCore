/* 
 * NetworkLib -- Send/Receive/Browse/etc.
 * Extension Class for Jamoma Foundation
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTFoundationAPI.h"
#include "TTNetReceive.h"
#include "TTNetSend.h"


extern "C" TT_EXTENSION_EXPORT TTErr loadTTExtension(void)
{
	TTFoundationInit();
	
	TTNetReceive::registerClass();
	TTNetSend::registerClass();
	
	return kTTErrNone;
}

