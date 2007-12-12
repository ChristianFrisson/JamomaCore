max v2;#N vpatcher 12 45 1131 896;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P comment 93 23 34 196617 Loop:;#B frgb 149 149 149;#P user jsui 204 94 45 19 3 0 0 jsui_textbutton.js dispose 225 225 225 68 68 68;#P objectname DISPOSE;#P user jsui 157 94 45 19 3 0 0 jsui_textbutton.js getlength 225 225 225 68 68 68;#P objectname GETLENGTH;#P user jsui 98 94 45 19 3 0 0 jsui_textbutton.js Stop 225 225 225 68 68 68;#P objectname STOP;#P user jsui 52 94 45 19 3 0 0 jsui_textbutton.js Start 225 225 225 68 68 68;#P objectname START;#P user jsui 6 94 45 19 3 0 0 jsui_textbutton.js Read 225 225 225 68 68 68;#P objectname READ;#P hidden inlet 173 244 15 0;#P hidden message 131 154 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden message 143 172 125 196617 /documentation/generate;#B color 3;#P hidden message 273 172 31 196617 /init;#P hidden newex 194 340 47 196617 pcontrol;#P hidden newex 194 318 78 196617 jcom.pass open;#P number 218 65 35 9 1 0 8225 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname DIM_Y;#P number 185 65 35 9 1 0 8225 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname DIM_X;#P comment 93 53 64 196617 Colormode:;#B frgb 149 149 149;#P comment 159 66 31 196617 Dim:;#B frgb 149 149 149;#P hidden newex 604 583 63 196617 pvar DIM_Y;#P hidden newex 539 583 63 196617 pvar DIM_X;#P hidden newex 539 631 97 196617 pvar COLORMODE 2;#P hidden newex 539 657 284 196617 jcom.parameter colormode @type msg_symbol "Colormode.";#P objectname colormode;#P user ubumenu 93 64 63 196617 0 1 1 0;#X add argb;#X add uyvy;#X prefix_set 0 0 <none> 0;#P objectname COLORMODE;#P hidden newex 688 559 352 196617 jcom.parameter dim @type msg_list  @description "Image size";#P objectname dim;#P hidden newex 539 558 144 196617 jcom.list2parameter.mxt 2;#P hidden newex 312 408 58 196617 jcom.out 1;#P hidden newex 173 273 52 196617 jcom.in 1;#P hidden newex 539 505 194 196617 jcom.message direct @type msg_generic;#P hidden newex 539 449 66 196617 pvar LOOP 2;#P hidden newex 539 474 349 196617 jcom.parameter loop @type msg_symbol @description "Set loop attribute.";#P objectname loop;#P user ubumenu 93 34 82 196617 0 1 1 0;#X add none;#X add normal;#X add palindrome;#X add looppoints;#X prefix_set 0 0 <none> 0;#X pattrmode 1;#P objectname LOOP;#P hidden newex 539 390 85 196617 pvar GETLENGTH;#P hidden newex 539 410 371 196617 jcom.message getlength @type msg_none @description "Get movie length in ms";#P hidden newex 539 343 71 196617 pvar DISPOSE;#P hidden newex 539 363 336 196617 jcom.message dispose @type msg_none @description "Playback control";#P hidden newex 539 296 54 196617 pvar STOP;#P hidden newex 539 316 322 196617 jcom.message stop @type msg_none @description "Playback control";#P hidden newex 539 249 73 196617 pvar START;#P hidden newex 539 269 326 196617 jcom.message start @type msg_none @description "Playback control";#P hidden newex 448 55 84 196617 unpack 0 0 0 0;#P hidden newex 448 219 57 196617 prepend set;#P hidden newex 448 197 69 196617 pak 0 0 0 0;#P hidden newex 539 169 379 196617 jcom.parameter unique @type msg_toggle @description "Playback quality option.";#P objectname unique;#P hidden newex 539 144 401 196617 jcom.parameter deinterlace @type msg_toggle @description "Playback quality option.";#P objectname deinterlace;#P hidden newex 539 119 397 196617 jcom.parameter singlefield @type msg_toggle @description "Playback quality option.";#P objectname singlefield;#P comment 20 54 65 196617 deinterlace;#B frgb 255 255 255;#P comment 20 70 65 196617 unique;#B frgb 255 255 255;#P comment 20 38 65 196617 singlefield;#B frgb 255 255 255;#P comment 20 22 65 196617 highquality;#B frgb 255 255 255;#P user radiogroup 5 21 80 64;#X size 4;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 1 0 1 0;#X done;#P objectname Options;#P window linecount 2;#P hidden message 6 383 65 196617 \; max refresh;#P window linecount 1;#P hidden newex 539 200 56 196617 pvar READ;#P hidden newex 539 220 336 196617 jcom.message read @type msg_generic @description "Playback control";#P hidden newex 448 33 62 196617 pvar Options;#P hidden newex 539 94 400 196617 jcom.parameter highquality @type msg_toggle @description "Playback quality option.";#P objectname highquality;#P window linecount 2;#P hidden newex 0 195 306 196617 jcom.hub jmod.movie_player% @size 2U-half @module_type video @algorithm_type jitter @description "Read QT movie film.";#P objectname jcom.hub;#P window linecount 1;#P hidden comment 328 436 89 196617 TEXTURE OUTPUT;#N comlet (texture);#P hidden outlet 312 436 13 0;#P hidden newex 194 384 128 196617 jalg.movie_player%.mxt;#P window linecount 2;#P hidden message 6 348 72 196617 \; jmod.init bang;#P window linecount 1;#P hidden comment 14 170 79 196617 command input;#P hidden outlet 0 306 13 0;#P hidden inlet 0 170 13 0;#P bpatcher 0 0 256 120 0 0 jcom.gui.mxt 0;#P objectname jmod.gui.1Uh.v.mxb;#P hidden fasten 54 0 8 0 136 191 5 191;#P hidden fasten 52 0 8 0 278 191 5 191;#P hidden fasten 53 0 8 0 148 191 5 191;#P hidden connect 1 0 8 0;#P hidden connect 8 0 2 0;#P hidden connect 55 0 37 0;#P hidden connect 37 1 50 0;#P hidden connect 50 0 51 0;#P hidden fasten 50 1 5 0 267 366 199 366;#P hidden connect 51 0 5 0;#P hidden fasten 37 0 5 1 178 304 317 304;#P hidden connect 5 1 38 0;#P hidden connect 38 0 6 0;#P hidden fasten 23 0 10 0 453 243 441 243 441 28 453 28;#P hidden connect 10 0 24 0;#P hidden connect 9 0 22 0;#P hidden connect 22 0 23 0;#P hidden connect 19 0 22 1;#P hidden connect 20 0 22 2;#P hidden connect 21 0 22 3;#P hidden connect 24 0 9 0;#P hidden connect 24 1 19 0;#P hidden connect 24 2 20 0;#P hidden connect 24 3 21 0;#P connect 12 0 11 0;#P hidden connect 26 0 25 0;#P hidden connect 28 0 27 0;#P hidden connect 30 0 29 0;#P hidden connect 32 0 31 0;#P hidden fasten 34 0 35 0 544 497 532 497 532 444 544 444;#P hidden fasten 35 1 34 0 600 470 544 470;#P hidden fasten 44 0 39 0 544 605 536 605 536 554 544 554;#P hidden connect 39 0 44 0;#P hidden fasten 42 0 43 0 544 678 533 678 533 626 544 626;#P hidden fasten 43 1 42 0 631 653 544 653;#P hidden fasten 45 0 39 1 609 607 530 607 530 551 557 551;#P hidden fasten 39 1 45 0 557 579 609 579;#P hidden connect 40 0 39 10;#P hidden connect 39 10 40 0;#P pop;