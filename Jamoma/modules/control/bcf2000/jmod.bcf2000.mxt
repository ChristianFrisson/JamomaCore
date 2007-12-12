max v2;#N vpatcher 42 59 843 760;#P window setfont "Sans Serif" 9.;#P hidden newex 496 442 67 196617 prepend port;#P hidden newex 496 467 76 196617 s $0__outport;#P hidden newex 242 442 67 196617 prepend port;#P hidden newex 242 467 70 196617 s $0__inport;#P hidden newex 385 379 81 196617 pvar MIDIOUT 2;#P hidden newex 127 379 72 196617 pvar MIDIIN 2;#P hidden newex 163 322 48 196617 loadbang;#P user umenu 79 21 100 196647 1 64 37 1;#X add BCF2000;#X add "to MaxMSP 1";#X add "to MaxMSP 2";#P objectname MIDIIN;#P user umenu 79 41 100 196647 1 64 57 1;#X add "AU DLS Synth 1";#X add BCF2000;#X add "from MaxMSP 1";#X add "from MaxMSP 2";#P objectname MIDIOUT;#P hidden newex 127 356 46 196617 midiinfo;#P hidden newex 385 355 46 196617 midiinfo;#P window setfont "Sans Serif" 18.;#N vpatcher 100 100 644 432;#P window setfont "Sans Serif" 9.;#P window linecount 1;#N vpatcher 10 59 376 338;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 186 169 38 196617 * 127;#P window linecount 0;#P newex 69 82 30 196617 > 64;#P inlet 46 27 15 0;#P window linecount 1;#P newex 203 199 76 196617 r $0__outport;#P newex 69 27 70 196617 r $0__inport;#P newex 186 225 60 196617 ctlout 93 1;#P newex 69 53 54 196617 ctlin 93 1;#P window linecount 2;#P newex 46 127 290 196617 jcom.parameter foot/switch @type msg_toggle @repetitions 1  @priority 1 @description "Foot Pedal: Switch.";#P objectname foot/switch;#P outlet 46 161 15 0;#P connect 6 0 1 0;#P connect 7 0 1 0;#P connect 1 0 0 0;#P connect 4 0 2 0;#P connect 2 0 7 0;#P connect 1 1 8 0;#P connect 5 0 3 0;#P connect 8 0 3 0;#P pop;#P hidden newobj 581 92 74 196617 p Foot_Switch;#P objectname "sub patch[4]";#P hidden newex 581 113 84 196617 pvar FootSwitch;#N vpatcher 10 59 360 336;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 176 168 38 196617 * 127;#P newex 69 94 30 196617 > 64;#P inlet 46 27 15 0;#P window linecount 1;#P newex 195 190 76 196617 r $0__outport;#P newex 69 27 70 196617 r $0__inport;#P newex 176 215 60 196617 ctlout 92 1;#P newex 69 63 54 196617 ctlin 92 1;#P window linecount 2;#P newex 46 127 270 196617 jcom.parameter button/4 @type msg_toggle @repetitions 1  @priority 1 @description "Button 4.";#P objectname button/4;#P outlet 46 161 15 0;#P connect 7 0 1 0;#P connect 6 0 1 0;#P connect 1 0 0 0;#P connect 4 0 2 0;#P connect 2 0 7 0;#P connect 1 1 8 0;#P connect 5 0 3 0;#P connect 8 0 3 0;#P pop;#P hidden newobj 677 218 59 196617 p Button_4;#P objectname "sub patch[2]";#P hidden newex 677 239 69 196617 pvar Button4;#N vpatcher 10 59 360 348;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 165 175 38 196617 * 127;#P newex 69 90 30 196617 > 64;#P inlet 46 27 15 0;#P window linecount 1;#P newex 179 209 76 196617 r $0__outport;#P newex 69 27 70 196617 r $0__inport;#P newex 165 236 60 196617 ctlout 90 1;#P newex 69 60 54 196617 ctlin 90 1;#P window linecount 2;#P newex 46 127 248 196617 jcom.parameter button/2 @type msg_toggle @repetitions 1  @description "Button 2.";#P objectname button/2;#P outlet 46 161 15 0;#P connect 6 0 1 0;#P connect 7 0 1 0;#P connect 1 0 0 0;#P connect 4 0 2 0;#P connect 2 0 7 0;#P connect 1 1 8 0;#P connect 5 0 3 0;#P connect 8 0 3 0;#P pop;#P hidden newobj 677 163 59 196617 p Button_2;#P objectname "sub patch[3]";#P hidden newex 677 184 69 196617 pvar Button2;#P window linecount 2;#P hidden message 440 51 93 196617 window flags grow \, window exec;#P window linecount 6;#P hidden message 440 83 93 196617 window size 100 100 644 432 \, window flags nogrow \, window exec \, savewindow 1;#P window linecount 0;#N vpatcher 10 59 610 459;#P window setfont "Sans Serif" 9.;#P hidden newex 50 71 32 196617 sel 1;#P hidden newex 50 50 151 196617 jcom.oscroute /open_inspector;#P hidden newex 50 92 40 196617 t front;#P inlet 50 30 15 0;#P outlet 50 114 15 0;#P connect 1 0 3 0;#P hidden connect 3 0 4 0;#P hidden connect 4 0 2 0;#P connect 2 0 0 0;#P pop;#P hidden newobj 431 31 41 196617 p front;#P window linecount 1;#P comment 490 228 43 196617 Control;#B frgb 190 190 190;#P comment 438 228 43 196617 Switch;#B frgb 190 190 190;#P user multiSlider 493 245 36 10 0. 127. 1 2664 47 0 0 2 0 0 0;#M frgb 198 198 198;#M brgb 0 0 0;#M rgb2 127 127 127;#M rgb3 0 0 0;#M rgb4 37 52 91;#M rgb5 74 105 182;#M rgb6 112 158 18;#M rgb7 149 211 110;#M rgb8 187 9 201;#M rgb9 224 62 37;#M rgb10 7 114 128;#P objectname FootControl;#N vpatcher 10 59 509 329;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 46 198 71 196617 prepend set 1;#P newex 46 175 51 196617 route set;#P window linecount 0;#P newex 96 76 62 196617 prepend set;#P inlet 46 27 15 0;#P window linecount 1;#P newex 198 180 76 196617 r $0__outport;#P window linecount 0;#P newex 69 27 70 196617 r $0__inport;#P window linecount 1;#P newex 184 207 60 196617 ctlout 94 1;#P newex 69 103 54 196617 ctlin 94 1;#P window linecount 3;#P newex 46 127 286 196617 jcom.parameter foot/control @type msg_int @range 0 127 @clipmode both @repetitions 1 @ramp.drive scheduler @priority 1 @description "Foot Pedal: Continuous Controller.";#P objectname foot/control;#P outlet 46 219 15 0;#P connect 6 0 1 0;#P connect 2 0 1 0;#P connect 1 0 8 0;#P connect 8 0 9 0;#P connect 9 0 0 0;#P connect 7 0 2 0;#P connect 4 0 2 0;#P connect 5 0 3 0;#P connect 1 1 3 0;#P pop;#P hidden newobj 677 92 76 196617 p Foot_Control;#P objectname "sub patch[1]";#P hidden newex 677 113 86 196617 pvar FootControl;#P user jsui 438 245 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname FootSwitch;#P comment 438 210 29 196617 Foot;#B frgb 190 190 190;#P user jsui 493 306 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Button4;#P user jsui 493 295 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Button2;#P user jsui 437 306 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Button3;#P user jsui 437 295 36 10 1 0 0 jcom.jsui_texttoggle.js " " " " 74 74 74 0 0 0 162 226 132;#P objectname Button1;#N vpatcher 10 59 374 318;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 176 164 38 196617 * 127;#P window linecount 1;#P newex 69 102 30 196617 > 64;#P inlet 46 27 15 0;#P newex 190 190 76 196617 r $0__outport;#P newex 69 27 70 196617 r $0__inport;#P newex 176 217 60 196617 ctlout 91 1;#P newex 69 78 54 196617 ctlin 91 1;#P window linecount 2;#P newex 46 127 270 196617 jcom.parameter button/3 @type msg_toggle @repetitions 1  @priority 1 @description "Button 3.";#P objectname button/3;#P outlet 46 161 15 0;#P connect 7 0 1 0;#P connect 6 0 1 0;#P connect 1 0 0 0;#P connect 4 0 2 0;#P connect 2 0 7 0;#P connect 1 1 8 0;#P connect 5 0 3 0;#P connect 8 0 3 0;#P pop;#P hidden newobj 581 218 59 196617 p Button_3;#P objectname "sub patch[10]";#P hidden newex 581 239 69 196617 pvar Button3;#N vpatcher 10 59 359 343;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 69 86 30 196617 > 64;#P newex 176 164 38 196617 * 127;#P inlet 46 27 15 0;#P newex 193 194 76 196617 r $0__outport;#P newex 69 33 70 196617 r $0__inport;#P newex 176 222 60 196617 ctlout 89 1;#P newex 69 56 54 196617 ctlin 89 1;#P window linecount 2;#P newex 46 127 270 196617 jcom.parameter button/1 @type msg_toggle @repetitions 1  @priority 1 @description "Button 1.";#P objectname button/1;#P outlet 46 161 15 0;#P connect 8 0 1 0;#P connect 6 0 1 0;#P connect 1 0 0 0;#P connect 4 0 2 0;#P connect 2 0 8 0;#P connect 1 1 7 0;#P connect 5 0 3 0;#P connect 7 0 3 0;#P pop;#P hidden newobj 581 163 59 196617 p Button_1;#P objectname "sub patch[9]";#P hidden newex 581 184 69 196617 pvar Button1;#P window linecount 0;#N thispatcher;#Q window flags nogrow close zoom nofloat;#Q window size 100 100 644 432;#Q window title;#Q window exec;#Q savewindow 1;#Q end;#P hidden newobj 431 162 61 196617 thispatcher;#P hidden inlet 431 13 15 0;#P hidden newex 431 182 88 196617 bgcolor 48 48 48;#P bpatcher 378 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 8;#P objectname jalg.bcf2000.mxt[7];#P bpatcher 325 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 7;#P objectname jalg.bcf2000.mxt[6];#P bpatcher 272 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 6;#P objectname jalg.bcf2000.mxt[5];#P bpatcher 219 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 5;#P objectname jalg.bcf2000.mxt[4];#P bpatcher 166 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 4;#P objectname jalg.bcf2000.mxt[3];#P bpatcher 113 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 3;#P objectname jalg.bcf2000.mxt[2];#P bpatcher 60 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 2;#P objectname jalg.bcf2000.mxt[1];#P bpatcher 7 8 51 316 0 0 jalg.bcf2000.mxt 0 $0_ 1;#P objectname jalg.bcf2000.mxt;#P comment 438 273 44 196617 Buttons;#B frgb 190 190 190;#P user panel 431 202 106 60;#X brgb 48 48 48;#X frgb 132 132 132;#X border 1;#X rounded 0;#X shadow 0;#X done;#P user panel 431 264 106 60;#X brgb 48 48 48;#X frgb 132 132 132;#X border 1;#X rounded 0;#X shadow 0;#X done;#P hidden connect 12 0 29 0;#P hidden connect 30 0 13 0;#P hidden fasten 31 0 13 0 445 81 436 81;#P hidden connect 29 0 13 0;#P hidden fasten 36 0 37 0 586 135 575 135 575 133 575 132 575 85 586 85;#P hidden connect 37 0 36 0;#P hidden fasten 14 0 15 0 586 206 575 206 575 204 575 203 575 156 586 156;#P hidden connect 15 0 14 0;#P hidden fasten 16 0 17 0 586 261 575 261 575 259 575 258 575 211 586 211;#P hidden connect 17 0 16 0;#P hidden fasten 24 0 25 0 682 135 671 135 671 133 671 132 671 85 682 85;#P hidden connect 25 0 24 0;#P hidden fasten 32 0 33 0 682 206 671 206 671 204 671 203 671 156 682 156;#P hidden connect 33 0 32 0;#P hidden fasten 34 0 35 0 682 261 671 261 671 259 671 258 671 211 682 211;#P hidden connect 35 0 34 0;#P pop;#P hidden newobj 119 270 103 196626 p bcf2000;#P objectname inspector;#P window setfont "Sans Serif" 9.;#P hidden message 49 72 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden newex 119 173 43 196617 jcom.in;#P comment 4 43 65 196617 MIDI out:;#B frgb 149 149 149;#P hidden newex 119 221 45 196617 pcontrol;#P hidden newex 119 197 78 196617 jcom.pass open;#P window linecount 2;#P hidden newex 386 406 231 196617 jcom.parameter midi_out @priority 0 @description "Port to send MIDI messages to.";#P objectname midi_out;#P hidden message 23 364 65 196617 \; max refresh;#P window linecount 1;#P hidden message 185 89 31 196617 /init;#P comment 4 21 65 196617 MIDI in:;#B frgb 149 149 149;#P window linecount 2;#P hidden newex 16 114 406 196617 jcom.hub jmod.bcf2000 @size 1U-half @module_type control @inspector 1 @description "A module interfacing with the Behringer BCF2000 motorized MIDI fader.";#P objectname jcom.hub;#P hidden inlet 16 90 13 0;#P hidden outlet 16 316 13 0;#P hidden newex 127 406 240 196617 jcom.parameter midi_in @priority 0 @description "Port to receive MIDI messages on.";#P objectname midi_in;#P window linecount 1;#P hidden message 231 290 153 196617 /midi_out BCF2000;#P hidden newex 231 270 61 196617 prepend set;#P hidden message 56 89 125 196617 /documentation/generate;#B color 3;#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0 $0_;#P objectname jcom.gui.audio-component.mxt;#P hidden fasten 16 0 7 0 54 110 21 110;#P hidden fasten 1 0 7 0 61 110 21 110;#P hidden connect 6 0 7 0;#P hidden fasten 9 0 7 0 190 110 21 110;#P hidden connect 7 0 5 0;#P hidden connect 15 0 12 0;#P hidden connect 12 0 13 0;#P hidden fasten 12 1 17 0 192 260 124 260;#P hidden connect 13 0 17 0;#P hidden connect 19 0 23 0;#P hidden fasten 4 0 23 0 132 440 119 440 119 376 132 376;#P hidden fasten 23 1 4 0 194 400 132 400;#P hidden connect 22 0 19 1;#P hidden fasten 12 1 2 0 192 249 236 249;#P hidden connect 2 0 3 0;#P hidden connect 4 1 26 0;#P hidden connect 26 0 25 0;#P hidden fasten 22 0 18 0 168 347 390 347;#P hidden connect 18 0 24 0;#P hidden fasten 11 0 24 0 391 440 379 440 379 376 390 376;#P hidden fasten 24 1 11 0 461 401 391 401;#P hidden connect 11 1 28 0;#P hidden connect 28 0 27 0;#P pop;