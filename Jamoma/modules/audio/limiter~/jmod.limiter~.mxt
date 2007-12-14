max v2;
#N vpatcher 349 105 1213 799;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden newex 380 118 72 196617 jcom.limiter~;
#P hidden inlet 514 66 15 0;
#P hidden inlet 380 66 15 0;
#P hidden newex 380 149 64 196617 jcom.out~ 2;
#P hidden newex 380 88 144 196617 jcom.in~ 2;
#P hidden message 113 98 125 196617 /documentation/generate;
#P user umenu 173 44 79 196647 1 64 60 1;
#X add exponential;
#X add linear;
#P objectname Mode;
#P window linecount 2;
#P hidden message 134 198 65 196617 \; max refresh;
#P flonum 57 17 36 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Preamp;
#P window linecount 1;
#P hidden newex 67 606 66 196617 pvar Mode 2;
#P hidden newex 67 541 65 196617 pvar Release;
#P hidden newex 67 467 78 196617 pvar Lookahead;
#P hidden newex 67 381 75 196617 pvar Threshold;
#P hidden newex 67 319 71 196617 pvar Postamp;
#P hidden newex 67 252 65 196617 pvar Preamp;
#P window linecount 2;
#P hidden newex 67 634 385 196617 jcom.parameter mode @repetitions 0 @type msg_symbol @description "Set the function to be used for calculating the scaling. Possible values: exponential | linear";
#P objectname mode;
#P hidden newex 67 561 317 196617 jcom.parameter release @type msg_float @range 0 500 @clipmode low @ramp/drive scheduler @description "The release time (ms).";
#P objectname release;
#P window linecount 3;
#P hidden newex 67 487 338 196617 jcom.parameter lookahead @type msg_int @range 0 256 @clipmode both @ramp/drive scheduler @repetitions 0 @description "The number of samples (up to 256) to look ahead into the signal to see what is coming.";
#P objectname lookahead;
#P hidden newex 67 401 445 196617 jcom.parameter threshold @type msg_float @range -48 6 @clipmode none @ramp/drive scheduler @description "The limiter threshold (in dB below full scale). When the input signal level exceeds this threshold\\\, it will be attenuated as necessary to keep the level below the threshold.";
#P objectname threshold;
#P window linecount 2;
#P hidden newex 67 339 374 196617 jcom.parameter postamp @type msg_float @range -6 48 @clipmode none @ramp/drive scheduler @description "The gain in dB applied to the signal after limiting. ";
#P objectname postamp;
#P hidden newex 67 274 373 196617 jcom.parameter preamp @type msg_float @range -6 48 @clipmode none @ramp/drive scheduler @description "The gain in dB applied to the signal before limiting.";
#P objectname preamp;
#P number 173 17 35 9 0 256 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Lookahead;
#P flonum 173 32 36 9 0. 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Release;
#P flonum 57 45 36 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Threshold;
#P window linecount 1;
#P comment 91 47 20 196617 dB;
#B frgb 172 172 172;
#P flonum 57 31 36 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;
#P objectname Postamp;
#P comment 91 33 20 196617 dB;
#B frgb 172 172 172;
#P comment 91 19 20 196617 dB;
#B frgb 172 172 172;
#P comment 209 33 51 196617 ms;
#B frgb 172 172 172;
#P comment 209 19 51 196617 samples;
#B frgb 172 172 172;
#P comment 120 47 51 196617 Mode;
#B frgb 172 172 172;
#P comment 120 33 51 196617 Release;
#B frgb 172 172 172;
#P comment 120 19 51 196617 Lookahead;
#B frgb 172 172 172;
#P comment 4 47 51 196617 Threshold;
#B frgb 172 172 172;
#P comment 4 33 49 196617 Postamp;
#B frgb 172 172 172;
#P comment 4 19 49 196617 Preamp;
#B frgb 172 172 172;
#P hidden comment 23 99 79 196617 command input;
#P hidden inlet 9 99 15 0;
#P hidden message 240 98 37 196617 /init;
#P hidden outlet 380 175 15 0;
#P window linecount 2;
#P hidden newex 9 127 254 196617 jcom.hub jmod.limiter~ @size 1U-half @module_type audio @description "A stereo limiter";
#P objectname jcom.hub;
#P window linecount 1;
#P hidden comment 409 68 113 196617 ----signal inputs----;
#P hidden outlet 9 168 15 0;
#P hidden outlet 407 175 15 0;
#P hidden comment 361 191 101 196617 ---signal outputs---;
#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.a.stereo.mxt;
#P hidden connect 8 0 5 0;
#P hidden fasten 40 0 5 0 118 121 14 121;
#P hidden fasten 7 0 5 0 245 123 14 123;
#P hidden connect 5 0 3 0;
#P hidden fasten 25 0 31 0 72 307 62 307 62 247 72 247;
#P hidden connect 31 0 25 0;
#P hidden fasten 26 0 32 0 72 371 63 371 63 314 72 314;
#P hidden connect 32 0 26 0;
#P hidden fasten 27 0 33 0 72 458 63 458 63 378 72 378;
#P hidden connect 33 0 27 0;
#P hidden fasten 28 0 34 0 72 531 63 531 63 463 72 463;
#P hidden connect 34 0 28 0;
#P hidden fasten 29 0 35 0 72 594 63 594 63 536 72 536;
#P hidden connect 35 0 29 0;
#P hidden fasten 30 0 36 0 72 666 63 666 63 601 72 601;
#P hidden connect 36 1 30 0;
#P lcolor 6;
#P hidden connect 43 0 41 0;
#P hidden fasten 41 2 45 0 473 111 385 111;
#P hidden connect 41 0 45 0;
#P hidden connect 45 0 42 0;
#P hidden connect 42 0 6 0;
#P hidden connect 42 1 2 0;
#P hidden connect 45 1 42 1;
#P hidden connect 41 1 45 1;
#P hidden connect 44 0 41 1;
#P pop;
