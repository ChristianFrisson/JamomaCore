max v2;
#N vpatcher 5 301 977 806;
#P window setfont "Sans Serif" 9.;
#P hidden newex 155 273 103 196617 route MODULE_TITLE;
#P hidden newex 155 253 93 196617 r $1_FROM_MHUB;
#P hidden newex 155 293 90 196617 prepend setitem 0;
#P user umenu 13 2 226 196644 3 64 18 0;
#X setrgb 165 165 165 221 221 221 255 255 255 221 221 221 170 170 170 119 119 119 187 187 187;
#X add;
#P hidden newex 585 276 185 196617 jmod.parameter.mxt $1 defeat_meters;
#B color 1;
#P objectname jmod.parameter[6];
#P hidden newex 585 62 27 196617 - 2;
#P hidden newex 585 100 65 196617 jmod.core.sr;
#P hidden newex 585 81 110 196617 jmod.parameter $1 sr;
#B color 1;
#P objectname jmod.parameter[5];
#P hidden newex 585 255 225 196617 jmod.message.mxt $1 midigain @ramp_enable 1;
#B color 1;
#P objectname jmod.parameter[4];
#P hidden newex 585 234 389 196617 jmod.parameter.mxt $1 gain @conversion db2midi @ramp_enable 1 @filter_dupes 1;
#B color 1;
#P objectname jmod.parameter[3];
#P hidden newex 585 165 30 196617 == 0;
#P hidden newex 585 146 140 196617 jmod.message.mxt $1 enable;
#B color 1;
#P objectname jmod.parameter[2];
#P hidden newex 585 213 152 196617 jmod.parameter.mxt $1 bypass;
#B color 1;
#P objectname jmod.parameter[1];
#P hidden newex 586 190 143 196617 jmod.parameter.mxt $1 mute;
#B color 1;
#P objectname jmod.parameter;
#P user pictctrl 425 4 9 9 jmod.button.bypass.pct 0 0 1 1 26 0 0 0 9 9 128 0 1 1 1 0;
#P user pictslider 339 10 84 8 0 0 0 0 jmod.slider.knob.gain.pct 1 jmod.slider.bg.gain.pct 1 2113 0 0 157 1. 1.;
#P bpatcher 0 0 16 16 0 0 jmod.menu.a.mxt 0 $1;
#P hidden user hint 859 96 903 176 "Output Gain: notches are at -42dB\, -18dB\, -6dB\, and 0dB" 1000 100 0 65535 65535 52428 9 3 0 1 0 0 0;
#P hidden user hint 837 81 898 97 "Use arrows to change the sample rate for this module - you must restart the DSP for it to take effect" 1000 100 0 65535 65535 52428 9 3 0 1 0 0 0;
#P hidden newex 27 104 29 196617 == 0;
#P hidden comment 698 392 54 196617 Processed AUDIO;
#P hidden comment 635 393 62 196617 RAW AUDIO;
#N vpatcher 293 69 595 323;
#P inlet 17 41 15 0;
#P inlet 243 41 15 0;
#P outlet 105 123 15 0;
#P outlet 81 124 15 0;
#P window setfont "Sans Serif" 9.;
#N vpatcher 40 55 304 257;
#P window setfont "Sans Serif" 9.;
#P message 187 54 35 196617 \$1 20;
#P newex 187 78 40 196617 line 0.;
#P inlet 187 35 15 0;
#P inlet 161 35 15 0;
#P newex 123 110 75 196617 tap.crossfade~;
#P outlet 123 149 15 0;
#P inlet 68 35 15 0;
#P inlet 128 35 15 0;
#P newex 33 110 75 196617 tap.crossfade~;
#P outlet 33 152 15 0;
#P inlet 33 35 15 0;
#P connect 0 0 2 0;
#P lcolor 6;
#P connect 2 0 1 0;
#P connect 3 0 2 1;
#P lcolor 6;
#P connect 9 0 2 2;
#P connect 4 0 6 0;
#P lcolor 6;
#P connect 6 0 5 0;
#P connect 7 0 6 1;
#P lcolor 6;
#P connect 8 0 10 0;
#P connect 10 0 9 0;
#P connect 9 0 6 2;
#P pop;
#P newobj 127 84 126 196617 p bypass;
#P newex 211 204 35 196617 s $0R;
#P newex 166 204 34 196617 s $0L;
#N comlet (signal) out left;
#P outlet 149 204 15 0;
#N comlet (signal) out right;
#P outlet 249 204 15 0;
#P user gain~ 211 131 15 22 158 0 1.071519 7.94321 10.;
#P user gain~ 166 131 15 22 158 0 1.071519 7.94321 10.;
#P inlet 166 41 15 0;
#P inlet 143 41 15 0;
#P inlet 105 41 15 0;
#P inlet 81 41 15 0;
#P connect 0 0 11 0;
#P lcolor 6;
#P connect 1 0 12 0;
#P lcolor 6;
#P connect 2 0 10 0;
#P lcolor 6;
#P connect 4 0 7 0;
#P connect 3 0 10 1;
#P lcolor 6;
#P connect 14 0 4 0;
#P connect 10 0 4 0;
#P connect 4 0 8 0;
#P connect 0 0 10 2;
#P lcolor 6;
#P connect 14 0 5 0;
#P connect 10 1 5 0;
#P connect 5 0 9 0;
#P connect 1 0 10 3;
#P lcolor 6;
#P connect 13 0 10 4;
#P connect 5 0 6 0;
#P pop;
#P hidden newobj 655 353 82 196617 p audio_handling;
#N vpatcher 40 55 440 355;
#P window setfont "Sans Serif" 9.;
#P newex 154 66 36 196617 sel 1;
#P newex 77 78 36 196617 sel 1;
#N comlet nuumbeer;
#P inlet 305 67 15 0;
#N comlet (bang) dec;
#P inlet 165 42 15 0;
#N comlet (bang) inc;
#P inlet 67 55 15 0;
#N comlet nuumbeer;
#P outlet 127 202 15 0;
#P number 128 164 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;
#P newex 103 105 27 196617 i 2;
#P newex 140 135 27 196617 - 1;
#P newex 105 135 27 196617 + 1;
#P newex 215 154 42 196617 clip 0 4;
#P newex 144 106 27 196617 i 2;
#P connect 7 0 10 0;
#P connect 10 0 4 0;
#P connect 4 0 2 0;
#P fasten 1 0 4 1 220 182 274 182 274 92 125 92;
#P connect 9 0 4 1;
#P connect 5 0 6 0;
#P connect 2 0 5 0;
#P connect 3 0 5 0;
#P connect 0 0 3 0;
#P connect 11 0 0 0;
#P connect 8 0 11 0;
#P connect 9 0 0 1;
#P fasten 1 0 0 1 220 176 266 176 266 96 166 96;
#P fasten 5 0 1 0 133 187 197 187 197 144 220 144;
#P pop;
#P hidden newobj 585 41 83 196617 p incdec_handler;
#P user pictctrl 499 9 8 5 jmod.button.incdec-down.pct 0 0 1 0 26 0 0 0 8 4 128 0 1 1 1 0;
#P user pictctrl 499 3 8 5 jmod.button.indec-up.pct 0 0 1 0 24 0 0 0 8 4 128 0 1 1 1 0;
#N comlet RAW Audio In - right;
#P hidden outlet 679 377 13 0;
#N comlet RAW Audio In - left;
#P hidden outlet 655 377 13 0;
#N comlet (signal) in right - RAW;
#P hidden inlet 683 333 13 0;
#N comlet (signal) in left - RAW;
#P hidden inlet 669 333 13 0;
#P hidden comment 633 319 62 196617 RAW AUDIO;
#P hidden newex 353 146 35 196617 r $0R;
#P hidden newex 319 146 34 196617 r $0L;
#P user umenu 459 2 43 196644 3 64 18 0;
#X setrgb 132 132 132 221 221 221 255 255 255 221 221 221 170 170 170 119 119 119 187 187 187;
#X add 11025;
#X add 22050;
#X add 44100;
#X add 88200;
#X add 176400;
#P user pictctrl 437 4 9 9 jmod.button.mute.pct 0 0 1 1 26 0 0 0 9 9 128 0 1 1 1 0;
#N comlet (signal) out left;
#P hidden outlet 703 377 13 0;
#N comlet (signal) out right;
#P hidden outlet 727 377 13 0;
#N comlet (signal) in right - COOKED;
#P hidden inlet 711 333 13 0;
#N comlet (signal) in left - COOKED;
#P hidden inlet 697 333 13 0;
#P bpatcher 340 7 90 2 0 0 jmod.meter.stereo-R.mxt 0;
#P objectname vmeter2;
#P bpatcher 340 4 90 2 0 0 jmod.meter.stereo-L.mxt 0;
#P objectname vmeter1;
#P hidden comment 697 318 88 196617 Processed AUDIO;
#P user hint 898 45 911 57 "Turns off/on this module" 1000 100 0 65535 65535 52428 9 3 0 1 0 0 0;
#P user hint 914 45 927 57 "Bypass this module's processing (does not free up CPU)" 1000 100 0 65535 65535 52428 9 3 0 1 0 0 0;
#P user pictctrl 0 0 510 61 jmod.bg-1.a.pct 0 0 1 0 24 0 0 0 510 61 2 0 1 1 1 0;
#P noclick;
#P hidden connect 40 0 28 1;
#P hidden connect 42 0 41 0;
#P hidden connect 28 1 25 0;
#P hidden connect 43 0 44 0;
#P hidden connect 44 0 42 0;
#P hidden connect 36 0 29 0;
#P hidden connect 35 0 29 0;
#P hidden connect 25 0 4 0;
#P hidden connect 12 0 4 0;
#P lcolor 6;
#P hidden connect 13 0 5 0;
#P lcolor 6;
#P hidden connect 25 0 5 0;
#P hidden connect 32 0 30 0;
#P hidden connect 31 0 10 0;
#P hidden connect 34 0 10 0;
#P hidden connect 38 0 11 0;
#P hidden connect 21 0 11 0;
#P hidden connect 19 0 21 0;
#P hidden connect 11 0 39 0;
#P hidden connect 39 0 37 0;
#P hidden connect 37 0 38 0;
#P hidden connect 33 0 34 0;
#P hidden connect 30 0 32 0;
#P hidden connect 29 0 35 0;
#P hidden connect 28 1 40 0;
#P hidden connect 10 0 31 0;
#P hidden connect 20 0 21 1;
#P hidden connect 29 0 22 0;
#P hidden connect 22 0 17 0;
#P lcolor 6;
#P hidden connect 11 0 21 2;
#P lcolor 3;
#P hidden connect 15 0 22 1;
#P lcolor 6;
#P hidden connect 22 1 18 0;
#P lcolor 6;
#P hidden connect 16 0 22 2;
#P lcolor 6;
#P hidden connect 6 0 22 3;
#P lcolor 6;
#P hidden connect 22 2 9 0;
#P hidden connect 7 0 22 4;
#P lcolor 6;
#P hidden connect 30 0 22 5;
#P hidden connect 22 3 8 0;
#P pop;
