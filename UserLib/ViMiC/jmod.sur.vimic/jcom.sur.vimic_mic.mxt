max v2;#N vpatcher 38 44 1244 781;#P origin -95 -1199;#P user jsui 0 1 25 14 1 0 0 jcom.jsui_texttoggle.js off on 68 68 68 225 225 225 121 255 15;#P objectname ACTIVE;#P window setfont "Sans Serif" 9.;#P message 921 115 59 196617 0. \, \$1 100;#P newex 921 132 40 196617 line 0.;#P objectname storage;#P newex 921 95 49 196617 float 1.;#P newex 942 58 94 196617 if $f1 > 0 then $f1;#P objectname if_store;#P button 1260 225 15 0;#P message 1216 225 23 196617 0.;#P objectname zero;#P newex 1245 187 41 196617 sel 0 1;#P objectname sel_active;#P newex 1327 482 27 196617 * 3;#P window linecount 3;#P hidden message 1123 548 269 196617 script hidden connect pvar_aktive 0 parameter_aktive 0 \, script hidden connect parameter_aktive 0 pvar_aktive 0 \, script hidden connect parameter_aktive 1 sel_active 0;#P window linecount 1;#P hidden newex 1123 473 27 196617 t b i;#P window linecount 3;#P hidden newex 1140 502 386 196617 sprintf script new parameter_aktive newex 750 180 270 196617 jcom.parameter microphones/%ld/active @type msg_int @range 0 1 @clipmode both @priority %ld @repetitions 0 @description "active state of the %ldth microphone. (like mute)";#P window linecount 1;#P newex 782 153 67 196617 pvar ACTIVE;#P objectname pvar_aktive;#P message 768 104 30 196617 bang;#P message 712 101 53 196617 defeat \$1;#P inlet 711 19 15 0;#P newex 711 79 144 196617 jcom.oscroute /freeze /clear;#P user jcom.meter~ 383 4 66 6;#P inlet 679 10 15 0;#P window linecount 5;#P hidden message 1117 406 244 196617 script hidden connect gain_mic 0 parameter_gain 0 \, script hidden connect parameter_gain 0 gain_mic 0 \, script hidden connect parameter_gain 1 if_store 0 \, script hidden connect storage 0 parameter_gain 0 \, script hidden connect zero 0 parameter_gain 0;#P window linecount 1;#P hidden newex 1284 337 27 196617 * 3;#P hidden newex 1098 302 27 196617 t b i;#P window linecount 3;#P hidden newex 1109 360 371 196617 sprintf script new parameter_gain newex 750 70 270 196617 jcom.parameter microphones/%ld/gain @type msg_float @range 0. 1. @clipmode both @priority %ld @repetitions 0 @description "Gain value of the %ldth microphone.";#P window linecount 1;#N vpatcher 10 59 610 459;#P outlet 123 260 15 0;#P inlet 211 54 15 0;#P window setfont "Sans Serif" 9.;#P hidden message 375 121 64 196617 rgb2 66 0 2;#P hidden message 27 117 94 196617 rgb2 164 153 128;#P hidden message 253 117 92 196617 frgb 181 181 181;#P hidden message 137 120 93 196617 brgb 100 100 100;#P outlet 387 261 15 0;#P connect 5 0 3 0;#P connect 2 0 6 0;#P connect 3 0 6 0;#P connect 1 0 6 0;#P connect 5 0 1 0;#P connect 5 0 2 0;#P connect 5 0 4 0;#P connect 4 0 0 0;#P connect 1 0 0 0;#P connect 2 0 0 0;#P pop;#P hidden newobj 347 68 46 196617 p colors;#N thispatcher;#Q end;#P hidden newobj 349 112 61 196617 thispatcher;#N vpatcher 188 431 335 589;#P button 41 33 15 0;#P window setfont "Sans Serif" 9.;#P newex 41 54 50 196617 deferlow;#P outlet 41 103 15 0;#P inlet 41 15 15 0;#P connect 0 0 3 0;#P connect 3 0 2 0;#P pop;#P hidden newobj 349 89 14 196617 p;#P hidden newex 345 24 48 196617 loadbang;#P hidden button 404 26 15 0;#P hidden newex 346 45 50 196617 deferlow;#P window setfont "Sans Serif" 12.;#P comment 332 -1 13 196620 ||;#B frgb 198 0 65;#P bpatcher 345 1 36 13 0 0 jcom.numberslider.mxt 0 1. 0. 1. @size 40 14;#P objectname gain_mic;#P window setfont "Sans Serif" 9.;#P flonum 167 0 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Z;#P flonum 131 0 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Y;#P bpatcher 296 1 36 13 0 0 jcom.numberslider.mxt 0 0. 0. 1. @size 40 14 @frgb 181 181 181;#P objectname dir_mic;#P window setfont "Sans Serif" 12.;#P comment 279 -1 13 196620 ||;#B frgb 198 0 65;#P window setfont "Sans Serif" 9.;#P hidden newex 936 341 27 196617 * 3;#P hidden newex 765 314 27 196617 t b i;#P window linecount 4;#P hidden newex 782 358 317 196617 sprintf script new parameter_directivity newex 950 70 270 196617 jcom.parameter microphones/%ld/directivity/ratio @type msg_float @range 0. 1. @clipmode both @priority %ld @repetitions 0 @description "Directivity value of the %ldth microphone.";#P window linecount 2;#P hidden message 773 414 270 196617 script hidden connect dir_mic 0 parameter_directivity 0 \, script hidden connect parameter_directivity 0 dir_mic 0;#P window linecount 1;#P message 80 266 14 196617 1;#P hidden newex 561 349 27 196617 * 3;#P hidden newex 388 330 27 196617 t b i;#P window linecount 3;#P hidden newex 405 368 362 196617 sprintf script new parameter2 newex 830 245 270 196617 jcom.parameter microphones/%ld/angle @type msg_list @priority %ld @repetitions 0 @description "angular point of view  of %ldth microphone [azimut elevation].";#P window linecount 2;#P hidden message 388 415 235 196617 script connect list2parameter2 10 parameter2 0 \, script connect parameter2 0 list2parameter2 10;#P window linecount 1;#P newex 684 225 144 196617 jcom.list2parameter 2;#P objectname list2parameter2;#P hidden newex 719 198 39 196617 pvar E;#P objectname pvar_E;#P hidden newex 675 197 41 196617 pvar A;#P objectname pvar_A;#P flonum 248 0 32 9 -90. 90. 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname E;#P flonum 215 0 33 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname A;#P window setfont "Sans Serif" 12.;#P comment 202 -1 13 196620 ||;#B frgb 198 0 65;#P user radiogroup 15 56 34 16;#X size 1;#X offset 29;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 0;#X done;#P objectname ACTIVE1;#P window setfont "Sans Serif" 9.;#P hidden newex 184 342 83 196617 expr ($f1*2)+1;#P newex 191 182 166 196617 jcom.list2parameter.mxt 3;#P objectname list2parameter;#P hidden newex 7 321 31 196617 t b i;#P hidden newex 7 264 67 196617 loadmess $1;#P hidden newex 7 286 96 196617 if $i1 != 0 then $i1;#P window linecount 3;#P hidden newex 28 363 351 196617 sprintf script new parameter newex 391 200 270 196617 jcom.parameter microphones/%ld/position @type msg_list @priority %ld @repetitions 0 @description "Position of %ldth microphone in xyz coodinate.";#P window linecount 2;#P hidden message 7 419 223 196617 script connect list2parameter 10 parameter 0 \, script connect parameter 0 list2parameter 10;#P window linecount 1;#N thispatcher;#Q end;#P hidden newobj 654 590 61 196617 thispatcher;#P newex 280 152 39 196617 pvar Z;#P objectname pvar_Z;#P newex 234 151 40 196617 pvar Y;#P objectname pvar_Y;#P newex 192 151 40 196617 pvar X;#P objectname pvar_X;#P flonum 95 0 35 9 0 0 8224 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname X;#P comment 25 2 72 196617 microphone $1;#B frgb 172 172 172;#P user panel -1 -1 452 18;#X brgb 80 80 80;#X frgb 255 255 255;#X border 1;#X rounded 0;#X shadow 0;#X done;#P fasten 25 0 9 0 85 283 12 283;#P hidden connect 10 0 9 0;#P hidden connect 9 0 11 0;#P connect 11 0 7 0;#P fasten 11 1 8 0 33 350 33 350;#P fasten 11 1 13 0 33 339 189 339;#P connect 3 0 12 0;#P fasten 12 0 3 0 196 206 182 206 182 150 197 150;#P hidden connect 13 0 8 1;#P connect 4 0 12 1;#P connect 5 0 12 2;#P fasten 12 1 4 0 211 210 177 210 177 144 239 144;#P fasten 12 2 5 0 226 214 172 214 172 139 285 139;#P hidden connect 41 0 31 0;#P hidden connect 41 1 34 0;#P hidden connect 38 0 36 0;#P hidden connect 37 0 36 0;#P hidden connect 36 0 41 0;#P hidden connect 41 0 39 0;#P hidden connect 41 1 39 0;#P hidden connect 39 0 40 0;#P fasten 11 1 8 2 33 338 373 338;#P hidden connect 46 0 47 0;#P lcolor 6;#P hidden connect 50 0 47 0;#P hidden connect 51 0 47 0;#P fasten 9 0 23 0 12 308 393 308;#P fasten 23 0 21 0 393 415 393 415;#P connect 23 1 22 0;#P fasten 23 1 24 0 410 345 566 345;#P hidden connect 24 0 22 1;#P fasten 21 0 6 0 393 467 659 467;#P hidden fasten 7 0 6 0 12 462 659 462;#P connect 26 0 6 0;#P fasten 22 0 6 0 410 412 659 412;#P hidden fasten 8 0 6 0 33 408 659 408;#P fasten 45 0 6 0 1122 466 659 466;#P fasten 42 0 6 0 1114 452 659 452;#P connect 27 0 6 0;#P connect 55 0 6 0;#P connect 53 0 6 0;#P fasten 20 0 18 0 689 250 671 250 671 193 680 193;#P fasten 18 0 20 0 680 222 689 222;#P fasten 19 0 20 1 724 218 702 218;#P connect 49 0 48 0;#P connect 48 0 50 0;#P fasten 20 1 19 0 702 257 668 257 668 186 724 186;#P fasten 23 1 22 2 410 345 762 345;#P fasten 9 0 28 0 12 308 770 308;#P connect 48 1 51 0;#P connect 28 0 26 0;#P fasten 28 1 27 0 787 348 787 348;#P connect 59 0 61 0;#P connect 61 0 63 0;#P connect 63 0 62 0;#P hidden connect 29 0 27 1;#P fasten 28 1 29 0 787 338 941 338;#P connect 60 0 61 1;#P fasten 28 1 27 2 787 338 1093 338;#P connect 9 0 43 0;#P connect 43 1 42 0;#P connect 43 0 45 0;#P connect 9 0 54 0;#P connect 54 0 55 0;#P connect 54 1 53 0;#P connect 57 0 58 0;#P connect 57 1 59 0;#P fasten 43 1 44 0 1120 327 1289 327;#P connect 44 0 42 1;#P connect 54 1 56 0;#P connect 56 0 53 1;#P fasten 43 1 42 2 1120 326 1474 326;#P connect 54 1 53 2;#P pop;