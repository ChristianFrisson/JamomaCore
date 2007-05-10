max v2;#N vpatcher 459 162 1210 573;#P origin -2 -467;#P window setfont "Sans Serif" 9.;#P comment 218 42 18 196617 Hz;#B frgb 181 181 181;#P comment 146 42 58 196617 updaterate:;#B frgb 181 181 181;#P number 199 40 24 9 10 66 8227 3 181 181 181 221 221 221 222 222 222 0 0 0;#P objectname sr;#P hidden newex 375 224 44 196617 pvar sr;#P window linecount 2;#P hidden newex 375 243 254 196617 jcom.parameter updaterate @type msg_int @range 10 66 @clipmode both @description "set the samplerate";#P objectname updaterate;#P window linecount 1;#P hidden newex 369 176 73 196617 pvar ard_initi;#P hidden newex 370 196 379 196617 jcom.message init @type msg_none @description "Initialization of the serial port";#P objectname jcom.parameter[3];#P user jsui 52 29 25 14 1 0 0 jcom.jsui_texttoggle.js off on 204 204 204 0 0 0 121 255 15;#P objectname ard_on;#P user jsui 16 29 25 15 1 0 0 jsui_textbutton.js init;#P objectname ard_initi;#P user umenu 124 22 114 196647 1 64 38 1;#X add Z710i-Dial-upNetworking-2;#X add Bluetooth-PDA-Sync;#X add Z710i-SerialPort-1;#X add Bluetooth-Modem;#P objectname port_menu;#P comment 98 24 27 196617 port;#B frgb 181 181 181;#P hidden newex 373 108 65 196617 pvar ard_on;#P hidden newex 373 130 320 196617 jcom.parameter on @type msg_toggle @description "Turn polling on";#P objectname on;#P hidden newex 20 358 82 196617 pvar port_menu;#P window linecount 2;#P hidden newex 20 380 239 196617 jcom.parameter menu @type msg_menu @clipmode none @description "Choose the Arduino port";#P objectname menu;#P window linecount 1;#P message 53 106 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P newex 20 208 43 196617 jcom.in;#P newex 20 256 45 196617 pcontrol;#P newex 20 232 78 196617 jcom.pass open;#P window linecount 2;#P message 214 342 65 196617 \; max refresh;#P window linecount 1;#P message 189 123 31 196617 /init;#P newex 20 313 84 196617 jalg.arduino.mxt;#P window linecount 2;#P newex 20 148 289 196617 jcom.hub jmod.arduino @size 1U-half @module_type control @description "An interface module for the I/O board Arduino";#P objectname jcom.hub;#P inlet 20 124 13 0;#P outlet 20 181 13 0;#P window linecount 1;#P message 126 314 153 196617 /updaterate 66;#P newex 126 293 61 196617 prepend set;#P message 60 123 125 196617 /documentation/generate;#B color 3;#P bpatcher 0 -1 256 62 0 0 jcom.gui.mxt 0 $0_;#P objectname jcom.gui.audio-component.mxt;#P fasten 13 0 6 0 58 144 25 144;#P fasten 1 0 6 0 65 144 25 144;#P connect 5 0 6 0;#P fasten 8 0 6 0 194 144 25 144;#P connect 6 0 4 0;#P connect 12 0 10 0;#P connect 10 0 11 0;#P fasten 10 1 7 0 93 304 25 304;#P connect 11 0 7 0;#P hidden fasten 14 0 15 0 25 413 13 413 13 353 25 353;#P hidden connect 7 0 15 0;#P hidden connect 15 0 14 0;#P fasten 10 1 2 0 93 284 131 284;#P connect 2 0 3 0;#P connect 23 0 22 0;#P hidden fasten 16 0 17 0 378 163 369 163 369 103 378 103;#P hidden connect 17 0 16 0;#P hidden fasten 24 0 25 0 380 276 370 276 370 221 380 221;#P hidden connect 25 0 24 0;#P pop;