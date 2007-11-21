/* 
 * Jamoma Shared Library
 * Functions and resources used by Jamoma objects.
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "ext.h"
#include "ext_obex.h"				// Max Object Extensions (attributes) Header
#include "ext_common.h"
#include "ext_strings.h"			// String Functions
#include "ext_critical.h"
#include "ext_pattr_bundle.h"
#include "z_dsp.h"
#include "commonsyms.h"				// Common symbols used by the Max 4.5 API

#include <math.h>
#include <stdlib.h>

#include "tt_audio_base.h"			// Tap.Tools Blue Headers...
#include "tt_audio_signal.h"
#include "tt_copy.h"
#include "tt_crossfade.h"	
#include "tt_gain.h"
#include "tt_limiter.h"
#include "tt_overdrive.h"
#include "tt_zerox.h"

#include "jcom.core.h"
#include "jcom.list.h"
#include "jcom.io.h"
#include "jcom.sendreceive.h"
#include "RampUnitWrap.h"
#include "JamomaTime.h"


#ifndef __JAMOMA_H__
#define __JAMOMA_H__


extern t_object	*obj_jamoma_time;	// a shared global instance of the time class

void		jamoma_init(void);


#endif __JAMOMA_H__
