max v2;#N vpatcher 214 103 886 607;#P window setfont "Sans Serif" 9.;#P hidden newex 541 255 47 196617 pcontrol;#P hidden newex 408 231 143 196617 jcom.algorithm_control~.mxt;#P hidden message 93 101 191 196617 /preset/store 1 default \, /preset/write;#P hidden comment 88 197 105 196617 example messages...;#P hidden message 88 231 120 196617 /sr_ratio:clipmode none;#P hidden message 88 212 72 196617 /sr_ratio 0.4;#P hidden message 265 118 74 196617 /preset/dump;#P hidden message 104 118 31 196617 /init;#P hidden newex 354 325 64 196617 jcom.out~ 2;#P hidden newex 354 201 58 196617 jcom.in~ 2;#P hidden message 137 118 125 196617 /documentation/generate;#P window linecount 2;#P hidden newex 0 145 338 196617 jcom.hub jmod.degrade~ @size 1U-half @module_type audio @description "Emulate the use of lower sample-rates and bit-resolution";#P objectname jcom.hub;#P window linecount 1;#P hidden comment 14 117 79 196617 command input;#P hidden inlet 0 117 13 0;#P hidden inlet 354 182 13 0;#P hidden outlet 354 352 13 0;#P flonum 103 25 40 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P window linecount 3;#P hidden newex 293 8 316 196617 jcom.parameter sr_ratio @type msg_float @range 0. 1. @repetitions 1 @clipmode both @ramp/drive scheduler @description "A ratio of the emulated sample-rate to the global sample-rate.";#P objectname sr_ratio;#P hidden newex 287 59 336 196617 jcom.parameter bitdepth @type msg_int @range 1 24 @clipmode both @ramp/drive scheduler @repetitions 0 @description "The number of bits that will be retained in each sample - use this for bit crunching effects";#P objectname bitdepth;#P hidden inlet 402 182 13 0;#P window linecount 1;#P comment 54 44 53 196617 Bit depth;#B frgb 172 172 172;#P number 103 42 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P comment 16 27 85 196617 sample rate ratio;#B frgb 172 172 172;#P hidden newex 313 292 92 196617 jalg.degrade~.mxt;#P hidden comment 354 164 105 196617 ----signal inputs----;#P hidden outlet 0 204 13 0;#P hidden outlet 381 352 13 0;#P hidden comment 346 368 101 196617 ---signal outputs---;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden fasten 26 0 17 0 98 134 5 134;#P hidden connect 23 0 17 0;#P hidden fasten 21 0 17 0 109 136 5 136;#P hidden connect 15 0 17 0;#P hidden fasten 18 0 17 0 142 138 5 138;#P hidden fasten 22 0 17 0 270 140 5 140;#P hidden connect 24 0 17 0;#P hidden connect 17 0 3 0;#P hidden connect 11 0 12 0;#P hidden connect 10 0 7 0;#P hidden connect 7 0 10 0;#P hidden connect 12 0 11 0;#P hidden fasten 27 0 5 0 413 282 318 282;#P hidden fasten 28 0 5 0 546 284 318 284;#P hidden connect 14 0 19 0;#P hidden connect 19 0 5 1;#P hidden connect 5 1 20 0;#P hidden connect 20 0 13 0;#P hidden connect 20 1 2 0;#P hidden connect 19 1 5 2;#P hidden connect 9 0 19 1;#P hidden connect 19 2 27 0;#P hidden connect 5 2 20 1;#P hidden connect 27 1 28 0;#P pop;