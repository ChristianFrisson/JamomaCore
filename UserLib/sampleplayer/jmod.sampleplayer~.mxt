max v2;#N vpatcher 269 63 1110 751;#P origin -8 -312;#P window setfont "Sans Serif" 9.;#P hidden newex 541 615 92 196617 pvar speed_toggle;#B color 7;#P hidden newex 540 595 418 196617 jcom.parameter speed/active @type msg_toggle @description "turn on/off vari-speed.";#B color 2;#P objectname speed/active;#P user radiogroup 142 38 42 16;#X size 1;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 0;#X done;#P objectname speed_toggle;#P comment 159 40 33 196617 speed;#B frgb 181 181 181;#P flonum 192 39 36 9 0 90. 8226 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname speed;#P hidden newex 540 530 59 196617 pvar speed;#B color 7;#P window linecount 2;#P newex 540 550 327 196617 jcom.parameter speed/ratio @type msg_float @range 0. 2. @clipmode low @description "whether sample is played forward or backward";#P objectname speed/ratio;#P window linecount 1;#P hidden newex 538 461 71 196617 pvar Reverse;#B color 7;#P window linecount 2;#P newex 538 481 267 196617 jcom.parameter reverse @type msg_toggle @description "whether sample is played forward or backward";#P objectname reverse;#P user jsui 93 36 48 19 1 0 0 jcom.jsui_texttoggle.js Reverse Reverse 68 68 68 225 225 225 121 255 15;#P objectname Reverse;#P outlet 454 510 14 0;#P window linecount 1;#P hidden newex 48 152 62 196617 prepend set;#P hidden newex 145 153 62 196617 prepend set;#P newex 332 45 50 196617 deferlow;#P message 333 65 199 196617 set drag soundfile into the waveform field;#P newex 332 24 48 196617 loadbang;#P newex 16 195 93 196617 prepend /load_file;#P hidden newex 496 438 386 196617 jcom.message load_file @type msg_symbol @description "load a specific soundfile";#B color 2;#P objectname load_file;#P hidden newex 243 153 62 196617 prepend set;#P hidden newex 495 414 254 196617 jcom.message sample/buffername @type msg_symbol;#B color 2;#P objectname sample/buffername;#P hidden newex 421 404 47 196617 pcontrol;#P hidden newex 288 380 143 196617 jcom.algorithm_control~.mxt;#P hidden newex 47 132 305 196617 jcom.oscroute /sample/start /sample/stop /sample/buffername;#P message 5 21 202 196617 drag soundfile into the waveform field;#P objectname name_symbol;#P hidden newex 497 385 89 196617 pvar sample_size;#B color 7;#P hidden newex 496 366 396 196617 jcom.message sample/size @type msg_int @description "size of the loaded soundfile";#B color 2;#P objectname loop[2];#P hidden newex 494 336 95 196617 pvar name_symbol;#B color 7;#P hidden newex 494 313 436 196617 jcom.message sample/name @type msg_symbol @description "name of the loaded soundfile";#B color 2;#P objectname sample/name;#P user radiogroup 209 21 42 16;#X size 1;#X offset 16;#X inactive 0;#X itemtype 1;#X flagmode 0;#X set 0;#X done;#P objectname Loop_toggle;#P comment 223 22 29 196617 loop;#B frgb 181 181 181;#P hidden message 497 146 14 196617 1;#P hidden message 497 89 14 196617 1;#P window setfont "Sans Serif" 12.;#P hidden comment 441 101 39 196620 open;#B color 7;#P hidden comment 442 272 39 196620 loop;#B color 7;#P hidden comment 438 217 39 196620 play;#B color 7;#P window setfont "Sans Serif" 9.;#P hidden newex 496 284 85 196617 pvar Loop_toggle;#B color 7;#P hidden newex 496 230 85 196617 pvar Play_button;#B color 7;#P hidden newex 496 209 392 196617 jcom.message play @type msg_toggle @repetitions 0 @description "Play sound file.";#B color 2;#P objectname play;#P hidden newex 496 263 335 196617 jcom.parameter loop @type msg_toggle @description "Loop soundfile.";#B color 2;#P objectname loop;#P hidden newex 513 145 99 196617 pvar Record_button;#B color 7;#P hidden newex 496 164 345 196617 jcom.message sf_record @type msg_int @description "Record sound file.";#B color 2;#P objectname jcom.parameter.mxb[1];#P user jsui 433 141 45 19 1 0 0 jcom.jsui_texttoggle.js Record Record 68 68 68 225 225 225 255 40 40 0 0 0;#P objectname Record_button;#P hidden newex 517 88 88 196617 pvar Open_button;#B color 7;#P hidden newex 498 108 181 196617 jcom.message sf_open @type msg_int;#B color 2;#P objectname jcom.parameter.mxb[10];#P user jsui 49 36 45 19 1 0 0 jcom.jsui_texttoggle.js Play Play 68 68 68 225 225 225 121 255 15;#P objectname Play_button;#P user jsui 5 36 45 19 1 0 0 jsui_textbutton.js Open 225 225 225 68 68 68;#P objectname Open_button;#P hidden newex 147 399 47 196617 pcontrol;#P hidden newex 147 379 37 196617 t open;#P hidden newex 147 357 151 196617 jcom.oscroute /open_inspector;#N vpatcher 271 374 801 552;#P origin 23 59;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden message 178 154 246 196617 window flags nogrow \, savewindow 1 \, window exec;#P hidden message 426 153 316 196617 window flags grow \, window exec;#P inlet 880 -13 15 0;#P inlet 770 -17 15 0;#P button 417 510 15 0;#P window linecount 0;#P newex 424 532 44 196617 del 200;#P window linecount 1;#P hidden newex 159 -29 88 196617 bgcolor 80 80 80;#P hidden button 423 554 15 0;#P objectname bang_selectall;#P newex 194 571 98 196617 pvar bang_selectall;#P newex -23 612 62 196617 prepend set;#P newex 100 429 73 196617 prepend /play;#P hidden newex 209 475 193 196617 jcom.oscroute /size /name /buffername;#P outlet 99 453 15 0;#P newex 99 408 88 196617 pvar Play_button;#P user jsui 23 132 45 19 1 0 0 jcom.jsui_texttoggle.js Play Play 204 204 204 0 0 0 121 255 15;#P objectname Play_button;#P hidden message -10 21 30 196617 undo;#P user jsui 467 22 45 19 1 0 0 jsui_textbutton.js "Select all";#P objectname Open_button[1];#P user jsui 22 22 45 19 1 0 0 jsui_textbutton.js Undo;#P objectname Open_button;#P newex 261 503 62 196617 prepend set;#P hidden button 536 4 15 0;#P hidden number 76 -34 35 9 0 0 0 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname sample_size2;#P newex 261 523 100 196617 pvar sample_name2;#P newex 209 549 95 196617 pvar sample_size2;#P newex 89 497 73 196617 print openinsp;#P hidden message -18 -13 54 196617 vzoom \$1;#P hidden newex -18 -35 93 196617 pvar verticalzoom;#P window setfont "Sans Serif" 12.;#P comment 790 334 88 196620 display start;#P window setfont "Sans Serif" 9.;#P hidden newex 689 334 93 196617 pvar verticalzoom;#P window linecount 2;#P hidden newex 689 355 304 196617 jcom.parameter sample/vzoom @type msg_float @clipmode non @description @repetitions 0 @ramp/drive none "set vertical zoom";#P objectname sample/vzoom;#P flonum 456 136 49 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname verticalzoom;#P window linecount 1;#P comment 368 136 85 196617 set vertical zoom;#P message 22 8 490 196617 drag;#P objectname sample_name2;#P hidden newex 423 216 97 196617 pvar display_range;#P window setfont "Sans Serif" 12.;#P comment 790 273 88 196620 display start;#P window setfont "Sans Serif" 9.;#P hidden newex 689 274 97 196617 pvar display_range;#P window linecount 2;#P hidden newex 689 294 318 196617 jcom.parameter sample/displaystart @type msg_list @clipmode non @description @repetitions 0 @ramp/drive none "display start  time in ms";#P objectname sample/displaystart[1];#P window linecount 1;#P hidden message 76 -16 43 196617 size \$1;#P hidden newex 455 277 31 196617 * -1;#P hidden newex 424 236 58 196617 unpack 0 0;#P hidden newex 455 257 27 196617 -;#P hidden newex 455 297 93 196617 pvar displaylength;#P hidden newex 424 317 95 196617 pvar display_start;#P user rslider 66 21 402 20 74313 1 0 0 1;#P objectname display_range;#P comment 82 136 63 196617 display start;#P flonum 147 136 49 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname display_start;#P window setfont "Sans Serif" 12.;#P comment 783 206 88 196620 display start;#P window setfont "Sans Serif" 9.;#P hidden newex 682 207 95 196617 pvar display_start;#P window linecount 2;#P hidden newex 682 227 392 196617 jcom.parameter sample/displaystart @type msg_float @range 0. 1000000. @clipmode low @description @repetitions 0 @ramp/drive none "display start  time in ms";#P objectname sample/displaystart;#P window setfont "Sans Serif" 12.;#P window linecount 1;#P comment 783 139 88 196620 display length;#P window setfont "Sans Serif" 9.;#P hidden newex 682 140 93 196617 pvar displaylength;#P window linecount 2;#P hidden newex 682 160 370 196617 jcom.parameter sample/displaylength @type msg_float @range 0. 1000000. @clipmode low @description @repetitions 0 @ramp/drive none "display length in ms";#P objectname sample/displaylength;#P window linecount 1;#P comment 76 154 69 196617 display length;#P flonum 147 153 49 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname displaylength;#P window setfont "Sans Serif" 12.;#P comment 777 74 73 196620 stoptime;#P window setfont "Sans Serif" 9.;#P hidden message 536 22 51 196617 0 -1 0 -1;#P comment 223 153 68 196617 select end ms;#P comment 216 136 75 196617 select start ms;#P flonum 293 152 49 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname excerpt_end;#P flonum 293 136 49 9 0. 0 1 3 0 0 0 221 221 221 222 222 222 0 0 0;#P objectname excerpt_start;#P user waveform~ 22 40 490 93 3 9;#W mode select;#W mouseoutput continuous;#W clipdraw 1;#W unit ms;#W grid 500.;#W ticks 8;#W labels 1;#W vlabels 1;#W vticks 1;#W vzoom 0.69;#W bpm 120. 4.;#W frgb 149 149 149;#W brgb 33 33 33;#W rgb2 66 0 2;#W rgb3 0 0 0;#W rgb4 0 0 0;#W rgb5 169 165 207;#W rgb6 108 108 108;#W rgb7 78 74 220;#P user pictslider 3 57 19 76 0 0 0 0 wfknob.pct 1 wfmodes.pct 1 2146 0 0 196608 1. 1.;#N vpatcher 40 55 278 404;#P window setfont "Sans Serif" 9.;#P newex 96 202 27 196617 int;#N coll ;#T flags 1 0;#T 0 mode select;#T 1 mode loop;#T 2 mode move;#T 3 mode draw;#P newobj 131 255 53 196617 coll;#P button 75 117 15 0;#N comlet waveform~ mode messages;#P inlet 74 164 15 0;#P newex 113 88 27 196617 << 1;#P newex 96 140 40 196617 change;#P newex 96 164 45 196617 select 0;#P newex 96 117 27 196617 |;#P outlet 131 284 15 0;#P newex 45 62 78 196617 modifiers 100;#P connect 5 0 7 0;#P connect 7 0 2 0;#P connect 0 3 2 0;#P connect 2 0 4 0;#P connect 4 0 3 0;#P connect 6 0 9 0;#P connect 3 0 9 0;#P connect 0 4 5 0;#P connect 5 0 2 1;#P connect 3 1 8 0;#P connect 9 0 8 0;#P connect 8 0 1 0;#P pop;#P hidden newobj -27 150 50 196617 p wfkeys;#P hidden newex 681 73 90 196617 pvar excerpt_end;#P hidden newex 680 12 98 196617 pvar excerpt_start;#P window linecount 2;#P hidden newex 681 97 370 196617 jcom.parameter sample/stop @type msg_float @range 0. 1000000. @clipmode low @description "stoptime time in ms" @repetitions 0 @ramp/drive scheduler;#P objectname sample/stop;#P window linecount 1;#P hidden newex 56 520 146 196617 loadmess patcher edit the loop;#P hidden newex 45 498 40 196617 t front;#P hidden newex 31 388 219 196617 jcom.oscroute /open_inspector /play /sample;#P hidden inlet 31 361 15 0;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 271 374 801 552;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 56 540 61 196617 thispatcher;#P window setfont "Sans Serif" 12.;#P comment 779 10 73 196620 starttime;#P window setfont "Sans Serif" 9.;#P window linecount 2;#P hidden newex 680 34 374 196617 jcom.parameter sample/start @type msg_float @range 0. 1000000. @clipmode low @description "start time in ms" @repetitions 0 @ramp/drive scheduler;#P objectname sample/start;#P hidden connect 11 1 10 0;#P connect 60 2 62 0;#P hidden connect 46 0 47 0;#P hidden connect 54 0 56 0;#P hidden connect 24 0 12 0;#P hidden connect 56 0 12 0;#P hidden fasten 47 0 12 0 -13 40 27 40;#P hidden connect 10 0 12 0;#P hidden fasten 62 0 12 0 -18 191 -35 191 -35 46;#P connect 3 0 4 0;#P hidden connect 4 0 5 0;#P hidden connect 70 0 2 0;#P hidden connect 71 0 2 0;#P connect 6 0 2 0;#P hidden connect 5 0 2 0;#P hidden connect 35 0 29 0;#P hidden connect 51 0 35 0;#P connect 4 0 48 0;#P connect 4 1 58 0;#P connect 61 0 59 0;#P connect 58 0 61 0;#P hidden connect 21 0 12 1;#P connect 60 0 63 0;#P connect 4 2 60 0;#P fasten 60 0 49 0 214 494 214 494;#P connect 60 1 53 0;#P connect 53 0 50 0;#P hidden connect 0 0 12 2;#P hidden connect 7 0 12 3;#P connect 60 1 67 0;#P connect 66 0 64 0;#P hidden connect 39 0 33 0;#P hidden connect 33 0 30 0;#P connect 67 0 66 0;#P hidden connect 33 0 32 0;#P hidden connect 32 0 34 0;#P connect 34 0 31 0;#P hidden connect 33 1 32 1;#P hidden connect 17 0 12 4;#P hidden connect 55 0 52 0;#P hidden connect 52 0 17 0;#P hidden connect 64 0 17 0;#P hidden fasten 0 0 8 0 685 63 676 63 676 7 685 7;#P connect 68 0 0 0;#P hidden connect 8 0 0 0;#P hidden connect 12 2 0 0;#P hidden fasten 7 0 9 0 686 133 677 133 677 70 686 70;#P connect 69 0 7 0;#P hidden connect 12 3 7 0;#P hidden connect 9 0 7 0;#P hidden fasten 21 0 22 0 687 200 678 200 678 137 687 137;#P hidden connect 22 0 21 0;#P hidden connect 12 1 21 0;#P hidden fasten 24 0 25 0 687 267 678 267 678 204 687 204;#P hidden connect 25 0 24 0;#P hidden connect 12 0 24 0;#P hidden fasten 36 0 37 0 694 326 685 326 685 271 694 271;#P hidden connect 37 0 36 0;#P hidden fasten 43 0 44 0 694 387 685 387 685 332 694 332;#P hidden connect 44 0 43 0;#P pop;#P hidden newobj 147 525 60 196617 p inspector;#P objectname inspector;#P user waveform~ 5 58 247 43 3 9;#W mode select;#W mouseoutput continuous;#W clipdraw 1;#W unit ms;#W grid 500.;#W ticks 8;#W labels 1;#W vlabels 0;#W vticks 0;#W vzoom 0.5;#W bpm 120. 4.;#W frgb 149 149 149;#W brgb 80 80 80;#W rgb2 66 0 2;#W rgb3 0 0 0;#W rgb4 0 0 0;#W rgb5 141 141 141;#W rgb6 108 108 108;#W rgb7 78 74 220;#P message 127 199 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P newex 428 473 62 196617 jcom.out~ 2;#P newex 147 335 49 196617 jcom.in~;#P message 135 221 125 196617 /documentation/generate;#B color 3;#P window linecount 2;#P message 65 294 65 196617 \; max refresh;#P newex 37 258 351 196617 jcom.hub jmod.sampleplayer~ @size 2U-half @module_type audio.ambisonic @inspector 1 @description "simple monophonic sampleplayer";#P objectname jcom.hub;#P window linecount 1;#P comment 51 222 79 196617 command input;#P inlet 37 222 13 0;#P message 266 221 31 196617 /init;#P inlet 147 317 13 0;#P outlet 428 510 14 0;#P newex 375 445 117 196617 jalg.sampleplayer~.mxt;#P comment 140 301 105 196617 ----signal input----;#P outlet 37 298 13 0;#P comment 402 524 100 196617 ---signal output---;#P user dropfile 6 59 249 101 0;#P bpatcher 1 0 255 118 0 0 jcom.gui.mxt 0 $0_;#P objectname jmod.gui.1Uh.a.stereo.mxt;#P hidden connect 53 0 44 0;#P hidden fasten 49 0 17 0 248 177 10 177;#P hidden connect 1 0 51 0;#P lcolor 15;#P connect 51 0 11 0;#P fasten 18 0 11 0 152 557 9 557 9 242 42 242;#P fasten 8 0 11 0 271 243 42 243;#P fasten 13 0 11 0 140 242 42 242;#P connect 9 0 11 0;#P fasten 16 0 11 0 132 242 42 242;#P fasten 5 0 11 0 380 557 9 557 9 243 42 243;#P connect 11 0 3 0;#P hidden connect 46 0 45 0;#P hidden connect 45 0 56 0;#P hidden connect 56 0 17 2;#P hidden connect 45 1 55 0;#P connect 7 0 14 0;#P connect 14 0 19 0;#P hidden connect 19 0 20 0;#P connect 20 0 21 0;#P fasten 46 0 18 0 293 461 152 461;#P connect 21 0 18 0;#P hidden connect 17 2 18 1;#P hidden connect 55 0 17 3;#P hidden connect 17 3 18 2;#P hidden connect 45 2 49 0;#P fasten 19 1 46 0 293 377 293 377;#P connect 52 0 54 0;#P connect 54 0 53 0;#P fasten 46 0 5 0 293 419 380 419;#P fasten 47 0 5 0 426 431 380 431;#P hidden connect 46 1 47 0;#P connect 5 1 15 0;#P connect 15 0 6 0;#P connect 15 1 57 0;#P connect 5 2 15 1;#P hidden fasten 41 0 40 0 499 357 488 357 488 309 499 309;#P hidden connect 40 0 41 0;#P hidden connect 37 0 27 0;#P fasten 31 0 30 0 501 253 491 253 491 206 501 206;#P hidden connect 30 0 31 0;#P hidden fasten 32 0 29 0 501 305 493 305 493 259 501 259;#P hidden connect 29 0 32 0;#P hidden fasten 43 0 42 0 502 406 489 406 489 361 501 361;#P hidden connect 25 0 36 0;#P hidden connect 28 0 37 0;#P hidden connect 42 0 43 0;#P hidden connect 36 0 24 0;#P fasten 59 0 60 0 543 517 535 517 535 457 543 457;#P connect 60 0 59 0;#P fasten 61 0 62 0 545 585 537 585 537 524 545 524;#P connect 62 0 61 0;#P fasten 67 0 66 0 546 635 537 635 537 589 545 589;#P hidden connect 66 0 67 0;#P pop;