max v2;#N vpatcher 30 134 855 850;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 578 502 47 196617 pcontrol;#P hidden newex 445 478 143 196617 jcom.algorithm_control~.mxt;#P hidden newex 304 571 104 196617 jcom.out~ 2;#P hidden newex 351 456 151 196617 jcom.in~ 2;#P hidden newex 16 355 73 196617 pvar feedback;#P window linecount 2;#P hidden newex 16 380 390 196617 jcom.parameter feedback @type msg_float @ramp.drive scheduler @repetitions 0 @clipmode both @range 0. 1. @clipmode both @description "Amount of delay feedback.";#P objectname feedback[1];#P flonum 226 39 35 9 0. 1. 8227 3 255 255 255 221 221 221 222 222 222 0 0 0;#P objectname feedback;#P window linecount 1;#P comment 184 40 49 196617 feedback;#B frgb 172 172 172;#N vpatcher 59 215 551 472;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 256 85 181 196617 just formatting things so we can do the feedback.;#P window linecount 1;#P newex 69 76 51 196617 zl slice 1;#P newex 69 144 144 196617 pak set 1 0 2 0 3 0 4 0 5 0;#P outlet 69 183 15 0;#P inlet 69 51 15 0;#P window linecount 0;#P newex 69 103 85 196617 unpack 0 0 0 0 0;#P comment 256 128 181 196617 not very elegant \, but necessary since <interleave> isn't part of Jamoma.;#P connect 2 0 5 0;#P fasten 5 1 1 0 115 98 74 98;#P connect 4 0 3 0;#P connect 1 0 4 2;#P connect 1 1 4 4;#P connect 1 2 4 6;#P connect 1 3 4 8;#P connect 1 4 4 10;#P pop;#P hidden newobj 16 321 66 196617 p formatting;#N vpatcher 299 219 791 476;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P comment 257 58 181 196617 Formatting the messages so that multislider can understand them \, by adding the slider number in front of each value in the message.;#P window linecount 1;#P newex 69 76 51 196617 zl slice 1;#P newex 69 144 144 196617 pak set 1 0 2 0 3 0 4 0 5 0;#P outlet 69 183 15 0;#P inlet 69 51 15 0;#P window linecount 0;#P newex 69 103 85 196617 unpack 0 0 0 0 0;#P comment 256 128 181 196617 not very elegant \, but necessary since <interleave> isn't part of Jamoma.;#P connect 2 0 5 0;#P fasten 5 1 1 0 115 98 74 98;#P connect 4 0 3 0;#P connect 1 0 4 2;#P connect 1 1 4 4;#P connect 1 2 4 6;#P connect 1 3 4 8;#P connect 1 4 4 10;#P pop;#P hidden newobj 17 227 66 196617 p formatting;#P hidden message 197 158 83 196617 setminmax 0 \$1;#P hidden newex 16 261 56 196617 pvar right;#P window linecount 2;#P hidden newex 16 286 377 196617 jcom.parameter right @type msg_list @repetitions 0  @range 0 10000 @clipmode low @description "Delay time in milliseconds for right channel.";#P objectname right[1];#P user multiSlider 94 22 87 30 0. 100000. 5 2921 47 0 4 2 0 0 0;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname right;#P user multiSlider 4 22 87 30 0. 100000. 5 2921 47 0 4 2 0 0 0;#M frgb 0 0 0;#M brgb 255 255 255;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname left;#P number 206 24 50 9 0 0 8225 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname max-delay;#P window linecount 1;#P comment 184 25 29 196617 max;#B frgb 172 172 172;#P hidden message 115 470 125 196617 /documentation/generate;#P hidden newex 17 169 50 196617 pvar left;#P window linecount 2;#P hidden newex 17 191 368 196617 jcom.parameter left @type msg_list @repetitions 0  @range 0 10000 @clipmode low @description "Delay time in milliseconds for left channel.";#P objectname left[1];#P window linecount 1;#P hidden newex 16 99 82 196617 pvar max-delay;#P window linecount 2;#P hidden newex 15 497 272 196617 jcom.hub jmod.multidelay~ @size 1U-half @module_type audio @description "Sample-accurate stereo multidelay.";#P objectname jcom.hub;#P window linecount 1;#P hidden comment 29 471 79 196617 command input;#P hidden inlet 15 472 13 0;#P hidden message 243 470 37 196617 /init;#P hidden inlet 351 433 13 0;#P hidden outlet 304 599 13 0;#P window linecount 2;#P hidden newex 16 122 372 196617 jcom.parameter maxdelay @type msg_int @ramp.drive scheduler @repetitions 0 @range 0 10000 @clipmode low @description "Max delay time in milliseconds.";#P objectname maxdelay;#P hidden inlet 492 433 13 0;#P window linecount 1;#P hidden newex 304 546 104 196617 jalg.multidelay~.mxt;#P hidden comment 386 433 113 196617 ----signal inputs----;#P hidden outlet 15 538 13 0;#P hidden outlet 351 599 13 0;#P hidden comment 304 614 101 196617 ---signal outputs---;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden connect 24 0 20 0;#P hidden fasten 10 0 13 0 248 493 20 493;#P hidden fasten 17 0 13 0 120 490 20 490;#P hidden connect 11 0 13 0;#P hidden connect 13 0 3 0;#P hidden fasten 7 0 14 0 21 158 11 158 11 92 21 92;#P hidden connect 14 0 7 0;#P hidden fasten 26 0 23 0 21 345 11 345 11 255 21 255;#P hidden connect 23 0 22 0;#P hidden connect 22 0 26 0;#P hidden fasten 29 0 30 0 21 416 11 416 11 348 21 348;#P hidden connect 30 0 29 0;#P hidden fasten 25 0 16 0 22 250 11 250 11 165 22 165;#P hidden connect 16 0 15 0;#P hidden connect 15 0 25 0;#P hidden connect 24 0 21 0;#P hidden connect 7 1 24 0;#P hidden fasten 33 0 5 0 450 531 309 531;#P hidden fasten 34 0 5 0 583 531 309 531;#P hidden connect 5 0 32 0;#P hidden connect 32 0 8 0;#P hidden connect 9 0 31 0;#P hidden connect 31 0 5 1;#P hidden connect 32 1 2 0;#P hidden connect 31 1 5 2;#P hidden connect 5 1 32 1;#P hidden connect 31 2 33 0;#P hidden connect 6 0 31 1;#P hidden connect 33 1 34 0;#P pop;