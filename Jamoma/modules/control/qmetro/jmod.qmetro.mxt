max v2;
#N vpatcher 117 44 905 667;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden message 207 89 179 196617 preset/store 1 default \, preset/write;
#P hidden newex 69 288 97 196617 pvar TriggerButton;
#P window linecount 3;
#P hidden newex 400 244 336 196617 jcom.parameter randomness @type msg_int @ramp/drive scheduler @repetitions 0 @range 0 5000 @clipmode low @description "Defines a range of randomness in milliseconds to be applied to the metro interval";
#P objectname randomness;
#P window linecount 1;
#P hidden newex 69 168 38 196617 jcom.in;
#P comment 191 21 42 196617 trigger;
#B frgb 255 255 255;
#P button 233 21 15 0;
#P objectname TriggerButton;
#P number 214 41 35 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname MetroRandomness;
#P comment 127 42 89 196617 Randomness (ms);
#B frgb 255 255 255;
#P hidden newex 400 222 122 196617 pvar MetroRandomness;
#P hidden newex 69 311 348 196617 jcom.return trigger @description "Sent every time the metronome fires.";
#P number 56 42 35 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname MetroTime;
#P toggle 60 20 15 0;
#P objectname MetroToggle;
#P window linecount 2;
#P hidden comment 194 448 324 196617 If you need to send messages to or within the patch \, but it's not required that they be stored or retrieveable \, use jcom.message.;
#B color 12;
#P window linecount 1;
#P hidden comment 175 433 300 196617 jcom.message:;
#B color 12;
#P window linecount 2;
#P hidden comment 194 379 317 196617 Use this for any parameters that you'd like to be able to store and retrieve.;
#B color 12;
#P window linecount 1;
#P hidden comment 175 364 235 196617 jcom.parameter:;
#B color 12;
#P comment 4 43 60 196617 Time (ms);
#B frgb 255 255 255;
#P hidden newex 69 213 45 196617 pcontrol;
#P hidden newex 69 190 78 196617 jcom.pass open;
#P hidden message 38 89 125 196617 /documentation/generate;
#P hidden comment 277 589 241 196617 for html autodoc of module;
#B color 12;
#P hidden comment 277 544 241 196617 1 (default)/0;
#B color 12;
#P hidden comment 277 529 241 196617 none (default) \, linear;
#B color 12;
#P hidden comment 277 574 241 196617 none \, low \, high \, both (default);
#B color 12;
#P window linecount 0;
#P hidden comment 277 559 241 196617;
#B color 12;
#P window linecount 1;
#P hidden comment 277 514 292 196617 generic (default) \, msg_int \, msg_float \, msg_menu \, msg_toggle;
#B color 12;
#P hidden comment 194 589 79 196617 @description;
#B color 12;
#P hidden comment 194 544 79 196617 @repetitions;
#B color 12;
#P hidden comment 194 529 79 196617 @ramp;
#B color 12;
#P hidden comment 194 574 79 196617 @clipmode;
#B color 12;
#P hidden comment 194 559 79 196617 @range;
#B color 12;
#P hidden comment 194 514 79 196617 @type;
#B color 12;
#P hidden newex 401 149 82 196617 pvar MetroTime;
#P window linecount 2;
#P hidden newex 401 171 316 196617 jcom.parameter time @type msg_int @ramp/drive scheduler @repetitions 0 @range 1 5000 @clipmode low @description "Metro interval (ms)";
#P objectname time;
#P hidden message 30 379 65 196617 \; max refresh;
#P window linecount 1;
#P hidden message 165 89 37 196617 /init;
#P hidden newex 69 265 89 196617 jalg.qmetro.mxt;
#P objectname jcom.qmetro.mod;
#P comment 4 21 65 196617 On/Off;
#B frgb 255 255 255;
#P hidden newex 401 81 89 196617 pvar MetroToggle;
#P window linecount 2;
#P hidden newex 16 116 248 196617 jcom.hub jmod.qmetro @size 1U-half @module_type control @description "A queue based metro";
#P objectname jcom.hub;
#P hidden inlet 16 90 13 0;
#P hidden outlet 16 316 13 0;
#P hidden newex 401 103 314 196617 jcom.parameter toggle @type msg_toggle  @repetitions 0 @range 0 1 @clipmode both @description "Toggle qmetro on/off";
#P objectname toggle;
#P window linecount 1;
#P hidden message 175 266 118 196617 /documentation/html;
#P hidden newex 175 245 61 196617 prepend set;
#P hidden comment 175 499 235 196617 Attributes for jcom.parameter and jcom.message:;
#B color 12;
#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.a.stereo.mxt;
#P hidden fasten 46 0 7 0 212 110 21 110;
#P hidden fasten 11 0 7 0 170 110 21 110;
#P hidden connect 6 0 7 0;
#P hidden fasten 27 0 7 0 43 108 21 108;
#P hidden connect 7 0 5 0;
#P hidden connect 43 0 28 0;
#P hidden connect 28 0 29 0;
#P hidden fasten 28 1 10 0 142 256 74 256;
#P hidden connect 29 0 10 0;
#P hidden connect 10 0 45 0;
#P hidden connect 45 0 37 0;
#P hidden fasten 28 1 2 0 142 236 180 236;
#P hidden connect 2 0 3 0;
#P hidden fasten 44 0 38 0 405 294 393 294 393 215 405 215;
#P hidden connect 38 0 44 0;
#P hidden fasten 4 0 8 0 406 137 394 137 394 76 406 76;
#P hidden connect 8 0 4 0;
#P hidden fasten 13 0 14 0 406 204 394 204 394 144 406 144;
#P hidden connect 14 0 13 0;
#P pop;
