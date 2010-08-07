/* 
 * Jamoma Asynchronous Object Graph Layer
 * Creates a wrapper for TTObjects that can be used to build a control graph for asynchronous message passing.
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDSP.h"
#include "TTGraph.h"
#include "TTGraphObject.h"
#include "TTGraphInlet.h"		// required for windows build
#include "TTGraphOutlet.h"
#include "TTGraphInput.h"
#include "TTGraphOutput.h"

static bool initialized = false;


/***********************************************************/

void TTGraphInit(void)
{
	if (!initialized) {
		initialized = true;
		TTFoundationInit();
		
		TTGraphObject::registerClass();
		TTGraphInput::registerClass();
		TTGraphOutput::registerClass();
	}
}

