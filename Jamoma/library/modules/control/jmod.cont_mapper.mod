max v2;#N vpatcher 8 48 555 530;#P origin -243 -258;#P window setfont "Sans Serif" 9.;#P user ubumenu 34 20 103 196617 0 0 1 0;#X add /mapper;#X add /limiter~;#X add /mouse;#X add /control;#X add /editing_this_module;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_in;#P user ubumenu 34 43 103 196617 0 0 1 0;#X add /mapper;#X add /limiter~;#X add /mouse;#X add /control;#X add /editing_this_module;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_out;#P window setfont "Sans Serif" 10.;#P number 117 43 20 10 1 2 99 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname module_out#;#P window setfont "Sans Serif" 9.;#P user ubumenu 105 43 15 196617 0 0 1 0;#X add /;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname out_slash;#P window setfont "Sans Serif" 10.;#P number 117 20 20 10 1 1 99 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname module_in#;#P window setfont "Sans Serif" 9.;#P user ubumenu 105 20 15 196617 0 0 1 0;#X add /;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname in_slash;#P user multiSlider 501 29 10 31 -0.53 0.5 1 2681 47 0 0 2 0 0 1;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname curve_slid;#P hidden newex 1022 492 72 196617 jmod.init $0_;#P hidden newex 298 368 86 196617 pvar module_in#;#P hidden newex 167 347 88 196617 pvar module_out#;#N thispatcher;#Q end;#P hidden newobj 213 420 61 196617 thispatcher;#P comment 1 31 322 196617 ____________________________________________________;#P hidden newex 381 59 13 196617 i;#P hidden newex 381 2 13 196617 i;#P hidden newex 314 59 13 196617 i;#P hidden newex 314 2 13 196617 i;#P flonum 479 16 32 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname curve;#P user ubumenu 469 1 42 196617 0 0 1 0;#X add edit;#X add active;#X add bypass;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname edit;#P hidden newex 1034 409 34 196617 * -1.;#P hidden newex 940 409 34 196617 * -1.;#P window linecount 2;#P hidden newex 945 656 319 196617 jmod.parameter.mxt $0_ /slide_down @repetitions 0 @ramp 1 @type msg_int @description "Smoothing coef when value decreases";#P objectname jmod.parameter.mxt[15];#P window linecount 1;#P hidden newex 945 633 84 196617 pvar slide_down;#P window linecount 2;#P hidden newex 553 659 312 196617 jmod.parameter.mxt $0_ /slide_up @repetitions 0 @ramp 1 @type msg_int @description "Smoothing coef when value raises";#P objectname jmod.parameter.mxt[14];#P window linecount 1;#P hidden newex 553 636 71 196617 pvar slide_up;#P window linecount 2;#P hidden newex 553 585 312 196617 jmod.parameter.mxt $0_ /ramp @repetitions 0 @ramp 1 @type msg_int @description "Ramp time";#P objectname jmod.parameter.mxt[13];#P window linecount 1;#P hidden newex 553 562 57 196617 pvar ramp;#P number 418 20 30 9 0 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname ramp;#P comment 391 22 34 196617 Ramp;#B frgb 255 255 255;#P objectname ramp_com;#P comment 325 45 39 196617 /down;#B frgb 255 255 255;#P flonum 358 20 28 9 0. 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname slide_up;#P flonum 358 43 28 9 0. 0 8225 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname slide_down;#P comment 321 22 45 196617 Slide up;#B frgb 255 255 255;#P hidden newex 256 391 73 196617 pvar clipmode;#P window linecount 2;#P hidden newex 944 583 312 196617 jmod.message.mxt $0_ /clipmode @repetitions 0 @type menu @description "Choose the clipping mode (none\\\, low\\\, high\\\, both)";#P objectname jmod.parameter.mxt[12];#P window linecount 1;#P hidden newex 945 560 82 196617 pvar clipmode 2;#P user ubumenu 436 42 29 196617 0 0 1 0;#X add none;#X add low;#X add high;#X add both;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname clipmode;#P hidden newex 130 391 79 196617 pvar curve_disp;#P user multiSlider 469 29 33 31 0. 1. 32 2681 15 0 0 2 0 0 0;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname curve_disp;#P comment 450 18 36 196617 Curve;#B frgb 255 255 255;#P window linecount 3;#P hidden newex 940 432 312 196617 jmod.parameter.mxt $0_ /curve @repetitions 0 @ramp 1 @type msg_float @description "Curve applied on the output value (<0 exponential\\\, 0 linear\\\, >0 logarithmic";#P objectname jmod.parameter.mxt[11];#P window linecount 1;#P hidden newex 974 409 60 196617 pvar curve;#P window linecount 2;#P hidden newex 942 515 312 196617 jmod.message.mxt $0_ /edit @repetitions 1 @type menu @description "Choose operation mode (active\\\, edit\\\, bypass)";#P objectname jmod.parameter.mxt[10];#P window linecount 1;#P hidden newex 943 492 73 196617 pvar edit 2;#P hidden newex 309 328 64 196617 pvar in_max;#P hidden newex 309 307 64 196617 pvar in_min;#P hidden newex 172 326 73 196617 pvar out_max;#P hidden newex 172 306 73 196617 pvar out_min;#P window linecount 2;#P hidden newex 940 359 312 196617 jmod.parameter.mxt $0_ /out_max @repetitions 0 @ramp 1 @type msg_float @description "Maximum output value";#P objectname jmod.parameter.mxt[8];#P window linecount 1;#P hidden newex 940 336 73 196617 pvar out_max;#P window linecount 2;#P hidden newex 940 286 312 196617 jmod.parameter.mxt $0_ /out_min @repetitions 0 @ramp 1 @type msg_float @description "Minimum output value";#P objectname jmod.parameter.mxt[9];#P window linecount 1;#P hidden newex 940 263 70 196617 pvar out_min;#P window linecount 2;#P hidden newex 938 213 312 196617 jmod.parameter.mxt $0_ /in_max @repetitions 0 @ramp 1 @type msg_float @description "Maximum input value";#P objectname jmod.parameter.mxt[7];#P window linecount 1;#P hidden newex 938 190 64 196617 pvar in_max;#P window linecount 2;#P hidden newex 938 140 312 196617 jmod.parameter.mxt $0_ /in_min @repetitions 0 @ramp 1 @type msg_float @description "Minimum input value";#P objectname jmod.parameter.mxt[6];#P window linecount 1;#P hidden newex 938 117 64 196617 pvar in_min;#P comment 272 45 14 196617 /;#B frgb 255 255 255;#P flonum 247 43 33 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname out_min;#P flonum 279 43 40 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname out_max;#P comment 211 45 36 196617 Range;#B frgb 255 255 255;#P comment 272 22 14 196617 /;#B frgb 255 255 255;#P flonum 247 20 33 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname in_min;#P flonum 278 20 41 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname in_max;#P comment 211 22 36 196617 Range;#B frgb 255 255 255;#P hidden newex 298 348 95 196617 pvar module_in_fct;#P hidden newex 151 367 104 196617 pvar module_out_fct;#P hidden newex 555 493 107 196617 pvar module_in_fct 2;#P window linecount 2;#P hidden newex 555 518 347 196617 jmod.parameter.mxt $0_ /module_in_function @repetitions 1 @type menu @description "Source module function of the mapping";#P objectname jmod.parameter.mxt[4];#P window linecount 1;#P hidden newex 552 265 113 196617 pvar module_out_fct 2;#P window linecount 2;#P hidden newex 552 290 353 196617 jmod.parameter.mxt $0_ /module_out_function @repetitions 1 @type menu @description "Destination function of the mapping";#P objectname jmod.parameter.mxt[5];#P user ubumenu 136 20 72 196617 0 0 1 0;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_in_fct;#P user ubumenu 136 43 72 196617 0 0 1 0;#X add <separator>;#X add <separator>;#X add /preset/store;#X add /preset/recall;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname module_out_fct;#P window linecount 1;#P hidden newex 403 326 88 196617 pvar module_in;#P hidden newex 553 412 88 196617 pvar module_in#;#P window linecount 2;#P hidden newex 553 435 340 196617 jmod.parameter.mxt $0_ /module_in_nr @repetitions 0 @type msg_int @description "Source module instance of the mapping";#P objectname jmod.parameter.mxt[2];#P window linecount 1;#P hidden newex 553 340 94 196617 pvar module_in 2;#P window linecount 2;#P hidden newex 553 365 312 196617 jmod.parameter.mxt $0_ /module_in @repetitions 0 @type menu @description "Source module of the mapping";#P objectname jmod.parameter.mxt[3];#P window linecount 1;#P hidden newex 553 186 88 196617 pvar module_out#;#P window linecount 2;#P hidden newex 553 209 340 196617 jmod.parameter.mxt $0_ /module_out_nr @repetitions 0 @type msg_int @description "Destination module instance of the mapping";#P objectname jmod.parameter.mxt[1];#P window linecount 1;#P hidden newex 553 116 94 196617 pvar module_out 2;#P comment 389 45 53 196617 Clip mode;#B frgb 255 255 255;#P hidden newex 412 305 88 196617 pvar module_out;#P comment 9 45 23 196617 Out;#B frgb 255 255 255;#P hidden newex 109 226 45 196617 pcontrol;#P hidden newex 109 202 78 196617 jmod.pass open;#P hidden message 40 112 125 196617 /documentation/generate;#P window linecount 2;#P hidden message 18 429 65 196617 \; max refresh;#P hidden message 18 392 75 196617 \; jmod.init bang;#P window linecount 1;#N vpatcher 167 231 864 694;#P window setfont "Sans Serif" 9.;#P flonum 188 386 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet to in #;#P outlet 524 131 15 0;#P window linecount 0;#N vpatcher 544 43 1082 718;#P origin 0 -15;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 271 163 60 196617 loadmess -1;#P message 294 563 31 196617 0. 1.;#P newex 28 393 47 196617 gate 1 1;#P newex 28 414 119 196617 t s 0 clear;#P newex 151 72 65 196617 jmod.change;#P newex 255 372 83 196617 t b s;#P outlet 114 637 15 0;#P newex 114 615 134 196617 sprintf set /jmod_from%s;#P newex 353 188 32 196617 sel 1;#P newex 241 185 40 196617 change;#N comlet to thispatcher;#P outlet 291 264 15 0;#N vpatcher 335 79 831 252;#P window setfont "Sans Serif" 9.;#P newex 69 45 50 196617 loadbang;#P outlet 28 111 15 0;#P message 218 63 234 196617 script size module_in 72 16 \, script bringtofront in_slash \, script bringtofront module_in#;#P inlet 218 36 15 0;#P inlet 28 44 15 0;#P message 28 67 151 196617 script size module_in 103 16 \, script bringtofront module_in;#P connect 5 0 0 0;#P connect 1 0 0 0;#P connect 0 0 4 0;#P fasten 3 0 4 0 223 100 33 100;#P connect 2 0 3 0;#P pop;#P newobj 291 239 45 196617 p script;#N comlet to nr;#P outlet 353 282 15 0;#P newex 382 253 67 196617 prepend max;#P newex 382 232 25 196617 i;#P newex 291 212 44 196617 sel 0 1;#P newex 65 260 96 196617 gate 2 1;#P newex 151 94 191 196617 t s s 1;#P newex 241 116 80 196617 prepend symbol;#N coll jmod.modules_instances 1;#P newobj 241 138 144 196617 coll jmod.modules_instances 1;#P newex 65 339 96 196617 switch 2 1;#P newex 241 210 27 196617 + 1;#P newex 65 295 58 196617 sprintf %s;#P newex 185 260 42 196617 t b i;#P newex 241 163 27 196617 > 0;#P newex 151 294 76 196617 sprintf %s/%s;#P inlet 185 242 13 0;#P newex 353 211 39 196617 t 1 b;#P inlet 294 477 15 0;#P newex 294 497 47 196617 gate 1 0;#P newex 294 540 64 196617 route default;#N comlet to in_max;#P outlet 346 612 15 0;#N comlet to in_min;#P outlet 294 613 15 0;#P newex 294 589 62 196617 unpack 0. 0.;#P newex 294 519 62 196617 route range;#P newex 255 450 86 196617 zl slice 1;#N vpatcher 10 59 395 304;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 267 163 50 196617 zl rev;#P newex 267 45 50 196617 zl rev;#P window linecount 2;#P newex 60 95 202 196617 sel name kind current_state type range clipmode ramp repetitions description;#P window linecount 1;#P newex 267 142 67 196617 zl group 256;#P newex 267 65 25 196617 iter;#P outlet 267 186 15 0;#P inlet 267 26 15 0;#P fasten 2 0 4 0 272 86 65 86;#P connect 0 0 5 0;#P connect 5 0 2 0;#P fasten 4 8 3 0 233 133 272 133;#P fasten 4 7 3 0 212 133 272 133;#P fasten 4 6 3 0 191 133 272 133;#P fasten 4 5 3 0 170 133 272 133;#P fasten 4 4 3 0 149 133 272 133;#P fasten 4 3 3 0 128 133 272 133;#P fasten 4 2 3 0 107 133 272 133;#P fasten 4 1 3 0 86 133 272 133;#P fasten 4 0 3 0 65 133 272 133;#P connect 2 0 3 0;#P connect 3 0 6 0;#P connect 6 0 1 0;#P pop;#P newobj 331 475 35 196617 p iter;#N coll jmod.namespace 1;#P newobj 255 426 111 196617 coll jmod.namespace 1;#P newex 255 403 83 196617 sprintf %s%s;#P inlet 255 350 15 0;#P newex 28 502 50 196617 zl iter 1;#P newex 28 436 80 196617 prepend symbol;#P newex 136 550 50 196617 jmod.thru;#P newex 65 372 173 196617 t s s;#P newex 28 523 78 196617 prepend append;#P window linecount 3;#N coll jmod.cont_mapper_ins 1;#P newobj 28 457 72 196617 coll jmod.cont_mapper_ins 1;#N comlet to module in function menu;#P outlet 136 572 15 0;#P inlet 151 53 15 0;#P window linecount 10;#P comment 35 44 46 196617 this is to avoid the function menu to change when only the instance number changes;#P fasten 31 2 46 0 336 120 354 120 354 43 33 43;#P connect 45 1 46 0;#P connect 46 0 45 0;#P connect 45 0 7 0;#P connect 7 0 3 0;#P connect 3 0 8 0;#P connect 8 0 4 0;#P connect 27 0 32 0;#P connect 32 0 26 0;#P fasten 27 0 28 0 246 328 70 328;#P connect 28 0 5 0;#P connect 5 0 46 1;#P connect 26 0 28 1;#P fasten 10 0 41 0 260 422 242 422 242 603 119 603;#P connect 41 0 42 0;#P connect 45 2 6 0;#P fasten 4 0 6 0 33 545 141 545;#P connect 6 0 2 0;#P connect 1 0 44 0;#P connect 44 0 31 0;#P connect 31 0 32 1;#P connect 25 0 23 0;#P connect 32 1 23 0;#P connect 23 0 28 2;#P connect 22 0 25 0;#P connect 25 1 23 1;#P connect 31 1 30 0;#P connect 30 0 29 0;#P connect 29 0 24 0;#P fasten 48 0 39 0 276 182 246 182;#P connect 24 0 39 0;#P connect 39 0 27 0;#P connect 9 0 43 0;#P connect 5 1 10 0;#P connect 43 0 10 0;#P connect 10 0 11 0;#P connect 11 0 13 0;#P fasten 39 0 33 0 246 206 296 206;#P connect 33 0 37 0;#P connect 37 0 38 0;#P connect 20 0 19 0;#P connect 19 0 14 0;#P connect 14 0 18 0;#P connect 18 0 47 0;#P connect 47 0 15 0;#P fasten 18 1 15 0 353 582 299 582;#P connect 15 0 16 0;#P connect 33 1 37 1;#P connect 43 1 10 1;#P connect 13 1 12 0;#P connect 12 0 19 1;#P connect 15 1 17 0;#P fasten 24 0 40 0 246 182 358 182;#P connect 40 0 21 0;#P fasten 35 0 36 0 387 274 358 274;#P connect 21 0 36 0;#P connect 21 1 34 0;#P connect 34 0 35 0;#P fasten 29 0 34 1 246 159 402 159;#P pop;#P newobj 289 105 245 196617 p adress_in;#N comlet to thispatcher;#P outlet 383 131 15 0;#N comlet to module out instance number;#P outlet 265 128 15 0;#N comlet to thispatcher;#P outlet 148 130 15 0;#N comlet to thispatcher;#P outlet 172 329 15 0;#N vpatcher 10 59 210 232;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 98 69 50 196617 change;#P outlet 98 112 15 0;#P window linecount 0;#N vpatcher 350 57 681 246;#P outlet 36 126 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P message 153 89 110 196617 script hide ramp \, script hide ramp_com;#P window linecount 0;#P message 36 89 113 196617 script show ramp \, script show ramp_com;#P newex 36 61 244 196617 sel 1 0;#P inlet 36 36 15 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 2 0 4 0;#P fasten 3 0 4 0 158 121 41 121;#P connect 1 1 3 0;#P pop;#P newobj 98 90 50 196617 p hide;#P window linecount 1;#P newex 26 67 27 196617 + 1;#P newex 26 46 68 196617 r $0_ramp;#P window linecount 0;#P newex 26 89 50 196617 gate 2 1;#P outlet 66 110 15 0;#P outlet 26 110 15 0;#P inlet 66 69 13 0;#P connect 4 0 5 0;#P connect 5 0 3 0;#P connect 3 0 1 0;#P connect 0 0 3 1;#P connect 3 1 2 0;#P fasten 4 0 8 0 31 65 103 65;#P connect 8 0 6 0;#P connect 6 0 7 0;#P pop;#P newobj 109 328 62 196617 p ramp_gate;#P window linecount 1;#P newex 135 353 443 196617 pack 0. 0;#P newex 109 304 417 196617 slide 0. 0.;#N vpatcher 48 49 786 449;#P origin 0 -22;#P inlet 530 180 15 0;#P inlet 491 180 15 0;#P inlet 574 21 15 0;#P window setfont "Sans Serif" 9.;#P newex 357 73 72 196617 route int float;#P number 50 188 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P inlet 357 46 15 0;#P window linecount 1;#P newex 356 270 61 196617 clip 0. 127.;#P newex 243 270 73 196617 minimum 127.;#P window linecount 0;#P newex 130 270 64 196617 maximum 0.;#P outlet 685 366 15 0;#P newex 17 187 27 196617 + 1;#P newex 17 215 350 196617 gate 4 1;#P newex 17 135 79 196617 prepend symbol;#P user umenu 17 158 100 196647 1 64 174 1;#X add none;#X add low;#X add high;#X add both;#P comment 435 76 185 196617 Only int and float can be scaled/clipped;#P fasten 12 0 2 0 579 40 22 40;#P connect 2 0 1 0;#P connect 1 0 4 0;#P connect 4 0 3 0;#P connect 4 0 10 0;#P connect 3 1 6 0;#P fasten 13 0 6 1 496 240 189 240;#P connect 3 2 7 0;#P fasten 14 0 7 1 535 251 311 251;#P connect 3 3 8 0;#P connect 9 0 11 0;#P connect 11 0 3 1;#P fasten 11 1 3 1 393 108 362 108;#P fasten 13 0 8 1 496 240 386 240;#P fasten 14 0 8 2 535 251 411 251;#P fasten 3 0 5 0 22 326 690 326;#P fasten 6 0 5 0 135 326 690 326;#P fasten 7 0 5 0 248 326 690 326;#P fasten 8 0 5 0 361 326 690 326;#P fasten 11 2 5 0 424 99 690 99;#P pop;#P newobj 109 278 314 196617 p clip_range;#N comlet to curve display;#P outlet 42 247 15 0;#N vpatcher 9 62 330 449;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 30 89 586 571;#P window setfont "Bell MT" 9.;#P window linecount 0;#P comment 221 394 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 221 383 86 133365769 made by Tom Mays;#N comlet output 0. to 1.;#P outlet 100 393 15 0;#N comlet input 0. to 1.;#P inlet 100 98 15 0;#P window setfont "Sans Serif" 9.;#P flonum 283 214 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 70 284 100 196617 expr pow($f1\\\,$f2);#P newex 283 157 35 196617 abs 0.;#P newex 244 135 49 196617 t f f;#P newex 244 180 27 196617 + 2;#P newex 244 159 27 196617 < 0.;#P newex 211 135 27 196617 1;#P newex 211 114 43 196617 sel 0.;#P newex 100 340 28 196617 !- 1.;#P newex 100 260 28 196617 !- 1.;#P flonum 100 120 61 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 40 220 26 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 40 239 70 196617 gate 3;#P flonum 100 369 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet curve (-1. <= x <= 1.);#P inlet 211 54 15 0;#P flonum 211 96 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 190 268 46 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 190 247 132 196617 expr pow(2\\\,($f1*15)/2.);#P newex 100 319 100 196617 expr pow($f1\\\,$f2);#P comment 118 304 72 196617 log/exp curve;#P comment 214 234 65 196617 scale control;#P window linecount 3;#P comment 227 54 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#P window setfont Times 9.;#P window linecount 1;#P comment 290 305 100 1310729 arg 1 : initial curve value;#P connect 18 0 11 0;#P connect 16 0 11 0;#P connect 11 0 10 0;#P connect 10 1 21 0;#P connect 23 0 12 0;#P connect 12 0 10 1;#P connect 10 2 13 0;#P connect 13 0 4 0;#P connect 4 0 14 0;#P fasten 21 0 9 0 75 364 105 364;#P fasten 10 0 9 0 45 364 105 364;#P connect 14 0 9 0;#P connect 9 0 24 0;#P connect 6 0 21 1;#P fasten 22 0 5 0 288 232 195 232;#P connect 5 0 6 0;#P connect 6 0 4 1;#P connect 8 0 7 0;#P connect 7 0 15 0;#P connect 15 0 16 0;#P connect 15 1 19 0;#P connect 19 0 17 0;#P connect 17 0 18 0;#P connect 19 1 20 0;#P connect 20 0 22 0;#P pop;#P newobj 60 193 101 196617 p explinlog;#N comlet curve (-1. <= x <= 1.);#P inlet 214 14 15 0;#P newex 151 58 47 196617 gate 1 0;#P window setfont "Bell MT" 9.;#P comment 24 338 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 24 327 86 133365769 made by Tom Mays;#N comlet curve (-1. <= x <= 1.);#P inlet 191 38 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 3;#P comment 19 38 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#N comlet out to multislider;#P outlet 60 258 15 0;#P window linecount 1;#P newex 60 236 59 196617 zl group 32;#P button 30 107 15 0;#P newex 30 129 40 196617 Uzi 32;#P flonum 60 172 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 60 150 79 196617 scale 0 32 0. 1.;#P flonum 60 216 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 151 81 80 9 -1. 1. 3 3 0 0 0 221 221 221 222 222 222 0 0 0;#P window linecount 5;#P comment 80 259 100 196617 attacher un multislider float avec range de 0. � 1. pour visualiser la courbe;#P fasten 1 0 6 0 156 101 35 101;#P connect 6 0 5 0;#P connect 5 2 3 0;#P connect 3 0 4 0;#P connect 4 0 15 0;#P connect 15 0 2 0;#P connect 2 0 7 0;#P connect 7 0 8 0;#P fasten 14 0 13 0 219 32 156 32;#P connect 13 0 1 0;#P connect 1 0 15 1;#P connect 10 0 13 1;#P pop;#P newobj 42 224 50 196617 p display;#P newex 109 253 229 196617 scale 0. 1. 0. 1.;#P newex 152 187 480 196617 jmod.oscroute /in_min /in_max /out_min /out_max /curve /clipmode /slide_up /slide_down /ramp;#P newex 93 185 43 196617 gate 1 0;#N vpatcher 10 59 210 241;#P outlet 85 119 15 0;#P outlet 17 115 15 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 83 85 21 196617 t 0;#P newex 48 85 32 196617 t 0 1;#P window linecount 0;#P newex 17 84 21 196617 t 1;#P newex 17 62 108 196617 sel edit active bypass;#P inlet 17 38 15 0;#P connect 0 0 1 0;#P connect 1 0 2 0;#P connect 4 0 5 0;#P connect 3 0 5 0;#P connect 2 0 5 0;#P connect 1 1 3 0;#P connect 1 2 4 0;#P connect 3 1 6 0;#P connect 2 0 6 0;#P connect 4 0 6 0;#P pop;#P newobj 547 78 35 196617 p edit;#N comlet to in_max;#P outlet 477 131 15 0;#N comlet to in_min;#P outlet 430 131 15 0;#N comlet to module out function menu;#P outlet 226 129 15 0;#N comlet to module out function menu;#P outlet 187 129 15 0;#N comlet to module out function menu;#P outlet 109 130 15 0;#P newex 31 392 50 196617 forward;#P newex 126 156 50 196617 receive;#N comlet to module out function menu;#P outlet 70 129 15 0;#N vpatcher 297 83 835 758;#P origin 0 -15;#P window setfont "Sans Serif" 9.;#P newex 271 163 60 196617 loadmess -1;#P window linecount 1;#P newex 438 518 60 196617 route ramp;#P window linecount 2;#P newex 352 537 45 196617 prepend symbol;#P window linecount 1;#P newex 438 537 68 196617 s $0_ramp;#P outlet 352 570 15 0;#P newex 284 517 147 196617 route range clipmode;#P window linecount 0;#P message 284 562 31 196617 0. 1.;#P window linecount 1;#P newex 28 393 47 196617 gate 1 1;#P newex 28 414 119 196617 t s 0 clear;#P newex 151 72 65 196617 jmod.change;#P newex 255 349 109 196617 t b s;#P outlet 123 624 15 0;#P newex 123 602 121 196617 sprintf send /jmod_to%s;#P newex 353 188 32 196617 sel 1;#P newex 241 185 40 196617 change;#P outlet 292 262 15 0;#N vpatcher 335 79 831 252;#P window setfont "Sans Serif" 9.;#P newex 69 45 50 196617 loadbang;#P outlet 28 111 15 0;#P message 218 63 234 196617 script size module_out 72 16 \, script bringtofront out_slash \, script bringtofront module_out#;#P inlet 218 36 15 0;#P inlet 28 44 15 0;#P message 28 67 151 196617 script size module_out 103 16 \, script bringtofront module_out;#P connect 1 0 0 0;#P connect 5 0 0 0;#P fasten 3 0 4 0 223 100 33 100;#P connect 0 0 4 0;#P connect 2 0 3 0;#P pop;#P newobj 292 237 45 196617 p script;#P outlet 353 282 15 0;#P newex 382 253 67 196617 prepend max;#P newex 382 232 25 196617 i;#P newex 292 210 44 196617 sel 0 1;#P newex 65 260 96 196617 gate 2;#P newex 151 94 191 196617 t s s 1;#P newex 241 116 80 196617 prepend symbol;#N coll jmod.modules_instances 1;#P newobj 241 138 144 196617 coll jmod.modules_instances 1;#P newex 65 339 96 196617 switch 2 1;#P newex 241 210 27 196617 + 1;#P newex 65 295 58 196617 sprintf %s;#P newex 185 260 42 196617 t b i;#P newex 241 163 27 196617 > 0;#P newex 151 294 76 196617 sprintf %s/%s;#P inlet 185 242 13 0;#P newex 353 211 39 196617 t 1 b;#P inlet 284 470 15 0;#P window linecount 0;#P newex 284 496 47 196617 gate 1 0;#P window linecount 1;#P newex 284 539 64 196617 route default;#P outlet 336 611 15 0;#P outlet 284 612 15 0;#P newex 284 588 62 196617 unpack 0. 0.;#P newex 281 447 50 196617 zl slice 1;#N vpatcher 10 59 395 304;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 267 163 50 196617 zl rev;#P newex 267 45 50 196617 zl rev;#P window linecount 2;#P newex 60 95 202 196617 sel name kind current_state type range clipmode ramp repetitions description;#P window linecount 1;#P newex 267 142 67 196617 zl group 256;#P newex 267 65 25 196617 iter;#P outlet 267 186 15 0;#P inlet 267 26 15 0;#P fasten 2 0 4 0 272 86 65 86;#P connect 0 0 5 0;#P connect 5 0 2 0;#P connect 2 0 3 0;#P fasten 4 0 3 0 65 133 272 133;#P fasten 4 1 3 0 86 133 272 133;#P fasten 4 2 3 0 107 133 272 133;#P fasten 4 3 3 0 128 133 272 133;#P fasten 4 4 3 0 149 133 272 133;#P fasten 4 5 3 0 170 133 272 133;#P fasten 4 6 3 0 191 133 272 133;#P fasten 4 7 3 0 212 133 272 133;#P fasten 4 8 3 0 233 133 272 133;#P connect 3 0 6 0;#P connect 6 0 1 0;#P pop;#P newobj 321 469 35 196617 p iter;#N coll jmod.namespace 1;#P newobj 281 423 111 196617 coll jmod.namespace 1;#P newex 281 400 83 196617 sprintf %s%s;#P inlet 255 327 15 0;#P newex 28 502 50 196617 zl iter 1;#P newex 28 436 80 196617 prepend symbol;#P newex 136 550 50 196617 jmod.thru;#P newex 65 372 188 196617 t s s;#P newex 28 523 78 196617 prepend append;#P window linecount 3;#N coll jmod.cont_mapper_outs 1;#P newobj 28 457 72 196617 coll jmod.cont_mapper_outs 1;#P outlet 136 572 15 0;#P inlet 151 53 15 0;#P window linecount 0;#P comment 35 44 46 196617 this is to avoid the function menu to change when only the instance number changes;#P connect 44 1 45 0;#P fasten 30 2 45 0 336 120 354 120 354 43 33 43;#P connect 45 0 44 0;#P connect 44 0 7 0;#P connect 7 0 3 0;#P connect 3 0 8 0;#P connect 8 0 4 0;#P connect 26 0 31 0;#P connect 31 0 25 0;#P fasten 26 0 27 0 246 328 70 328;#P connect 27 0 5 0;#P connect 5 0 45 1;#P connect 25 0 27 1;#P fasten 10 0 40 0 286 420 251 420 251 590 128 590;#P connect 40 0 41 0;#P fasten 4 0 6 0 33 545 141 545;#P connect 44 2 6 0;#P connect 6 0 2 0;#P connect 1 0 43 0;#P connect 43 0 30 0;#P connect 30 0 31 1;#P connect 31 1 22 0;#P connect 24 0 22 0;#P connect 22 0 27 2;#P connect 21 0 24 0;#P connect 24 1 22 1;#P connect 30 1 29 0;#P connect 29 0 28 0;#P connect 28 0 23 0;#P fasten 52 0 38 0 276 182 246 182;#P connect 23 0 38 0;#P connect 38 0 26 0;#P connect 9 0 42 0;#P connect 5 1 10 0;#P connect 42 0 10 0;#P connect 10 0 11 0;#P connect 11 0 13 0;#P connect 19 0 18 0;#P connect 18 0 47 0;#P connect 47 0 17 0;#P connect 17 0 46 0;#P fasten 17 1 14 0 343 581 289 581;#P connect 46 0 14 0;#P connect 14 0 15 0;#P fasten 38 0 32 0 246 206 297 206;#P connect 32 0 36 0;#P connect 36 0 37 0;#P connect 13 1 12 0;#P connect 12 0 18 1;#P connect 32 1 36 1;#P connect 14 1 16 0;#P connect 47 1 50 0;#P connect 50 0 48 0;#P fasten 23 0 39 0 246 183 358 183;#P connect 39 0 20 0;#P connect 20 0 35 0;#P fasten 34 0 35 0 387 274 358 274;#P connect 42 1 10 1;#P connect 20 1 33 0;#P connect 33 0 34 0;#P fasten 28 0 33 1 246 159 402 159;#P fasten 12 0 51 0 326 491 443 491;#P connect 51 0 49 0;#P pop;#P newobj 31 105 245 196617 p adress_out;#N comlet to module in function menu;#P outlet 336 131 15 0;#N vpatcher 0 354 225 582;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N coll jmod.modules_instances 1;#P newobj 23 83 147 196617 coll jmod.modules_instances 1;#P button 118 37 15 0;#P newex 23 18 103 196617 r jmod.analysis.done;#P window linecount 0;#P newex 68 105 69 196617 route symbol;#P newex 41 38 72 196617 jmod.init $0_;#P newex 68 160 50 196617 jmod.thru;#P newex 23 61 123 196617 t dump clear;#P newex 68 130 73 196617 prepend append;#P outlet 68 182 15 0;#P connect 6 0 2 0;#P fasten 4 0 2 0 46 58 28 58;#P fasten 7 0 2 0 123 58 28 58;#P connect 2 0 8 0;#P connect 8 1 5 0;#P connect 5 0 1 0;#P connect 1 0 3 0;#P fasten 2 1 3 0 141 153 73 153;#P connect 3 0 0 0;#P pop;#P newobj 569 382 78 196617 p module_menu;#P outlet 569 403 15 0;#N vpatcher 30 89 586 571;#P window setfont "Bell MT" 9.;#P window linecount 0;#P comment 221 394 221 133365769 email : tmays@free.fr - web : http://www.tommays.net;#P comment 221 383 86 133365769 made by Tom Mays;#N comlet output 0. to 1.;#P outlet 100 393 15 0;#N comlet input 0. to 1.;#P inlet 100 98 15 0;#P window setfont "Sans Serif" 9.;#P flonum 283 214 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 70 284 100 196617 expr pow($f1\\\,$f2);#P newex 283 157 35 196617 abs 0.;#P newex 244 135 49 196617 t f f;#P newex 244 180 27 196617 + 2;#P newex 244 159 27 196617 < 0.;#P newex 211 135 27 196617 1;#P newex 211 114 43 196617 sel 0.;#P newex 100 340 28 196617 !- 1.;#P newex 100 260 28 196617 !- 1.;#P flonum 100 120 61 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P number 40 220 26 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 40 239 70 196617 gate 3;#P flonum 100 369 64 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#N comlet curve (-1. <= x <= 1.);#P inlet 211 54 15 0;#P flonum 211 96 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P flonum 190 268 46 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P newex 190 247 132 196617 expr pow(2\\\,($f1*15)/2.);#P newex 100 319 100 196617 expr pow($f1\\\,$f2);#P comment 118 304 72 196617 log/exp curve;#P comment 214 234 65 196617 scale control;#P window linecount 3;#P comment 227 54 125 196617 0<x<=1 = exponential \; -1<=x<0 = logarithmic \; 0 = linear;#P window setfont Times 9.;#P window linecount 1;#P comment 290 305 100 1310729 arg 1 : initial curve value;#P connect 16 0 11 0;#P connect 18 0 11 0;#P connect 11 0 10 0;#P connect 10 1 21 0;#P connect 23 0 12 0;#P connect 12 0 10 1;#P connect 10 2 13 0;#P connect 13 0 4 0;#P connect 4 0 14 0;#P connect 14 0 9 0;#P fasten 10 0 9 0 45 364 105 364;#P fasten 21 0 9 0 75 364 105 364;#P connect 9 0 24 0;#P connect 6 0 21 1;#P fasten 22 0 5 0 288 232 195 232;#P connect 5 0 6 0;#P connect 6 0 4 1;#P connect 8 0 7 0;#P connect 7 0 15 0;#P connect 15 0 16 0;#P connect 15 1 19 0;#P connect 19 0 17 0;#P connect 17 0 18 0;#P connect 19 1 20 0;#P connect 20 0 22 0;#P pop;#P newobj 93 224 54 196617 p explinlog;#P newex 31 57 615 196617 jmod.oscroute /module_out /module_out_nr /module_out_function /module_in /module_in_nr /module_in_function /edit;#P outlet 3 392 15 0;#P inlet 31 33 15 0;#P connect 0 0 2 0;#P connect 2 0 7 0;#P connect 24 0 10 0;#P connect 7 0 10 0;#P connect 25 0 10 0;#P fasten 18 4 20 0 365 213 47 213;#P connect 20 0 21 0;#P connect 7 1 8 0;#P fasten 16 0 20 1 552 179 87 179;#P lcolor 5;#P fasten 16 1 17 0 577 179 98 179;#P lcolor 5;#P connect 17 0 3 0;#P connect 2 1 7 1;#P connect 7 2 11 0;#P connect 3 0 19 0;#P connect 19 0 22 0;#P connect 22 0 23 0;#P connect 23 0 25 0;#P fasten 30 0 9 0 294 151 131 151;#P fasten 9 0 17 1 131 180 131 180;#P connect 25 1 24 0;#P fasten 18 4 3 1 365 213 142 213;#P connect 7 3 27 0;#P fasten 2 7 18 0 638 183 157 183;#P connect 18 0 19 1;#P connect 25 2 26 0;#P connect 2 2 7 2;#P connect 7 4 12 0;#P connect 24 0 32 0;#P connect 18 1 19 2;#P connect 18 2 22 1;#P lcolor 7;#P connect 7 5 13 0;#P connect 18 2 19 3;#P lcolor 7;#P fasten 16 0 7 3 552 102 270 102;#P lcolor 5;#P connect 7 6 28 0;#P connect 18 3 19 4;#P lcolor 7;#P connect 2 3 30 0;#P connect 18 3 22 2;#P lcolor 7;#P fasten 18 6 23 1 469 300 317 300;#P connect 30 1 6 0;#P connect 2 4 30 1;#P connect 30 2 29 0;#P fasten 18 5 22 3 417 241 417 241;#P connect 30 3 14 0;#P connect 2 5 30 2;#P connect 30 4 15 0;#P fasten 18 7 23 2 521 289 520 289;#P fasten 16 0 30 3 552 102 528 102;#P lcolor 3;#P connect 30 5 31 0;#P connect 2 6 16 0;#P fasten 18 8 24 1 573 335 573 335;#P connect 5 0 4 0;#P pop;#P hidden newobj 109 283 315 196617 p mapper;#P comment 9 22 16 196617 In;#B frgb 255 255 255;#P window linecount 3;#P hidden newex 18 138 192 196617 jmod.hub $0_ jmod.cont_mapper @size 1U @module_type control @description "One-to-one Mapper";#P objectname jmod.hub;#P hidden inlet 18 113 13 0;#P hidden outlet 18 339 13 0;#P window linecount 2;#P hidden newex 553 139 312 196617 jmod.parameter.mxt $0_ /module_out @repetitions 0 @type menu @description "Destination module of the mapping";#P objectname jmod.parameter.mxt;#P window linecount 3;#P hidden newex 209 137 79 196617 pattrstorage @autorestore 0 @savemode 0;#X client_rect 14 59 654 299;#X storage_rect 0 0 640 240;#P objectname jmod.cont_mapper;#P window linecount 1;#P hidden message 195 255 221 196617 /slide_down 0;#P hidden newex 195 234 61 196617 prepend set;#P bpatcher 1 0 511 61 0 0 jmod.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden fasten 12 0 7 0 45 131 23 131;#P hidden connect 6 0 7 0;#P hidden fasten 9 0 5 0 114 332 23 332;#P hidden connect 7 0 5 0;#P hidden connect 7 1 13 0;#P hidden connect 13 0 14 0;#P hidden fasten 13 1 9 0 182 274 114 274;#P hidden connect 14 0 9 0;#P hidden connect 9 1 60 0;#P hidden connect 9 2 32 0;#P hidden connect 9 8 87 0;#P hidden connect 9 3 50 0;#P hidden connect 9 6 51 0;#P hidden fasten 13 1 1 0 182 224 200 224;#P hidden connect 1 0 2 0;#P hidden connect 3 0 7 1;#P hidden connect 7 2 3 0;#P hidden fasten 9 5 86 0 219 302 218 302;#P hidden fasten 9 4 86 0 198 303 218 303;#P hidden fasten 9 10 86 0 324 412 218 412;#P hidden connect 9 7 64 0;#P hidden fasten 9 9 33 0 303 302 303 302;#P hidden connect 9 13 88 0;#P hidden connect 9 11 52 0;#P hidden connect 9 12 53 0;#P connect 81 0 82 0;#P connect 83 0 84 0;#P hidden connect 9 14 25 0;#P hidden connect 9 14 16 0;#P hidden connect 90 0 80 0;#P hidden fasten 28 0 29 0 557 324 539 324 539 260 557 260;#P hidden fasten 29 1 28 0 660 286 557 286;#P hidden fasten 4 0 18 0 558 174 540 174 540 111 558 111;#P hidden fasten 18 1 4 0 642 137 558 137;#P hidden fasten 19 0 20 0 558 244 540 244 540 179 558 179;#P hidden connect 20 0 19 0;#P hidden fasten 21 0 22 0 558 397 540 397 540 335 558 335;#P hidden fasten 22 1 21 0 642 361 558 361;#P hidden fasten 23 0 24 0 558 469 540 469 540 405 558 405;#P hidden connect 24 0 23 0;#P hidden fasten 72 0 71 0 558 621 542 621 542 555 558 555;#P hidden connect 71 0 72 0;#P hidden fasten 74 0 73 0 558 695 542 695 542 629 558 629;#P hidden connect 73 0 74 0;#P hidden fasten 30 0 31 0 560 551 542 551 542 488 560 488;#P hidden fasten 31 1 30 0 657 514 560 514;#P hidden fasten 43 0 42 0 943 174 925 174 925 110 943 110;#P hidden connect 42 0 43 0;#P hidden fasten 45 0 44 0 943 247 925 247 925 183 943 183;#P hidden connect 44 0 45 0;#P hidden fasten 47 0 46 0 945 320 927 320 927 256 945 256;#P hidden connect 46 0 47 0;#P hidden fasten 49 0 48 0 945 393 927 393 927 329 945 329;#P hidden connect 48 0 49 0;#P hidden connect 56 0 77 0;#P hidden connect 77 0 57 0;#P hidden fasten 54 1 55 0 1011 512 947 512;#P hidden fasten 55 0 54 0 947 549 930 549 930 485 948 485;#P hidden connect 89 0 54 0;#P hidden fasten 62 1 63 0 1022 580 949 580;#P hidden fasten 63 0 62 0 949 616 929 616 929 555 950 555;#P hidden fasten 76 0 75 0 950 692 934 692 934 626 950 626;#P hidden connect 75 0 76 0;#P hidden connect 78 0 56 0;#P hidden fasten 57 0 78 0 945 477 929 477 929 404 1039 404;#P pop;