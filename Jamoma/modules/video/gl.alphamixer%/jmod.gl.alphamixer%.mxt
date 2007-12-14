max v2;#N vpatcher 202 58 1465 770;#P hidden inlet 226 311 13 0;#P hidden inlet 181 311 13 0;#P hidden inlet 136 311 13 0;#P window setfont "Sans Serif" 9.;#P hidden message 786 402 103 196617 0.25 0.25 0.25 0.25;#N vpatcher 42 65 612 848;#P origin 0 -51;#P bpatcher 280 0 268 762 0 0 jcom.class.gl_slab.inspect.mxt 0;#P objectname jcom.class.gl_slab.inspect.mxt;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P hidden newex 691 209 106 196617 bgcolor 110 110 110;#P bpatcher 7 0 268 761 0 0 jcom.class.gl_group.inspect.mxt 0;#P objectname jcom.class.gl_group.inspect.mxt;#P hidden inlet 691 89 15 0;#P window linecount 1;#P hidden newex 691 134 40 196617 t front;#P hidden newex 691 114 151 196617 jcom.oscroute /open_inspector;#N thispatcher;#Q end;#P hidden newobj 691 156 61 196617 thispatcher;#P hidden connect 3 0 1 0;#P hidden connect 1 0 2 0;#P hidden connect 2 0 0 0;#P pop;#P hidden newobj 280 354 60 196617 p inspector;#P objectname inspector;#P window linecount 2;#P hidden newex 595 319 346 196617 jcom.parameter layer_3 @type msg_list @ramp/drive scheduler @description "Blend coefficients for layer 3 (backmost layer) as list of rgba values.";#P objectname layer_3;#P hidden newex 540 346 30 196617 pvar 3_a;#P hidden newex 507 346 30 196617 pvar 3_b;#P hidden newex 474 346 30 196617 pvar 3_g;#P hidden newex 441 346 30 196617 pvar 3_r;#P window linecount 1;#P hidden newex 441 319 144 196617 jcom.list2parameter.mxt 4;#P window linecount 2;#P hidden newex 595 232 346 196617 jcom.parameter layer_2 @type msg_list @ramp/drive scheduler @description "Blend coefficients for layer 2 as list of rgba values.";#P objectname layer_2;#P hidden newex 540 259 30 196617 pvar 2_a;#P hidden newex 507 259 30 196617 pvar 2_b;#P hidden newex 474 259 30 196617 pvar 2_g;#P hidden newex 441 259 30 196617 pvar 2_r;#P window linecount 1;#P hidden newex 441 232 144 196617 jcom.list2parameter.mxt 4;#P window linecount 2;#P hidden newex 595 145 346 196617 jcom.parameter layer_1 @type msg_list @ramp/drive scheduler @description "Blend coefficients for layer 1 as list of rgba values.";#P objectname layer_1;#P hidden newex 540 172 30 196617 pvar 1_a;#P hidden newex 507 172 30 196617 pvar 1_b;#P hidden newex 474 172 30 196617 pvar 1_g;#P hidden newex 441 172 30 196617 pvar 1_r;#P window linecount 1;#P hidden newex 441 145 144 196617 jcom.list2parameter.mxt 4;#P window linecount 2;#P hidden newex 595 58 346 196617 jcom.parameter layer_0 @type msg_list @ramp/drive scheduler @description "Blend coefficients for layer 0 (frontmost layer) as list of rgba values.";#P objectname layer_0;#P hidden newex 540 85 30 196617 pvar 0_a;#P hidden newex 507 85 30 196617 pvar 0_b;#P hidden newex 474 85 30 196617 pvar 0_g;#P hidden newex 441 85 30 196617 pvar 0_r;#P window linecount 1;#P hidden newex 441 58 144 196617 jcom.list2parameter.mxt 4;#P comment 71 22 112 196617 mix coefficients;#B frgb 149 149 149;#P comment 5 37 45 196617 layer;#B frgb 149 149 149;#P comment 10 103 23 196617 3:;#B frgb 149 149 149;#P comment 10 87 23 196617 2:;#B frgb 149 149 149;#P comment 10 71 23 196617 1:;#B frgb 149 149 149;#P comment 10 55 23 196617 0:;#B frgb 149 149 149;#P comment 164 37 13 196617 a;#B frgb 149 149 149;#P comment 127 37 13 196617 b;#B frgb 149 149 149;#P comment 90 37 13 196617 g;#B frgb 149 149 149;#P flonum 163 101 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 3_a;#P flonum 126 101 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 3_b;#P flonum 89 101 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 3_g;#P flonum 52 101 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 3_r;#P flonum 163 85 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 2_a;#P flonum 126 85 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 2_b;#P flonum 89 85 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 2_g;#P flonum 52 85 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 2_r;#P flonum 163 69 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 1_a;#P flonum 126 69 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 1_b;#P flonum 89 69 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 1_g;#P flonum 52 69 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 1_r;#P flonum 163 53 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 0_a;#P flonum 126 53 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 0_b;#P flonum 89 53 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 0_g;#P hidden newex 199 376 47 196617 pcontrol;#P hidden newex 199 354 78 196617 jcom.pass open;#P flonum 52 53 35 9 0. 1. 8227 3 181 181 181 221 221 221 255 255 255 0 0 0;#P objectname 0_r;#P hidden message 114 184 191 196617 /preset/store 1 default \, /preset/write;#B color 3;#P hidden newex 175 444 58 196617 jcom.out 1;#P hidden newex 91 332 147 196617 jcom.in 4;#P comment 53 37 13 196617 r;#B frgb 149 149 149;#P hidden message 126 202 125 196617 /documentation/generate;#B color 3;#P window linecount 3;#P hidden newex 20 229 337 196617 jcom.hub jmod.gl.alphamixer% @size 2U-half @module_type video @algorithm_type jitter @inspector 1 @description "A four channel slab-based video mixer with alpha channels and Photoshop-style layers.";#P objectname jmod.hub;#P window linecount 1;#P hidden comment 190 477 89 196617 TEXTURE OUTPUT;#P hidden outlet 175 477 13 0;#P hidden inlet 91 311 13 0;#P hidden comment 105 291 177 196617 VIDEO OR GL_TEXTURE INPUT;#P hidden newex 64 417 121 196617 jalg.gl.alphamixer%.mxt;#P hidden message 256 202 31 196617 /init;#P hidden comment 35 201 79 196617 command input;#P hidden outlet 20 286 13 0;#P hidden inlet 20 199 13 0;#P hidden comment 192 419 174 196617 <- substitute for desired algorithm;#B color 12;#P bpatcher 0 0 255 120 0 0 jcom.gui.mxt 0;#P objectname jmod.gui.1Uh.v.mxb;#P hidden fasten 16 0 11 0 119 224 25 224;#P hidden fasten 5 0 11 0 261 224 25 224;#P hidden fasten 12 0 11 0 131 224 25 224;#P hidden connect 2 0 11 0;#P hidden connect 11 0 3 0;#P hidden fasten 18 1 6 0 272 402 69 402;#P hidden fasten 19 0 6 0 204 402 69 402;#P hidden connect 8 0 14 0;#P lcolor 12;#P hidden connect 14 0 6 1;#P lcolor 12;#P hidden connect 14 1 6 2;#P lcolor 12;#P hidden connect 70 0 14 1;#P lcolor 12;#P hidden connect 14 2 6 3;#P lcolor 12;#P hidden connect 14 3 6 4;#P lcolor 12;#P hidden connect 6 1 15 0;#P hidden connect 15 0 9 0;#P hidden connect 71 0 14 2;#P lcolor 12;#P hidden connect 14 4 18 0;#P hidden connect 18 0 19 0;#P hidden connect 72 0 14 3;#P lcolor 12;#P hidden fasten 14 4 68 0 204 351 285 351;#P hidden fasten 45 0 44 0 446 120 431 120 431 53 446 53;#P hidden connect 44 0 45 0;#P hidden fasten 51 0 50 0 446 207 431 207 431 140 446 140;#P hidden connect 50 0 51 0;#P hidden fasten 57 0 56 0 446 294 431 294 431 227 446 227;#P hidden connect 56 0 57 0;#P hidden fasten 63 0 62 0 446 381 431 381 431 314 446 314;#P hidden connect 62 0 63 0;#P hidden fasten 46 0 44 1 479 122 428 122 428 50 459 50;#P hidden fasten 52 0 50 1 479 209 428 209 428 137 459 137;#P hidden fasten 58 0 56 1 479 296 428 296 428 224 459 224;#P hidden fasten 64 0 62 1 479 383 428 383 428 311 459 311;#P hidden fasten 47 0 44 2 512 124 425 124 425 47 472 47;#P hidden fasten 53 0 50 2 512 211 425 211 425 134 472 134;#P hidden fasten 59 0 56 2 512 298 425 298 425 221 472 221;#P hidden fasten 65 0 62 2 512 385 425 385 425 308 472 308;#P hidden connect 44 1 46 0;#P hidden connect 50 1 52 0;#P hidden connect 56 1 58 0;#P hidden connect 62 1 64 0;#P hidden fasten 48 0 44 3 545 126 422 126 422 44 485 44;#P hidden fasten 54 0 50 3 545 213 422 213 422 131 485 131;#P hidden fasten 60 0 56 3 545 300 422 300 422 218 485 218;#P hidden fasten 66 0 62 3 545 387 422 387 422 305 485 305;#P hidden connect 44 2 47 0;#P hidden connect 50 2 53 0;#P hidden connect 56 2 59 0;#P hidden connect 62 2 65 0;#P hidden connect 44 3 48 0;#P hidden connect 50 3 54 0;#P hidden connect 56 3 60 0;#P hidden connect 62 3 66 0;#P hidden connect 49 0 44 10;#P hidden connect 55 0 50 10;#P hidden connect 61 0 56 10;#P hidden connect 67 0 62 10;#P hidden connect 44 10 49 0;#P hidden connect 69 0 49 0;#P hidden connect 50 10 55 0;#P hidden connect 69 0 55 0;#P hidden connect 56 10 61 0;#P hidden connect 69 0 61 0;#P hidden connect 62 10 67 0;#P hidden connect 69 0 67 0;#P pop;