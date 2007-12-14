max v2;
#N vpatcher 66 131 891 637;
#P window setfont "Sans Serif" 9.;
#P newex 40 155 38 9109513 jcom.in;
#P window linecount 2;
#P comment 425 300 324 9109513 If you need to send messages to or within the patch \, but it's not required that they be stored or retrieveable \, use jcom.message.;
#B color 12;
#P window linecount 1;
#P comment 406 285 300 9109513 jcom.message:;
#B color 12;
#P window linecount 2;
#P comment 425 231 317 9109513 Use this for any parameters that you'd like to be able to store and retrieve.;
#B color 12;
#P window linecount 1;
#P comment 406 216 235 9109513 jcom.parameter:;
#B color 12;
#P comment 4 41 65 9109513 Message B;
#B frgb 255 255 255;
#P newex 40 209 45 9109513 pcontrol;
#P newex 40 185 78 9109513 jcom.pass open;
#P message 38 89 125 9109513 /documentation/generate;
#P comment 508 441 241 9109513 for html autodoc of module;
#B color 12;
#P comment 508 396 241 9109513 1 (default)/0;
#B color 12;
#P comment 508 381 241 9109513 1/0 (default);
#B color 12;
#P comment 508 426 241 9109513 none \, low \, high \, both (default);
#B color 12;
#P window linecount 0;
#P comment 508 411 241 9109513;
#B color 12;
#P window linecount 1;
#P comment 508 366 241 9109513 generic (default) \, msg_int \, msg_float \, menu \, toggle;
#B color 12;
#P comment 425 441 79 9109513 @description;
#B color 12;
#P comment 425 396 79 9109513 @repetitions;
#B color 12;
#P comment 425 381 79 9109513 @ramp;
#B color 12;
#P comment 425 426 79 9109513 @clipmode;
#B color 12;
#P comment 425 411 79 9109513 @range;
#B color 12;
#P comment 425 366 79 9109513 @type;
#B color 12;
#P newex 458 104 75 9109513 pvar MessageB;
#P number 73 41 35 9 0 0 8224 139 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname MessageB;
#P window linecount 2;
#P newex 458 126 240 9109513 jcom.message my_message @repetitions 1 @type msg_int @ramp/drive scheduler @range 0 40000 @clipmode both;
#P message 201 82 65 9109513 \; max refresh;
#P window linecount 1;
#P message 167 89 23 9109513 /init;
#N vpatcher 585 154 1134 690;
#P window setfont "Sans Serif" 9.;
#P window linecount 0;
#P newex 70 90 180 9109513 jcom.oscroute /param_a /message_b;
#P outlet 70 474 15 0;
#P inlet 70 50 15 0;
#P window setfont "Sans Serif" 18.;
#P window linecount 1;
#P comment 70 155 398 9109522 Substitute this patch for your algorithm;
#B frgb 100 103 230;
#P connect 1 0 3 0;
#P pop;
#P newobj 40 266 88 9109513 p your_algorithm;
#P comment 4 21 65 9109513 Parameter A;
#B frgb 255 255 255;
#P number 72 20 35 9 0 0 8224 139 255 255 255 221 221 221 222 222 222 0 0 0;
#P objectname ParameterA;
#P newex 458 27 88 9109513 pvar ParameterA;
#P window linecount 2;
#P newex 16 116 398 9109513 jcom.hub jmod.cpu_test @size 1U-half @module_type control @description "A test module for analysing efficiency and tracking down bottle necks in parameter and message handling.";
#P objectname jcom.hub;
#P inlet 16 90 13 0;
#P outlet 16 303 13 0;
#P newex 458 47 240 9109513 jcom.parameter my_parameter @repetitions 1 @type msg_int @ramp/drive scheduler @range 0 40000 @clipmode both;
#P objectname jcom.parameter.mxt;
#P window linecount 1;
#P message 146 267 153 9109513 /message_b 1;
#P newex 146 246 61 9109513 prepend set;
#P comment 406 351 235 9109513 Attributes for jcom.parameter and jcom.message:;
#B color 12;
#P bpatcher 0 0 256 62 0 0 jcom.gui.mxt 0;
#P objectname jcom.gui.1Uh.a.stereo.mxt;
#P fasten 29 0 7 0 43 108 21 108;
#P connect 6 0 7 0;
#P fasten 12 0 7 0 172 110 21 110;
#P connect 7 0 5 0;
#P fasten 11 0 5 0 45 291 21 291;
#P connect 37 0 30 0;
#P connect 30 0 31 0;
#P fasten 30 1 11 0 113 257 45 257;
#P connect 31 0 11 0;
#P fasten 30 1 2 0 113 237 151 237;
#P connect 2 0 3 0;
#P fasten 4 0 8 0 463 82 451 82 451 22 463 22;
#P connect 8 0 4 0;
#P fasten 14 0 16 0 463 166 451 166 451 97 463 97;
#P connect 16 0 14 0;
#P pop;
