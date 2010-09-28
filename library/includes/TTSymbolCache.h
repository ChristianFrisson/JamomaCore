/* 
 * TTBlue Class for caching common symbols for speed
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_SYMBOL_CACHE_H__
#define __TT_SYMBOL_CACHE_H__

#include "TTSymbol.h"


extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymEmpty;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymSlash;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymDot;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymColon;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSymStar;

extern TTFOUNDATION_EXPORT TTSymbolPtr kTTSym_setVector32;
extern TTFOUNDATION_EXPORT TTSymbolPtr kTTSym_getVector32;
extern TTFOUNDATION_EXPORT TTSymbolPtr kTTSym_setVector64;
extern TTFOUNDATION_EXPORT TTSymbolPtr kTTSym_getVector64;

extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_alloc;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audioEngineWillProcess;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_both;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_bypass;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_clear;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_clipmode;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_high;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_low;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_maxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_numChannels;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_processInPlace;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_range;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_resonance;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_updateMaxNumChannels;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_updateSampleRate;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_value;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_vectorSize;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sampleRate;

extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_tcp;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_udp;

// waveforms
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sine;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sineMod;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_cosine;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_cosineMod;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_square;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_squareMod;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_triangle;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_triangleMod;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_ramp;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_rampMod;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sawtooth;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_sawtoothMod;

// object names
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_adsr;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audiosignal;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_audiosignalarray;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_dcblock;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_gain;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_operator;
extern TTFOUNDATION_EXPORT TTSymbolPtr	kTTSym_phasor;

void TTSymbolCacheInit();

#endif // __TT_SYMBOL_CACHE_H__

