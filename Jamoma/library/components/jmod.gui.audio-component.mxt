max v2;
#N vpatcher 229 60 967 703;
#P window setfont "Sans Serif" 9.;
#P hidden message 395 177 55 196617 bypass \$1;
#P hidden message 301 146 65 196617 gain_midi \$1;
#P hidden inlet 217 45 15 0;
#P hidden inlet 199 45 15 0;
#P hidden comment 612 267 54 196617 Processed AUDIO;
#P hidden comment 444 272 62 196617 RAW AUDIO;
#P hidden newex 500 148 142 196617 jmod.gain~ 2;
#N comlet RAW Audio In - right;
#P hidden outlet 488 256 13 0;
#N comlet RAW Audio In - left;
#P hidden outlet 464 256 13 0;
#P hidden comment 180 24 62 196617 RAW AUDIO;
#N comlet (signal) out left;
#P hidden outlet 617 252 13 0;
#N comlet (signal) out right;
#P hidden outlet 641 252 13 0;
#P hidden comment 398 21 88 196617 Processed AUDIO;
#P hidden newex 267 536 93 196617 route num_outputs;
#P objectname jmod.parameter.mxt[3];
#P hidden newex 267 514 93 196617 route ATTRIBUTES;
#P objectname jmod.parameter.mxt[2];
#P hidden newex 267 493 93 196617 r $1_FROM_MHUB;
#P objectname jmod.parameter.mxt[1];
#P hidden message 20 386 45 196617 set \$1 0;
#P hidden inlet 443 43 15 0;
#P hidden inlet 425 43 15 0;
#P user jmod.meter~ 4 192 82 2;
#P hidden newex 243 211 185 196617 jmod.parameter $1 sr @filter_dupes 1;
#P objectname jmod.parameter.mxt;
#P user jsui 120 192 40 11 0 0 0 jmod.jsui_sr.js 0 20000 0;
#P objectname samprate;
#P hidden number 111 346 35 9 0 0 0 3 0 0 0 74 156 97 222 222 222 0 0 0;
#P hidden newex 20 345 89 196617 pvar gain_master;
#B color 7;
#P hidden newex 20 366 160 196617 jmod.parameter.gain.mxt $1 gain;
#B color 2;
#P objectname jmod.parameter.gain.mxt;
#P hidden newex 245 373 30 196617 == 0;
#P hidden newex 245 354 140 196617 jmod.message.mxt $1 enable;
#B color 1;
#P objectname jmod.parameter[2];
#P hidden newex 245 420 152 196617 jmod.parameter.mxt $1 bypass;
#B color 1;
#P objectname jmod.parameter[1];
#P hidden newex 246 398 143 196617 jmod.parameter.mxt $1 mute;
#B color 1;
#P objectname jmod.parameter;
#P user pictctrl 92 192 11 11 jmod.button.bypass.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1;
#P user pictslider 3 197 84 8 0 0 0 0 jmod.slider.knob.gain.pct 1 jmod.slider.bg.gain.pct 1 2113 0 0 157 1. 1.;
#P objectname gain_master;
#P user pictctrl 104 192 11 11 jmod.button.mute.pct 0 0 1 1 26 0 0 0 11 11 128 0 1 1 1 1;
#P user jmod.meter~ 4 195 82 2;
#P user pictctrl 0 190 162 15 jmod.bg.audio-component.pct 0 0 1 0 24 0 0 0 162 15 2 0 1 1 1 1;
#P noclick;
#P objectname background;
#P hidden connect 27 3 14 0;
#P hidden connect 27 2 1 0;
#P hidden fasten 17 0 10 0 25 406 15 406 15 341 25 341;
#P hidden connect 10 0 9 0;
#P hidden connect 9 0 17 0;
#P hidden connect 6 0 4 0;
#P hidden connect 5 0 2 0;
#P hidden connect 8 0 2 0;
#P hidden connect 10 0 11 0;
#P hidden connect 13 0 12 0;
#P hidden connect 12 0 13 0;
#P hidden connect 7 0 8 0;
#P hidden connect 4 0 6 0;
#P hidden connect 2 0 5 0;
#P hidden connect 18 0 19 0;
#P hidden connect 19 0 20 0;
#P hidden connect 9 0 32 0;
#P hidden connect 4 0 33 0;
#P hidden connect 27 0 25 0;
#P lcolor 6;
#P hidden connect 27 1 26 0;
#P lcolor 6;
#P hidden connect 33 0 27 0;
#P hidden connect 32 0 27 0;
#P hidden connect 30 0 27 1;
#P hidden connect 31 0 27 2;
#P hidden connect 27 2 23 0;
#P hidden connect 15 0 27 3;
#P hidden connect 27 3 22 0;
#P pop;
