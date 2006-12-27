max v2;
#N vpatcher 66 131 891 637;
#P window setfont "Sans Serif" 9.;
#P newex 119 173 43 196617 jcom.in;
#P window linecount 2;
#P comment 425 300 324 196617 If you need to send messages to or within the patch \, but it's not required that they be stored or retrieveable \, use jcom.message.;
#B color 12;
#P window linecount 1;
#P comment 406 285 300 196617 jcom.message:;
#B color 12;
#P window linecount 2;
#P comment 425 231 317 196617 Use this for any parameters that you'd like to be able to store and retrieve.;
#B color 12;
#P window linecount 1;
#P comment 406 216 235 196617 jcom.parameter:;
#B color 12;
#P comment 4 43 65 196617 Message B;
#B frgb 255 255 255;
#P newex 119 221 45 196617 pcontrol;
#P newex 119 197 78 196617 jcom.pass open;
#P message 38 89 50 196617 /autodoc;
#P comment 508 441 241 196617 for html autodoc of module;
#B color 12;
#P comment 508 396 241 196617 1 (default)/0;
#B color 12;
#P comment 508 381 241 196617 1/0 (default);
#B color 12;
#P comment 508 426 241 196617 none \, low \, high \, both (default);
#B color 12;
#P window linecount 0;
#P comment 508 411 241 196617;
#B color 12;
#P window linecount 1;
#P comment 508 366 241 196617 generic (default) \, msg_int \, msg_float \, menu \, toggle;
#B color 12;
#P comment 425 441 79 196617 @description;
#B color 12;
#P comment 425 396 79 196617 @repetitions;
#B color 12;
#P comment 425 381 79 196617 @ramp;
#B color 12;
#P comment 425 426 79 196617 @clipmode;
#B color 12;
#P comment 425 411 79 196617 @range;
#B color 12;
#P comment 425 366 79 196617 @type;
#B color 12;
#P newex 419 96 75 196617 pvar MessageB;
#P number 73 41 35 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname MessageB;
#P newex 419 118 195 196617 jcom.message message_b @type msg_int;
#P window linecount 2;
#P message 29 362 65 196617 \; max refresh;
#P window linecount 1;
#P message 92 89 31 196617 /init;
#N vpatcher 585 154 1134 690;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 70 90 180 196617 jcom.oscroute /param_a /message_b;
#P outlet 70 474 15 0;
#P inlet 70 50 15 0;
#P window setfont "Sans Serif" 18.;
#P window linecount 1;
#P comment 70 155 398 196626 Substitute this patch for your algorithm;
#B frgb 100 103 230;
#P connect 1 0 3 0;
#P pop;
#P newobj 119 278 88 196617 p your_algorithm;
#P comment 4 21 65 196617 Parameter A;
#B frgb 255 255 255;
#P number 72 20 35 9 0 0 8224 3 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname ParameterA;
#P newex 419 36 88 196617 pvar ParameterA;
#P window linecount 2;
#P newex 16 114 283 196617 jcom.hub jmod.template.control.mxt @size 1U-half @module_type control @description "This module doesn't do much yet";
#P objectname jcom.hub;
#P inlet 16 90 13 0;
#P outlet 16 316 13 0;
#P window linecount 1;
#P newex 419 56 263 196617 jcom.parameter param_a @repetitions 0 @type msg_int;
#P objectname param_a;
#P message 225 279 153 196617 /disable_ui_updates 0;
#P newex 225 258 61 196617 prepend set;
#P comment 406 351 235 196617 Attributes for jcom.parameter and jcom.message:;
#B color 12;
#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0 $0_;
#P objectname jcom.gui.audio-component.mxt;
#P fasten 29 0 7 0 43 108 21 108;
#P connect 6 0 7 0;
#P fasten 12 0 7 0 97 110 21 110;
#P connect 7 0 5 0;
#P fasten 11 0 5 0 124 309 21 309;
#P connect 37 0 30 0;
#P connect 30 0 31 0;
#P connect 31 0 11 0;
#P fasten 30 1 11 0 192 269 124 269;
#P fasten 30 1 2 0 192 249 230 249;
#P connect 2 0 3 0;
#P fasten 4 0 8 0 424 79 412 79 412 31 424 31;
#P connect 8 0 4 0;
#P fasten 14 0 16 0 424 142 412 142 412 89 424 89;
#P connect 16 0 14 0;
#P pop;
