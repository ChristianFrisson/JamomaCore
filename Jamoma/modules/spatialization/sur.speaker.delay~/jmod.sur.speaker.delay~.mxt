max v2;#N vpatcher 78 111 1082 658;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P hidden newex 155 190 43 196617 jcom.in;#P hidden newex 155 213 84 196617 jcom.pass open;#P hidden newex 155 238 47 196617 pcontrol;#P hidden message 254 234 20 196617 \$2;#P hidden newex 254 213 72 196617 route mute;#P hidden newex 254 253 38 196617 mute~;#P comment 4 42 238 196617 Voices are only updated when audio is off.;#B frgb 172 172 172;#P hidden message 101 120 125 196617 /documentation/generate;#P window linecount 2;#P hidden newex 554 154 350 196617 jcom.parameter audio/mute @type msg_toggle @description "When active\\\, this attribute turns off the module's processing.mxtorithm to save CPU";#P objectname audio/mute;#P window linecount 1;#P hidden newex 554 132 56 196617 pvar Mute;#P objectname jcom.parameter;#P user pictctrl 238 4 11 11 jcom.button.mute.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 10 2 1 1 270;#P objectname Mute;#P hidden outlet 254 377 13 0;#P hidden inlet 406 318 13 0;#P window linecount 2;#P hidden newex 554 299 349 196617 jcom.message aed @type msg_list @description "List describing index (counting from 1)\\\, azimuth\\\, elevation\\\, distance for one speaker.";#P window linecount 1;#P comment 4 22 41 196617 Voices;#B frgb 172 172 172;#P number 46 20 35 9 1 16 8227 3 198 198 198 221 221 221 222 222 222 0 0 0;#P objectname Voices;#P hidden newex 554 221 63 196617 pvar Voices;#P window linecount 3;#P hidden newex 554 246 365 196617 jcom.parameter voices @type msg_int  @repetitions 0 @range 1 16 @clipmode both @description "The number of audio channels that the ambisonic signal is diffused to. Changes only take effect when audio is off.";#P objectname voices;#P window linecount 2;#P hidden message 25 485 65 196617 \; max refresh;#P window linecount 1;#P hidden comment 14 121 79 196617 command input;#P hidden inlet 0 121 13 0;#P window linecount 2;#P hidden message 25 453 72 196617 \; jcom.init bang;#P window linecount 1;#P hidden newex 254 343 162 196617 jalg.sur.speaker.delay~.mxt;#P hidden comment 332 301 155 196617 ----multicable signal input----;#P hidden outlet 0 237 13 0;#P hidden comment 269 377 151 196617 ---multicable signal output---;#P window linecount 2;#P hidden newex 0 140 374 196617 jcom.hub jmod.sur.speaker.delay~ @size 1U-half @module_type audio.no_panel @description "Adjust delay of the loudspeakers to adjust for varying distances.";#P objectname jcom.hub;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden connect 7 0 1 0;#P hidden fasten 20 0 1 0 106 137 5 137;#P hidden connect 1 0 3 0;#P hidden connect 27 0 26 0;#P hidden connect 26 0 25 0;#P hidden connect 26 1 23 0;#P hidden connect 23 0 24 0;#P hidden connect 24 0 22 0;#P hidden fasten 23 1 5 0 321 278 259 278;#P hidden connect 22 0 5 0;#P hidden fasten 25 0 5 0 160 284 259 284;#P hidden connect 5 0 16 0;#P hidden connect 15 0 5 1;#P hidden fasten 19 0 18 0 559 188 548 188 548 126 559 126;#P hidden connect 18 0 19 0;#P hidden fasten 10 0 11 0 559 291 549 291 549 214 559 214;#P hidden connect 11 0 10 0;#P pop;