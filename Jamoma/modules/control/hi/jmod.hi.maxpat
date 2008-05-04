{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 62.0, 142.0, 810.0, 450.0 ],
		"bglocked" : 0,
		"defrect" : [ 62.0, 142.0, 810.0, 450.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.970939,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "%TODO: device_menu is currently @type msg_menu. Also have to check out if the on/off toggle work as supposed to.",
					"linecount" : 2,
					"fontsize" : 10.970939,
					"fontname" : "Verdana",
					"patching_rect" : [ 17.0, 330.0, 340.0, 33.0 ],
					"id" : "obj-28",
					"numinlets" : 1,
					"numoutlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Off",
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "int" ],
					"texton" : "On",
					"presentation_rect" : [ 9.0, 32.0, 43.0, 20.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 237.0, 43.0, 20.0 ],
					"id" : "obj-25",
					"numinlets" : 1,
					"presentation" : 1,
					"mode" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "textbutton",
					"text" : "Init",
					"fontsize" : 10.0,
					"outlettype" : [ "int", "", "int" ],
					"presentation_rect" : [ 57.0, 32.0, 43.0, 20.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 307.0, 43.0, 20.0 ],
					"id" : "obj-26",
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 56.0, 79.0, 193.0, 16.0 ],
					"id" : "obj-1",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"fontname" : "Verdana",
					"patching_rect" : [ 63.0, 96.0, 135.0, 16.0 ],
					"id" : "obj-2",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 32.0, 45.0, 18.0 ],
					"id" : "obj-3",
					"numinlets" : 0,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[3]",
					"text" : "jcom.message hi_init @type msg_generic @range/clipmode none @description \"Initialization of hi object\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 332.0, 307.0, 30.0 ],
					"id" : "obj-7",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "hi_on[1]",
					"text" : "jcom.parameter hi_on @type msg_toggle @range/clipmode none @description \"Turn polling on\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 261.0, 278.0, 30.0 ],
					"id" : "obj-9",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"hint" : "Device",
					"varname" : "device_menu",
					"fontsize" : 9.873845,
					"outlettype" : [ "int", "", "" ],
					"items" : [ "GM-4200 Gamer Optical Mouse", ",", "Apple IR", ",", "Apple Internal Keyboard / Trackpad", ",", "Apple Internal Keyboard / Trackpad 2", ",", "Trackpad", ",", "Trackpad 2", ",", "Apple Internal Keyboard / Trackpad 3" ],
					"presentation_rect" : [ 127.0, 33.0, 155.0, 18.0 ],
					"labelclick" : 1,
					"types" : [  ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 167.0, 155.0, 18.0 ],
					"id" : "obj-10",
					"numinlets" : 1,
					"presentation" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "device_menu[1]",
					"text" : "jcom.parameter device_menu @type msg_menu @range/clipmode none @description \"Choose which HI device to use\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 192.0, 342.0, 30.0 ],
					"id" : "obj-13",
					"numinlets" : 1,
					"numoutlets" : 3
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 73.0, 49.0, 18.0 ],
					"id" : "obj-14",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 52.0, 91.0, 18.0 ],
					"id" : "obj-15",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rmax refresh",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 17.0, 265.0, 68.0, 28.0 ],
					"id" : "obj-16",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : ";\rjcom.init bang",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 17.0, 231.0, 80.0, 28.0 ],
					"id" : "obj-17",
					"numinlets" : 2,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jalg.hi.maxpat",
					"fontsize" : 9.873845,
					"outlettype" : [ "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 406.0, 132.0, 82.0, 18.0 ],
					"id" : "obj-18",
					"numinlets" : 1,
					"numoutlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub jmod.hi @size 1U-half @module_type control @description \"Use human interface devices (gamepads and joysticks).\"",
					"linecount" : 2,
					"fontsize" : 9.873845,
					"outlettype" : [ "", "" ],
					"fontname" : "Verdana",
					"patching_rect" : [ 17.0, 130.0, 351.0, 30.0 ],
					"id" : "obj-19",
					"numinlets" : 1,
					"numoutlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"outlettype" : [ "" ],
					"patching_rect" : [ 17.0, 93.0, 24.0, 24.0 ],
					"id" : "obj-20",
					"numinlets" : 0,
					"numoutlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"patching_rect" : [ 17.0, 184.0, 24.0, 24.0 ],
					"id" : "obj-21",
					"numinlets" : 1,
					"numoutlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/Jamoma",
					"fontsize" : 10.970939,
					"outlettype" : [ "" ],
					"color" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 0.0, 0.0, 300.0, 70.0 ],
					"id" : "obj-24",
					"numinlets" : 1,
					"presentation" : 1,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numoutlets" : 1
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-15", 1 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [ 487.5, 95.0, 415.5, 95.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-14", 0 ],
					"destination" : [ "obj-18", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-18", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 224.0, 393.0, 224.0, 393.0, 162.0, 415.5, 162.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [ 483.5, 189.0, 415.5, 189.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-26", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"midpoints" : [ 415.5, 291.0, 393.0, 291.0, 393.0, 234.0, 415.5, 234.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-25", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-15", 0 ],
					"destination" : [ "obj-14", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-15", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-19", 0 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 65.5, 124.0, 26.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [ 72.5, 124.0, 26.5, 124.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-20", 0 ],
					"destination" : [ "obj-19", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
