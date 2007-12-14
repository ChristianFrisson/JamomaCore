max v2;#N vpatcher 133 135 897 558;#P window setfont "Sans Serif" 9.;#P hidden newex 52 242 45 196617 pcontrol;#P hidden newex 52 221 78 196617 jcom.pass open;#P hidden newex 52 199 49 196617 jcom.in~;#P hidden newex 333 245 52 196617 pvar load;#P hidden newex 333 266 358 196617 jcom.message load @type msg_none @description "Receive midi information";#P objectname midiin[1];#P hidden newex 333 181 75 196617 pvar keyboard;#P hidden newex 333 202 359 196617 jcom.message notein @type msg_int @description "Receive midi information";#P objectname midiin;#P hidden newex 333 108 65 196617 pvar reverb;#P window linecount 2;#P hidden newex 333 129 324 196617 jcom.parameter reverb @type msg_toggle @ramp/drive scheduler @repetitions 0 @range 0 1 @clipmode both @description "Turn on reverb.";#P objectname reverb[1];#P user kslider 98 22 35 1 60 36 19 7 0 128 128 128 128 128 128 255 255 255 0 0 0 0 0 0;#P objectname keyboard;#P window linecount 1;#P hidden newex 333 42 64 196617 pvar chorus;#P window linecount 2;#P hidden newex 333 63 323 196617 jcom.parameter chorus @type msg_toggle @ramp/drive scheduler @repetitions 0 @range 0 1 @clipmode both @description "Turn on chorus.";#P objectname chorus[1];#P user jsui 44 39 33 15 1 0 0 jcom.jsui_texttoggle.js reverb reverb;#P objectname reverb;#P user jsui 44 24 33 15 1 0 0 jcom.jsui_texttoggle.js chorus chorus;#P objectname chorus;#P user jsui 14 24 25 15 1 0 0 jsui_textbutton.js load;#P objectname load;#P window linecount 1;#P hidden message 110 94 191 196617 /preset/store 1 default \, /preset/write;#P hidden newex 52 302 130 196617 jcom.out~ 2;#P hidden message 123 111 125 196617 /documentation/generate;#P window linecount 2;#P hidden newex 16 147 263 196617 jcom.hub jmod.fluidsynth~ @size 1U-half @module_type audio @description "Synthesizer using soundfonts";#P objectname jcom.hub;#P window linecount 1;#P hidden comment 30 111 79 196617 command input;#P hidden inlet 16 111 13 0;#P hidden message 250 111 37 196617 /init;#P hidden outlet 52 332 13 0;#P hidden newex 52 276 130 196617 jalg.fluidsynth~.mxt;#P hidden outlet 16 187 13 0;#P hidden outlet 112 332 13 0;#P hidden comment 52 346 101 196617 ---signal outputs---;#P bpatcher 0 0 256 60 0 0 jcom.gui.mxt 0;#P objectname jcom.gui.1Uh.a.stereo.mxt;#P hidden fasten 12 0 9 0 115 129 21 129;#P hidden fasten 6 0 9 0 255 134 21 134;#P hidden fasten 10 0 9 0 128 132 21 132;#P hidden connect 7 0 9 0;#P hidden connect 9 0 3 0;#P hidden connect 25 0 26 0;#P hidden connect 26 0 27 0;#P hidden fasten 26 1 4 0 125 268 57 268;#P hidden connect 27 0 4 0;#P hidden connect 4 0 11 0;#P hidden connect 11 0 5 0;#P hidden connect 11 1 2 0;#P hidden connect 4 1 11 1;#P hidden fasten 16 0 17 0 338 96 328 96 328 36 338 36;#P hidden connect 17 0 16 0;#P hidden fasten 19 0 20 0 338 162 328 162 328 102 338 102;#P hidden connect 20 0 19 0;#P hidden connect 22 0 21 0;#P hidden connect 24 0 23 0;#P pop;