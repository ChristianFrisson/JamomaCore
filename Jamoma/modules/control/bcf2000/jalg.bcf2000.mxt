max v2;#N vpatcher 25 65 554 540;#P window setfont "Sans Serif" 9.;#P hidden newex 329 256 92 196617 pvar DialPush4;#P user jsui 6 120 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname DialPush4;#P user multiSlider 17 177 16 131 0. 127. 1 2665 47 0 0 4 0 40 0;#M frgb 255 255 255;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname Fader;#P user jsui 7 154 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Key2;#P user jsui 7 143 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Key1;#P user multiSlider 7 75 36 10 0. 127. 1 2664 47 0 0 2 0 0 0;#M frgb 198 198 198;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname Dial3;#P user jsui 7 86 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname DialPush3;#P user multiSlider 7 109 36 10 0. 127. 1 2664 47 0 0 2 0 0 0;#M frgb 198 198 198;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname Dial4;#P user jsui 7 52 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname DialPush2;#P user multiSlider 7 41 36 10 0. 127. 1 2664 47 0 0 2 0 0 0;#M frgb 198 198 198;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname Dial2;#P user jsui 7 18 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname DialPush1;#P user multiSlider 7 7 36 10 0. 127. 1 2664 47 0 0 2 0 0 0;#M frgb 198 198 198;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname Dial1;#P user panel 0 0 51 316;#X brgb 48 48 48;#X frgb 132 132 132;#X border 1;#X rounded 0;#X shadow 0;#X done;#N vpatcher 10 59 556 393;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 189 201 38 196617 * 127;#P newex 69 128 30 196617 > 64;#P window linecount 1;#P newex 446 49 31 196617 + 72;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P newex 203 245 70 196617 r $1_outport;#P newex 69 27 64 196617 r $1_inport;#P newex 189 272 60 196617 ctlout 73 1;#P newex 69 103 54 196617 ctlin 73 1;#P window linecount 2;#P newex 46 158 297 196617 jcom.parameter $2/key/lower @type msg_toggle @repetitions 1  @priority 1 @description "Upper key.";#P objectname $2/key/lower;#P outlet 46 192 15 0;#P connect 6 0 1 0;#P connect 10 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 10 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 11 0;#P connect 5 0 3 0;#P connect 11 0 3 0;#P fasten 9 0 3 1 451 266 219 266;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 364 69 196617 p Key_Lower;#P objectname "sub patch[10]";#P hidden newex 329 385 57 196617 pvar Key2;#N vpatcher 10 59 566 409;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 189 208 38 196617 * 127;#P newex 69 129 30 196617 > 64;#P window linecount 1;#P newex 446 49 31 196617 + 64;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P newex 203 246 70 196617 r $1_outport;#P newex 69 27 64 196617 r $1_inport;#P newex 189 273 60 196617 ctlout 64 1;#P newex 69 103 54 196617 ctlin 64 1;#P window linecount 2;#P newex 46 166 296 196617 jcom.parameter $2/key/upper @type msg_toggle @repetitions 1  @priority 1 @description "Upper key.";#P objectname $2/key/upper;#P outlet 46 200 15 0;#P connect 6 0 1 0;#P connect 10 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 10 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 11 0;#P connect 5 0 3 0;#P connect 11 0 3 0;#P fasten 9 0 3 1 451 267 219 267;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 309 67 196617 p Key_Upper;#P objectname "sub patch[9]";#P hidden newex 329 330 57 196617 pvar Key1;#N vpatcher 10 59 569 414;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 221 216 38 196617 * 127;#P newex 69 131 30 196617 > 64;#P window linecount 1;#P newex 446 49 31 196617 + 56;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P newex 235 254 70 196617 r $1_outport;#P newex 69 27 64 196617 r $1_inport;#P newex 221 281 60 196617 ctlout 57 1;#P newex 69 103 54 196617 ctlin 57 1;#P window linecount 2;#P newex 46 172 361 196617 jcom.parameter $2/push_encoder/4/press @type msg_toggle @repetitions 1  @priority 1 @description "Push encoder pressed.";#P objectname $2/push_encoder/4/press;#P outlet 46 206 15 0;#P connect 6 0 1 0;#P connect 10 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 10 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 11 0;#P connect 5 0 3 0;#P connect 11 0 3 0;#P fasten 9 0 3 1 451 277 251 277;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 235 123 196617 p Push_encoder_press_4;#P objectname "sub patch[8]";#N vpatcher 10 59 562 414;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 221 216 38 196617 * 127;#P window linecount 1;#P newex 69 130 30 196617 > 64;#P newex 446 49 31 196617 + 48;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P newex 235 264 70 196617 r $1_outport;#P newex 69 27 64 196617 r $1_inport;#P newex 221 291 60 196617 ctlout 49 1;#P newex 69 103 54 196617 ctlin 49 1;#P window linecount 2;#P newex 46 168 361 196617 jcom.parameter $2/push_encoder/3/press @type msg_toggle @repetitions 1  @priority 1 @description "Push encoder pressed.";#P objectname $2/push_encoder/3/press;#P outlet 46 202 15 0;#P connect 6 0 1 0;#P connect 10 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 10 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 11 0;#P connect 5 0 3 0;#P connect 11 0 3 0;#P fasten 9 0 3 1 451 285 251 285;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 180 123 196617 p Push_encoder_press_3;#P objectname "sub patch[7]";#P hidden newex 329 201 78 196617 pvar DialPush3;#N vpatcher 10 59 570 391;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 69 131 30 196617 > 64;#P newex 217 205 38 196617 * 127;#P newex 446 49 31 196617 + 40;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P newex 231 243 70 196617 r $1_outport;#P newex 69 27 64 196617 r $1_inport;#P newex 217 270 60 196617 ctlout 41 1;#P newex 69 103 54 196617 ctlin 41 1;#P window linecount 2;#P newex 46 164 353 196617 jcom.parameter $2/push_encoder/2/press @type msg_toggle @repetitions 1  @priority 1 @description "Push encoder pressed.";#P objectname $2/push_encoder/2/press;#P outlet 46 198 15 0;#P connect 6 0 1 0;#P connect 11 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 11 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 10 0;#P connect 5 0 3 0;#P connect 10 0 3 0;#P fasten 9 0 3 1 451 264 247 264;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 125 123 196617 p Push_encoder_press_2;#P objectname "sub patch[6]";#P hidden newex 329 146 78 196617 pvar DialPush2;#N vpatcher 10 59 565 411;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 217 219 38 196617 * 127;#P newex 69 130 30 196617 > 64;#P newex 446 49 31 196617 + 32;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 231 251 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 217 278 60 196617 ctlout 33 1;#P newex 69 103 54 196617 ctlin 33 1;#P window linecount 2;#P newex 46 179 353 196617 jcom.parameter $2/push_encoder/1/press @type msg_toggle @repetitions 1  @priority 1 @description "Push encoder pressed.";#P objectname $2/push_encoder/1/press;#P outlet 46 213 15 0;#P connect 6 0 1 0;#P connect 10 0 1 0;#P connect 1 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P connect 2 0 10 0;#P fasten 9 0 8 0 451 73 101 73;#P connect 1 1 11 0;#P connect 5 0 3 0;#P connect 11 0 3 0;#P fasten 9 0 3 1 451 273 247 273;#P connect 7 0 9 0;#P pop;#P hidden newobj 329 70 123 196617 p Push_encoder_press_1;#P objectname "sub patch[5]";#P hidden newex 329 91 78 196617 pvar DialPush1;#N vpatcher 10 59 554 312;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 188 71 196617 prepend set 1;#P newex 46 165 51 196617 route set;#P window linecount 0;#P newex 446 49 31 196617 + 24;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 256 166 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 242 193 60 196617 ctlout 25 1;#P newex 69 103 54 196617 ctlin 25 1;#P window linecount 2;#P newex 46 127 403 196617 jcom.parameter $2/push_encoder/4/turn @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description "Push encoder turn.";#P objectname $2/push_encoder/4/turn;#P outlet 46 218 15 0;#P connect 2 0 1 0;#P connect 6 0 1 0;#P connect 1 0 10 0;#P connect 10 0 11 0;#P connect 11 0 0 0;#P connect 4 0 2 0;#P connect 8 0 2 0;#P fasten 9 0 8 0 451 71 101 71;#P connect 5 0 3 0;#P connect 1 1 3 0;#P fasten 9 0 3 1 451 189 272 189;#P connect 7 0 9 0;#P pop;#P hidden newobj 188 235 117 196617 p Push_encoder_turn_4;#P objectname "sub patch[4]";#P hidden newex 188 256 57 196617 pvar Dial4;#N vpatcher 10 59 554 312;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 189 71 196617 prepend set 1;#P newex 46 166 51 196617 route set;#P window linecount 0;#P newex 446 49 31 196617 + 16;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 256 166 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 242 193 60 196617 ctlout 17 1;#P newex 69 103 54 196617 ctlin 17 1;#P window linecount 2;#P newex 46 127 403 196617 jcom.parameter $2/push_encoder/3/turn @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description "Push encoder turn.";#P objectname $2/push_encoder/3/turn;#P outlet 46 215 15 0;#P connect 6 0 1 0;#P connect 2 0 1 0;#P connect 1 0 10 0;#P connect 10 0 11 0;#P connect 11 0 0 0;#P connect 4 0 2 0;#P connect 8 0 2 0;#P fasten 9 0 8 0 451 71 101 71;#P connect 5 0 3 0;#P connect 1 1 3 0;#P fasten 9 0 3 1 451 189 272 189;#P connect 7 0 9 0;#P pop;#P hidden newobj 188 180 117 196617 p Push_encoder_turn_3;#P objectname "sub patch[3]";#P hidden newex 188 201 57 196617 pvar Dial3;#N vpatcher 10 59 554 312;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 191 71 196617 prepend set 1;#P newex 46 168 51 196617 route set;#P window linecount 0;#P newex 446 49 27 196617 + 8;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 256 166 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 242 193 54 196617 ctlout 9 1;#P newex 69 103 48 196617 ctlin 9 1;#P window linecount 2;#P newex 46 127 403 196617 jcom.parameter $2/push_encoder/2/turn @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description "Push encoder turn.";#P objectname $2/push_encoder/2/turn;#P outlet 46 222 15 0;#P connect 6 0 1 0;#P connect 2 0 1 0;#P connect 1 0 10 0;#P connect 10 0 11 0;#P connect 11 0 0 0;#P connect 4 0 2 0;#P connect 8 0 2 0;#P fasten 9 0 8 0 451 71 101 71;#P connect 5 0 3 0;#P connect 1 1 3 0;#P fasten 9 0 3 1 451 189 269 189;#P connect 7 0 9 0;#P pop;#P hidden newobj 188 125 117 196617 p Push_encoder_turn_2;#P objectname "sub patch[2]";#P hidden newex 188 146 57 196617 pvar Dial2;#N vpatcher 10 59 554 312;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 188 71 196617 prepend set 1;#P newex 46 165 51 196617 route set;#P window linecount 0;#P newex 446 49 27 196617 + 0;#P newex 96 76 62 196617 prepend set;#P newex 446 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 256 166 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 242 193 54 196617 ctlout 1 1;#P newex 69 103 48 196617 ctlin 1 1;#P window linecount 2;#P newex 46 127 403 196617 jcom.parameter $2/push_encoder/1/turn @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description "Push encoder turn.";#P objectname $2/push_encoder/1/turn;#P outlet 46 215 15 0;#P connect 2 0 1 0;#P connect 6 0 1 0;#P connect 1 0 10 0;#P connect 10 0 11 0;#P connect 11 0 0 0;#P connect 8 0 2 0;#P connect 4 0 2 0;#P fasten 9 0 8 0 451 71 101 71;#P connect 5 0 3 0;#P connect 1 1 3 0;#P fasten 9 0 3 1 451 189 269 189;#P connect 7 0 9 0;#P pop;#P hidden newobj 188 70 117 196617 p Push_encoder_turn_1;#P objectname "sub patch[1]";#N vpatcher 10 59 555 345;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 187 71 196617 prepend set 1;#P window linecount 0;#P newex 46 164 51 196617 route set;#P newex 424 49 31 196617 + 80;#P newex 96 76 62 196617 prepend set;#P newex 424 28 67 196617 loadmess $2;#P inlet 46 27 15 0;#P window linecount 1;#P newex 223 166 70 196617 r $1_outport;#P window linecount 0;#P newex 69 27 64 196617 r $1_inport;#P window linecount 1;#P newex 209 193 60 196617 ctlout 81 1;#P newex 69 103 54 196617 ctlin 81 1;#P window linecount 2;#P newex 46 127 336 196617 jcom.parameter $2/fader @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp/drive scheduler @priority 1 @description "Fader.";#P objectname $2/fader;#P outlet 46 220 15 0;#P connect 2 0 1 0;#P connect 6 0 1 0;#P connect 1 0 10 0;#P connect 10 0 11 0;#P connect 11 0 0 0;#P connect 4 0 2 0;#P connect 8 0 2 0;#P fasten 9 0 8 0 429 71 101 71;#P connect 5 0 3 0;#P connect 1 1 3 0;#P fasten 9 0 3 1 429 189 239 189;#P connect 7 0 9 0;#P pop;#P hidden newobj 188 298 43 196617 p Fader;#P objectname "sub patch";#P hidden newex 188 320 59 196617 pvar Fader;#P hidden newex 188 91 57 196617 pvar Dial1;#P comment 15 355 100 196617 DIM: 51 316;#P hidden fasten 1 0 4 0 193 113 182 113 182 111 182 110 182 63 193 63;#P hidden connect 4 0 1 0;#P hidden fasten 5 0 6 0 193 168 182 168 182 166 182 165 182 118 193 118;#P hidden connect 6 0 5 0;#P hidden fasten 7 0 8 0 193 223 182 223 182 221 182 220 182 173 193 173;#P hidden connect 8 0 7 0;#P hidden fasten 9 0 10 0 193 278 182 278 182 276 182 275 182 228 193 228;#P hidden connect 10 0 9 0;#P hidden fasten 2 0 3 0 193 340 179 340 179 292 193 292;#P hidden connect 3 0 2 0;#P hidden fasten 11 0 12 0 334 113 323 113 323 111 323 110 323 63 334 63;#P hidden connect 12 0 11 0;#P hidden fasten 13 0 14 0 334 168 323 168 323 166 323 165 323 118 334 118;#P hidden connect 14 0 13 0;#P hidden fasten 15 0 16 0 334 223 323 223 323 221 323 220 323 173 334 173;#P hidden connect 16 0 15 0;#P hidden fasten 34 0 17 0 334 279 324 279 324 231 334 231;#P hidden connect 17 0 34 0;#P hidden fasten 18 0 19 0 334 352 323 352 323 350 323 349 323 302 334 302;#P hidden connect 19 0 18 0;#P hidden fasten 20 0 21 0 334 407 323 407 323 405 323 404 323 357 334 357;#P hidden connect 21 0 20 0;#P pop;