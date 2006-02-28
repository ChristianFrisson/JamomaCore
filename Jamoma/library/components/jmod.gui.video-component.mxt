max v2;
#N vpatcher 521 235 1221 670;
#P window setfont "Sans Serif" 9.;
#P window linecount 1;
#P hidden newex 114 381 193 9109513 send $1_FROM_GUI_VIDEO_COMPONENT;
#P hidden newex 114 142 76 9109513 prepend preview;
#P hidden newex 317 298 65 9109513 prepend mute;
#P hidden newex 271 240 70 9109513 prepend freeze;
#P hidden newex 235 164 75 9109513 prepend bypass;
#P window linecount 2;
#P hidden newex 359 324 306 9109513 jmod.message $1 /direct @type generic @description "Send messages directly to the jitter external embedded in the module.";
#N comlet dumpout;
#P hidden outlet 50 72 15 0;
#P window linecount 1;
#P hidden newex 236 85 396 9109513 jmod.message.mxt $1 /genframe @description "Forces a frame of output to be sent.";
#P objectname pwindow_gate[5];
#P window linecount 2;
#P hidden newex 320 252 307 9109513 jmod.parameter.mxt $1 /mute @type toggle @description "Mutes (turns off) the module's algorithm - generating no output.";
#P objectname pwindow_gate[4];
#P hidden newex 281 186 322 9109513 jmod.parameter.mxt $1 /freeze @type toggle @description "Freezes the last frame of output from the module's processing algorithm.";
#P objectname pwindow_gate[3];
#P hidden newex 236 120 358 9109513 jmod.parameter.mxt $1 /bypass @type toggle @description "Bypasses the video processing algorithm in the module - allowing unaltered video through.";
#P objectname pwindow_gate[2];
#P hidden newex 114 10 307 9109513 jmod.parameter.mxt $1 /preview @type toggle @description "Turns on/off the video display in the module's preview window.";
#P objectname pwindow_gate[1];
#N comlet video input for previewing;
#P hidden inlet 200 65 15 0;
#P window linecount 1;
#P hidden newex 181 96 29 9109513 gate;
#P objectname pwindow_gate;
#P user jit.pwindow -1 -1 62 47 0 1 0 0 1 0;
#P objectname pwindow;
#P hidden connect 1 0 0 0;
#P hidden connect 0 1 8 0;
#P hidden connect 3 1 13 0;
#P hidden connect 12 0 14 0;
#P hidden connect 11 0 14 0;
#P hidden connect 10 0 14 0;
#P hidden connect 13 0 14 0;
#P hidden fasten 3 1 1 0 416 50 186 50;
#P hidden connect 2 0 1 1;
#P hidden connect 4 1 10 0;
#P hidden connect 5 1 11 0;
#P hidden connect 6 1 12 0;
#P pop;
