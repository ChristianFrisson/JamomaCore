max v2;#N vpatcher 176 61 1117 461;#P origin 18 0;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 373 133 71 196617 prepend accel;#P newex 529 133 40 196617 t dump;#P newex 607 133 41 196617 t reset;#P newex 373 107 481 196617 jcom.oscroute /acceleration /attractpoint /dump /random_reset /on /updaterate;#P window linecount 2;#P newex 21 65 375 196617 jcom.pass /neighbors /maxspeed /minspeed /center /attract /match /avoid /repel /edgedist /speed /inertia /prefdist /flyrect /attractpoint /number /mode;#P window linecount 1;#P newex 484 173 73 196617 jcom.aed2xyz;#P window linecount 2;#P newex 451 133 76 196617 jcom.oscroute /xyz /aed;#P window linecount 1;#N vpatcher 10 59 864 726;#P origin 46 28;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P newex 208 564 278 196617 jcom.return xyz/16 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 196 529 278 196617 jcom.return xyz/15 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 522 569 273 196617 jcom.return xyz/32 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 515 530 273 196617 jcom.return xyz/31 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 509 493 273 196617 jcom.return xyz/30 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P inlet 0 -2 15 0;#P newex 489 460 307 196617 jcom.return xyz/29 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 476 425 307 196617 jcom.return xyz/28 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 460 392 307 196617 jcom.return xyz/27 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 446 359 307 196617 jcom.return xyz/26 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 432 325 307 196617 jcom.return xyz/25 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 418 292 307 196617 jcom.return xyz/24 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 404 258 307 196617 jcom.return xyz/23 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 390 224 307 196617 jcom.return xyz/22 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 376 190 307 196617 jcom.return xyz/21 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 362 157 307 196617 jcom.return xyz/20 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 348 123 307 196617 jcom.return xyz/19 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 335 89 307 196617 jcom.return xyz/18 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 320 57 307 196617 jcom.return xyz/17 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 184 494 307 196617 jcom.return xyz/14 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 169 460 307 196617 jcom.return xyz/13 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 156 425 307 196617 jcom.return xyz/12 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 140 392 307 196617 jcom.return xyz/11 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 126 359 307 196617 jcom.return xyz/10 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 112 325 307 196617 jcom.return xyz/9 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 98 292 307 196617 jcom.return xyz/8 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 84 258 307 196617 jcom.return xyz/7 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 70 224 307 196617 jcom.return xyz/6 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 56 190 307 196617 jcom.return xyz/5 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 42 157 307 196617 jcom.return xyz/4 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 28 123 307 196617 jcom.return xyz/3 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P newex 15 89 307 196617 jcom.return xyz/2 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P window linecount 1;#P newex 0 25 460 196617 route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31;#P window linecount 2;#P newex 0 57 311 196617 jcom.return xyz/1 @type msg_list @description "returns a position of boid number xyz/<n> in xyz-coordinates";#P connect 28 0 1 0;#P connect 1 0 0 0;#P connect 1 1 2 0;#P connect 1 2 3 0;#P connect 1 3 4 0;#P connect 1 4 5 0;#P connect 1 5 6 0;#P connect 1 6 7 0;#P connect 1 7 8 0;#P connect 1 8 9 0;#P connect 1 9 10 0;#P connect 1 10 11 0;#P connect 1 11 12 0;#P connect 1 12 13 0;#P connect 1 13 14 0;#P connect 1 14 32 0;#P connect 1 15 33 0;#P connect 1 16 15 0;#P connect 1 17 16 0;#P connect 1 18 17 0;#P connect 1 19 18 0;#P connect 1 20 19 0;#P connect 1 21 20 0;#P connect 1 22 21 0;#P connect 1 23 22 0;#P connect 1 24 23 0;#P connect 1 25 24 0;#P connect 1 26 25 0;#P connect 1 27 26 0;#P connect 1 28 27 0;#P connect 1 29 29 0;#P connect 1 30 30 0;#P connect 1 31 31 0;#P pop;#P newobj 281 301 35 196617 p xyz;#N vpatcher 121 55 1008 730;#P origin 59 16;#P window setfont "Sans Serif" 9.;#P window linecount 0;#P message 183 22 43 196617 0 1 1 0;#P window linecount 1;#P newex 682 107 62 196617 prepend set;#P message 681 134 89 196617 45. 0. 1.414214;#P newex 669 76 52 196617 route 0 1;#P window linecount 0;#P newex 1 40 51 196617 zl slice 1;#P window linecount 2;#P newex 532 644 321 196617 jcom.return aed/32 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 519 610 321 196617 jcom.return aed/31 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 505 577 321 196617 jcom.return aed/30 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 490 543 321 196617 jcom.return aed/29 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 477 508 321 196617 jcom.return aed/28 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 461 475 321 196617 jcom.return aed/27 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 447 442 321 196617 jcom.return aed/26 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 433 408 321 196617 jcom.return aed/25 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 419 375 321 196617 jcom.return aed/24 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 405 341 321 196617 jcom.return aed/23 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 391 307 321 196617 jcom.return aed/22 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 377 273 321 196617 jcom.return aed/21 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 363 240 321 196617 jcom.return aed/20 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 349 206 321 196617 jcom.return aed/19 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 336 172 321 196617 jcom.return aed/18 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 321 140 321 196617 jcom.return aed/17 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 212 644 321 196617 jcom.return aed/16 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 199 610 321 196617 jcom.return aed/15 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 185 577 321 196617 jcom.return aed/14 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 170 543 321 196617 jcom.return aed/13 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 157 508 321 196617 jcom.return aed/12 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 141 475 321 196617 jcom.return aed/11 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 127 442 321 196617 jcom.return aed/10 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 113 408 321 196617 jcom.return aed/9 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 99 375 321 196617 jcom.return aed/8 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 85 341 321 196617 jcom.return aed/7 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 71 307 321 196617 jcom.return aed/6 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 57 273 321 196617 jcom.return aed/5 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 43 240 321 196617 jcom.return aed/4 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 29 206 321 196617 jcom.return aed/3 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P newex 16 172 321 196617 jcom.return aed/2 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P window linecount 0;#P newex 1 108 460 196617 route 0 1 2 3 4 5 6 7 8 9 10 11 12 13 14 15 16 17 18 19 20 21 22 23 24 25 26 27 28 29 30 31;#P inlet 1 22 15 0;#P window linecount 2;#P newex 1 140 311 196617 jcom.return aed/1 @type msg_list @description "returns a position of boid number aed/<n> in aed (azimut-elevation-distance)";#P window linecount 1;#P newex 1 83 52 196617 zl join;#P newex 43 62 94 196617 jcom.xyz2aed.mxt;#P connect 40 0 36 0;#P connect 3 0 36 0;#P connect 36 0 1 0;#P connect 1 0 4 0;#P connect 4 0 2 0;#P connect 4 1 5 0;#P connect 4 2 6 0;#P connect 36 1 0 0;#P connect 0 0 1 1;#P connect 4 3 7 0;#P connect 4 4 8 0;#P connect 4 5 9 0;#P connect 4 6 10 0;#P connect 4 7 11 0;#P connect 4 8 12 0;#P connect 4 9 13 0;#P connect 4 10 14 0;#P connect 4 11 15 0;#P connect 4 12 16 0;#P connect 4 13 17 0;#P connect 4 14 18 0;#P connect 4 15 19 0;#P connect 4 16 20 0;#P connect 4 17 21 0;#P connect 4 18 22 0;#P connect 4 19 23 0;#P connect 4 20 24 0;#P connect 4 21 25 0;#P connect 4 22 26 0;#P connect 4 23 27 0;#P connect 4 24 28 0;#P connect 4 25 29 0;#P connect 4 26 30 0;#P connect 4 27 31 0;#P connect 4 28 32 0;#P connect 4 29 33 0;#P connect 4 30 34 0;#P connect 4 31 35 0;#P connect 1 0 37 0;#P connect 39 0 38 0;#P connect 37 0 39 0;#P pop;#P newobj 324 301 33 196617 p aed;#P toggle 685 133 15 0;#P newex 763 159 27 196617 int;#P newex 763 133 84 196617 expr 1000.0/$f1;#P newex 685 192 57 196617 qmetro 15;#P newex 373 301 384 196617 jcom.return flock @type msg_list @description "returns a list of the boids position";#P newex 422 278 404 196617 jcom.return dumpout @type msg_list @description "returns the state of all parameter";#P window linecount 2;#P newex 451 201 55 196617 prepend attractpt;#P window linecount 1;#P newex 373 254 59 196617 boids3d 32;#P inlet 21 36 15 0;#P connect 0 0 13 0;#P connect 1 0 10 0;#P connect 1 0 9 0;#P connect 13 16 14 0;#P connect 14 0 17 0;#P connect 13 13 1 0;#P connect 13 15 1 0;#P connect 13 14 1 0;#P connect 13 11 1 0;#P connect 13 12 1 0;#P connect 13 10 1 0;#P connect 13 9 1 0;#P connect 13 7 1 0;#P connect 13 8 1 0;#P connect 13 6 1 0;#P connect 13 5 1 0;#P connect 13 4 1 0;#P connect 13 3 1 0;#P connect 13 2 1 0;#P connect 13 1 1 0;#P connect 13 0 1 0;#P fasten 17 0 1 0 378 242 378 242;#P fasten 16 0 1 0 534 242 378 242;#P fasten 15 0 1 0 612 242 378 242;#P fasten 2 0 1 0 456 242 378 242;#P fasten 5 0 1 0 690 242 378 242;#P connect 1 0 4 0;#P connect 1 1 3 0;#P connect 14 1 11 0;#P connect 11 0 2 0;#P connect 12 0 2 0;#P connect 11 1 12 0;#P connect 14 2 16 0;#P connect 14 3 15 0;#P connect 14 4 8 0;#P connect 8 0 5 0;#P connect 7 0 5 1;#P connect 14 5 6 0;#P connect 6 0 7 0;#P pop;