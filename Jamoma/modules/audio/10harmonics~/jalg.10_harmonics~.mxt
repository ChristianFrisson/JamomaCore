max v2;#N vpatcher 75 70 601 477;#P window setfont "Sans Serif" 9.;#P window linecount 1;#P newex 430 213 35 196617 * 0.1;#P newex 14 52 207 196617 jcom.oscroute /frequency /harmonic_gains;#N comlet OSC messages;#P inlet 14 29 15 0;#N comlet OSC messages;#P outlet 14 356 15 0;#N comlet Signal output;#P outlet 126 355 15 0;#P newex 430 143 37 196617 zl rev;#P newex 127 204 37 196617 zl rev;#P newex 430 189 34 196617 dbtoa;#P newex 127 241 61 196617 unpack 0. 0;#P newex 127 175 52 196617 listfunnel;#P message 127 123 133 196617 1. 2. 3. 4. 5. 6. 7. 8. 9. 10.;#P newex 127 151 145 196617 vexpr $f1*$f2;#P newex 430 165 61 196617 unpack 0. 0;#P newex 430 114 52 196617 listfunnel;#P newex 127 324 132 196617 ioscbank~ 10 64 512 4096;#P newex 127 95 145 196617 t b f;#P newex 279 95 114 196617 loadmess scalarmode 1;#P connect 14 0 15 0;#P connect 2 0 12 0;#P fasten 15 0 1 0 19 89 132 89;#P connect 1 0 6 0;#P fasten 0 0 5 0 284 146 132 146;#P connect 6 0 5 0;#P connect 5 0 7 0;#P connect 7 0 10 0;#P connect 10 0 8 0;#P connect 8 0 2 0;#P fasten 16 0 2 1 435 277 172 277;#P fasten 8 1 2 3 183 304 252 304;#P fasten 4 1 2 3 486 304 252 304;#P connect 1 1 5 1;#P fasten 15 1 3 0 117 83 435 83;#P connect 3 0 11 0;#P connect 11 0 4 0;#P connect 4 0 9 0;#P connect 9 0 16 0;#P pop;