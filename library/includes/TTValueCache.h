/* 
 * TTBlue Class for caching common values for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_VALUE_CACHE_H__
#define __TT_VALUE_CACHE_H__

#include "TTValue.h"


extern TTEXPORT TTValuePtr	kTTBoolNo;
extern TTEXPORT TTValuePtr	kTTBoolYes;

extern TTEXPORT TTValuePtr	kTTValNONE;
extern TTEXPORT TTValuePtr	kTTVal0;
extern TTEXPORT TTValuePtr	kTTVal1;
extern TTEXPORT TTValuePtr	kTTVal0_pt_0;

void TTValueCacheInit();

#endif // __TT_VALUE_CACHE_H__

