max v2;
#N vpatcher 227 44 805 782;
#P origin 0 -1025;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#N vpatcher 168 44 736 565;
#P origin 0 9;
#P window setfont "Sans Serif" 9.;
#P window linecount 5;
#P user com 335 301 210 196617 101;
#K set 0 21618 26981 25632 29807 8297 28016 27749 28005 28276 8289 8307 31091 29797 27936 30568 25970 25888 29800 25888 25461 29298 25966 29728 28518 26227 25972 8289 28260 8314 28527 27936 27749 30309 27680 30575 30060 25632 25189 8306 25965 25965 25189 29285 25632 30568 25966 8308 26725 8301 28533 29541 8297 29472 30067 25956 8302 25976 29728 29801 28005 11808 18287 29728 29551 28005 8294 25957 25698 24931 27424 28786 28514 27749 28019 11296 29551 8265 8308 28527 27424 26996 8303 30068 11296 25205 29728 26996 8311 28533 27748 8290 25888 24864 28265 25445 8294 25953 29813 29285 11822;
#K set 100 11808;
#K end;
#P window linecount 0;
#P message 226 358 70 196617 /offset_y \$1;
#P message 133 358 70 196617 /offset_x \$1;
#P message 58 358 54 196617 /zoom \$1;
#P window linecount 1;
#N vpatcher 30 89 301 310;
#P outlet 110 89 15 0;
#P inlet 110 47 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 226 296 37 196617 p thru;
#N vpatcher 30 89 301 310;
#P outlet 110 89 15 0;
#P inlet 110 47 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 133 296 37 196617 p thru;
#N vpatcher 30 89 301 310;
#P outlet 110 89 15 0;
#P inlet 110 47 15 0;
#P connect 0 0 1 0;
#P pop;
#P newobj 58 296 37 196617 p thru;
#P inlet 82 21 15 0;
#P outlet 133 462 15 0;
#P window linecount 0;
#P newex 141 120 21 196617 t 1;
#P newex 141 96 32 196617 sel 0;
#P newex 103 120 21 196617 t 0;
#P newex 69 159 47 196617 gate 1 1;
#P newex 253 206 73 196617 clip -200 200;
#P newex 253 232 104 196617 scale -200 200 2. 0.;
#P newex 173 181 94 196617 unpack 0 0 0 0 0 0;
#P window linecount 3;
#P user com 192 98 97 196617 26;
#K set 0 18025 28260 8291 26721 28263 25888 26990 8301 28533 29541 8304 28531 26996 26991 28192 29807 8291 28526 29810 28524 8308 26725 8303 26214 29541 29742;
#K end;
#P window linecount 1;
#P newex 69 182 94 196617 unpack 0 0 0 0 0 0;
#P newex 82 96 52 196617 route 2 4;
#P newex 82 73 105 196617 jcom.pwindow.mouse;
#P connect 5 0 13 0;
#P connect 13 0 16 0;
#P connect 8 0 7 0;
#P connect 10 0 7 0;
#P connect 7 0 2 0;
#P connect 12 0 0 0;
#P connect 0 0 1 0;
#P connect 1 1 8 0;
#P connect 1 0 7 1;
#P connect 2 4 14 0;
#P connect 14 0 17 0;
#P connect 16 0 11 0;
#P connect 17 0 11 0;
#P connect 18 0 11 0;
#P connect 0 1 9 0;
#P connect 9 0 10 0;
#P connect 1 1 4 0;
#P connect 2 5 15 0;
#P connect 15 0 18 0;
#P connect 4 5 6 0;
#P connect 6 0 5 0;
#P pop;
#P hidden newobj 21 198 73 196617 p mouse-stuff;
#P hidden newex 21 177 163 196617 jcom.oscroute /preview_dumpout;
#P objectname jcom.hub[1];
#P hidden newex 397 253 49 196617 jcom.out;
#P hidden inlet 397 136 13 0;
#P hidden comment 411 136 65 196617 VIDEO INPUT;
#P hidden newex 397 154 85 196617 jcom.in 1;
#P hidden newex 188 198 54 196617 pcontrol;
#P hidden newex 188 177 85 196617 jcom.pass open;
#P hidden newex 84 263 202 196617 jcom.oscroute /zoom /offset_x /offset_y;
#P hidden newex 16 654 57 196617 pvar angle;
#P window linecount 2;
#P hidden newex 16 676 329 196617 jcom.parameter angle @type msg_int @ramp/drive scheduler @repetitions 0 @range 0 90 @clipmode none @description "Rotate image - in degrees";
#P objectname angle[1];
#P window linecount 1;
#P hidden newex 16 409 72 196617 pvar offset-Y;
#P window linecount 2;
#P hidden newex 16 433 370 196617 jcom.parameter offset_y @type msg_int @ramp/drive scheduler @repetitions 0 @range -1000 1000 @clipmode none @description "Offset image in Y-direction";
#P objectname offset_y;
#P window linecount 1;
#P hidden newex 16 540 68 196617 pvar rotate2;
#P hidden newex 16 562 337 196617 jcom.parameter rotate2 @type msg_toggle @description "Flip vertical";
#P objectname rotate2[1];
#P number 159 40 30 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;
#P objectname angle;
#P comment 130 42 33 196617 angle;
#B frgb 149 149 149;
#P user radiogroup 179 21 18 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname mirror;
#P comment 145 23 41 196617 mirror;
#B frgb 149 149 149;
#P user radiogroup 127 21 18 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname rotate2;
#P user radiogroup 116 21 18 16;
#X size 1;
#X offset 16;
#X inactive 0;
#X itemtype 1;
#X flagmode 0;
#X set 0;
#X done;
#P objectname rotate1;
#P comment 84 23 38 196617 rotate;
#B frgb 149 149 149;
#P number 88 40 30 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;
#P objectname offset-Y;
#P hidden newex 16 341 72 196617 pvar offset-X;
#P window linecount 2;
#P hidden newex 16 365 370 196617 jcom.parameter offset_x @type msg_int @ramp/drive scheduler @repetitions 0 @range -1000 1000 @clipmode none @description "Offset image in X-direction";
#P objectname offset_x;
#P window linecount 1;
#P comment 79 42 14 196617 Y;
#B frgb 149 149 149;
#P hidden newex 16 596 65 196617 pvar mirror;
#P hidden newex 16 618 339 196617 jcom.parameter mirror @type msg_toggle @description "Mirror image";
#P objectname mirror[1];
#P number 44 40 30 9 0 0 8224 3 181 181 181 221 221 221 255 255 255 0 0 0;
#P objectname offset-X;
#P flonum 32 22 35 9 0. 0 8225 3 181 181 181 221 221 221 255 255 255 0 0 0;
#P objectname zoom;
#P comment 4 42 48 196617 offset X;
#B frgb 149 149 149;
#P comment 4 24 33 196617 zoom;
#B frgb 149 149 149;
#P hidden newex 16 480 68 196617 pvar rotate1;
#P hidden message 99 86 125 196617 /documentation/generate;
#B color 3;
#P hidden newex 16 502 346 196617 jcom.parameter rotate1 @type msg_toggle @description "Flip horizontal";
#P objectname rotate1[1];
#P window linecount 2;
#P hidden newex 16 299 318 196617 jcom.parameter zoom @type msg_float @ramp/drive scheduler @repetitions 0 @range 0. 10. @clipmode none @description "Zoom in the image";
#P objectname zoom[1];
#P window linecount 1;
#P hidden newex 16 276 57 196617 pvar zoom;
#P hidden comment 412 279 75 196617 VIDEO OUTPUT;
#P hidden outlet 397 279 13 0;
#P hidden newex 188 223 219 196617 jalg.orsize%.mxt;
#P hidden comment 15 84 79 196617 command input;
#P window linecount 2;
#P hidden newex 1 109 385 196617 jcom.hub jmod.orsize% @size 1U-half @module_type video @algorithm_type jitter @description "Orientation and size of video";
#P objectname jcom.hub;
#P hidden outlet 1 171 13 0;
#P hidden inlet 1 84 13 0;
#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui;
#P hidden connect 1 0 3 0;
#P hidden fasten 11 0 3 0 104 105 6 105;
#P hidden connect 3 0 2 0;
#P hidden fasten 9 0 8 0 21 331 11 331 11 272 21 272;
#P hidden fasten 36 0 9 0 89 295 21 295;
#P hidden connect 8 0 9 0;
#P hidden fasten 20 0 21 0 21 400 10 400 10 337 21 337;
#P hidden fasten 36 1 20 0 153 361 21 361;
#P hidden connect 21 0 20 0;
#P hidden fasten 32 0 33 0 21 465 10 465 10 406 21 406;
#P hidden fasten 36 2 32 0 217 429 21 429;
#P hidden connect 33 0 32 0;
#P hidden fasten 10 0 12 0 21 523 10 523 10 474 21 474;
#P hidden connect 12 0 10 0;
#P hidden fasten 30 0 31 0 21 583 10 583 10 534 21 534;
#P hidden connect 31 0 30 0;
#P hidden fasten 17 0 18 0 21 639 10 639 10 590 21 590;
#P hidden connect 18 0 17 0;
#P hidden fasten 34 0 35 0 21 701 10 701 10 645 21 645;
#P hidden connect 35 0 34 0;
#P hidden fasten 3 0 43 0 6 158 26 158;
#P hidden connect 43 0 44 0;
#P hidden fasten 44 0 36 0 26 239 89 239;
#P hidden fasten 39 1 37 0 439 174 193 174;
#P hidden connect 37 0 38 0;
#P hidden fasten 44 0 5 0 26 219 193 219;
#P hidden connect 38 0 5 0;
#P hidden fasten 37 1 5 0 268 219 193 219;
#P hidden connect 41 0 39 0;
#P hidden connect 39 0 5 1;
#P hidden connect 5 1 42 0;
#P hidden connect 42 0 6 0;
#P pop;
