{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 630.0, 83.0, 741.0, 375.0 ],
		"bglocked" : 0,
		"defrect" : [ 630.0, 83.0, 741.0, 375.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 0,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 0,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 200.0, 175.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-13"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p DealingWithLists",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 200.0, 205.0, 104.0, 19.0 ],
					"id" : "obj-11",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 142.0, 177.0, 966.0, 487.0 ],
						"bglocked" : 0,
						"defrect" : [ 142.0, 177.0, 966.0, 487.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TEST1dataspace/convert_lists 60. 70.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 450.0, 190.0, 317.0, 19.0 ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "60. 72.",
									"fontname" : "Verdana",
									"presentation_rect" : [ 450.0, 153.0, 0.0, 0.0 ],
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 450.0, 120.0, 47.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output cents",
									"fontname" : "Verdana",
									"presentation_rect" : [ 450.0, 188.0, 0.0, 0.0 ],
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 450.0, 155.0, 322.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TEST2dataspace/convert_lists 6000. 7200.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 75.0, 190.0, 342.0, 19.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "60. 72.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 120.0, 47.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output cents",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 75.0, 155.0, 322.0, 19.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 75.0, 40.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 440.0, 175.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-10"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p ColorDataspaceTest",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 440.0, 205.0, 118.0, 19.0 ],
					"id" : "obj-6",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 35.0, 116.0, 1062.0, 525.0 ],
						"bglocked" : 0,
						"defrect" : [ 35.0, 116.0, 1062.0, 525.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TEST/Dataspace/color/cmy2neutral 135. 155. 205.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 150.0, 215.0, 190.0, 43.0 ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdatapace/color/hsl2neutral 0. 255. 0.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 215.0, 174.0, 43.0 ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/color/hsv2neutral 0. 255. 0.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 535.0, 215.0, 190.0, 43.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "%TODO This one seems to have some serious problems with the way the color space is mapped to and from hsv.",
									"linecount" : 6,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 540.0, 270.0, 126.0, 79.0 ],
									"id" : "obj-29"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/color/rgb2neutral 118. 120. 122.",
									"linecount" : 3,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 735.0, 215.0, 181.0, 43.0 ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "118. 120. 122.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 735.0, 130.0, 86.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input rgb @output rgb",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 735.0, 155.0, 101.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "120. 100. 50.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 535.0, 130.0, 79.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input hsv @output rgb",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 535.0, 155.0, 104.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "120. 100. 50.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 130.0, 79.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input hsl @output rgb",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 350.0, 155.0, 105.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Testing convertions to neutral unit",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 145.0, 70.0, 222.0, 19.0 ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b b",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 45.0, 65.0, 34.0, 19.0 ],
									"outlettype" : [ "bang", "bang" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "120. 100. 50.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 150.0, 130.0, 79.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-5"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace color @input cmy @output rgb",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 150.0, 155.0, 101.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 45.0, 30.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-1",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 565.0, 175.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-5"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 315.0, 175.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-4"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p PitchDataspaceTest",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 315.0, 205.0, 116.0, 19.0 ],
					"id" : "obj-3",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 512.0, 101.0, 928.0, 692.0 ],
						"bglocked" : 0,
						"defrect" : [ 512.0, 101.0, 928.0, 692.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "speed2Hz calculated thus:",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 675.0, 70.0, 84.0, 43.0 ],
									"id" : "obj-65"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "message",
									"text" : "16.351599",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 200.0, 88.0, 17.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-63"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "mtof",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 170.0, 34.0, 19.0 ],
									"outlettype" : [ "" ],
									"id" : "obj-61"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 12",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 145.0, 31.0, 19.0 ],
									"outlettype" : [ "int" ],
									"id" : "obj-60"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "button",
									"numinlets" : 1,
									"numoutlets" : 1,
									"patching_rect" : [ 675.0, 120.0, 20.0, 20.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-59"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 150.0, 540.0, 97.0, 19.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-48"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/neutralspeed 2.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 505.0, 545.0, 315.0, 19.0 ],
									"id" : "obj-49"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/neutral2midi 69.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 380.0, 570.0, 319.0, 19.0 ],
									"id" : "obj-50"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/neutral2Hz 440.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 260.0, 595.0, 317.0, 19.0 ],
									"id" : "obj-51"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/neutral2cents 6900.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 620.0, 337.0, 19.0 ],
									"id" : "obj-52"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 440. 440. 440. 16.351599",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4,
									"patching_rect" : [ 135.0, 405.0, 151.0, 19.0 ],
									"outlettype" : [ "float", "float", "float", "float" ],
									"id" : "obj-53"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output cents",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 135.0, 455.0, 102.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-57"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Testing convertions from neutral unit",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 135.0, 370.0, 222.0, 19.0 ],
									"id" : "obj-46"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Testing convertions to neutral unit",
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 130.0, 65.0, 222.0, 19.0 ],
									"id" : "obj-45"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 145.0, 230.0, 97.0, 19.0 ],
									"outlettype" : [ "float", "bang" ],
									"id" : "obj-15"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 35.0, 35.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-13",
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/speed2neutral 16.351599",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 500.0, 235.0, 365.0, 19.0 ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/midi2neutral 440.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 375.0, 260.0, 326.0, 19.0 ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/Hz2neutral 440.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 255.0, 285.0, 317.0, 19.0 ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/pitch/cents2neutral 440.",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 130.0, 310.0, 331.0, 19.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 6900. 440. 69. 2.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 4,
									"patching_rect" : [ 130.0, 95.0, 107.0, 19.0 ],
									"outlettype" : [ "float", "float", "float", "float" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input speed @output Hz",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 500.0, 145.0, 106.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output Hz",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 375.0, 145.0, 104.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-3"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output Hz",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 255.0, 145.0, 101.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input cents @output Hz",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 130.0, 145.0, 112.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-1"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output speed",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 505.0, 455.0, 104.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-54"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output midi",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 380.0, 455.0, 101.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-55"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input Hz @output Hz",
									"linecount" : 4,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 260.0, 455.0, 92.0, 55.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-56"
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-61", 0 ],
									"destination" : [ "obj-63", 1 ],
									"hidden" : 0,
									"midpoints" : [ 684.5, 196.0, 753.5, 196.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-60", 0 ],
									"destination" : [ "obj-61", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-59", 0 ],
									"destination" : [ "obj-60", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-53", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 0 ],
									"destination" : [ "obj-57", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-48", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 1 ],
									"destination" : [ "obj-56", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 2 ],
									"destination" : [ "obj-55", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-53", 3 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 3 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 1 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 2 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-3", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-55", 0 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-56", 0 ],
									"destination" : [ "obj-51", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-57", 0 ],
									"destination" : [ "obj-52", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p test_units_are_nonsense",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 0,
					"patching_rect" : [ 565.0, 205.0, 147.0, 19.0 ],
					"id" : "obj-16",
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 25.0, 69.0, 1043.0, 421.0 ],
						"bglocked" : 0,
						"defrect" : [ 25.0, 69.0, 1043.0, 421.0 ],
						"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
						"openinpresentation" : 0,
						"default_fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"gridonopen" : 0,
						"gridsize" : [ 5.0, 5.0 ],
						"gridsnaponopen" : 0,
						"toolbarvisible" : 1,
						"boxanimatetime" : 200,
						"imprint" : 0,
						"metadata" : [  ],
						"boxes" : [ 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0. 3.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 100.0, 140.0, 41.0, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-11"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 100.0, 205.0, 32.5, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-12"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace nonexisting @input a @output b",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 125.0, 165.0, 217.0, 31.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-16"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/nonexisting_dataspace 0.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 100.0, 235.0, 244.0, 31.0 ],
									"id" : "obj-17"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0. 3.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 350.0, 140.0, 41.0, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-4"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 350.0, 205.0, 32.5, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-7"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input nonsense @output midi",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 375.0, 165.0, 183.0, 31.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-8"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/input_unit_is_nonsense 0.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 350.0, 235.0, 241.0, 31.0 ],
									"id" : "obj-9"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "These are tests to ensure that Max do not crash if we attempt to use none-existing dataspaces or units.",
									"linecount" : 3,
									"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 280.0, 30.0, 232.0, 43.0 ],
									"id" : "obj-2"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t 0. 3.",
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 635.0, 140.0, 41.0, 19.0 ],
									"outlettype" : [ "float", "float" ],
									"id" : "obj-14"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 1,
									"patching_rect" : [ 635.0, 205.0, 32.5, 19.0 ],
									"outlettype" : [ "float" ],
									"id" : "obj-13"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.dataspace @dataspace pitch @input midi @output nonsense",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 1,
									"fontsize" : 10.0,
									"numoutlets" : 2,
									"patching_rect" : [ 660.0, 165.0, 183.0, 31.0 ],
									"outlettype" : [ "", "" ],
									"id" : "obj-6"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "test.assert.equal TESTdataspace/output_unit_is_nonsense 0.",
									"linecount" : 2,
									"fontname" : "Verdana",
									"numinlets" : 2,
									"fontsize" : 10.0,
									"numoutlets" : 0,
									"patching_rect" : [ 635.0, 235.0, 233.0, 31.0 ],
									"id" : "obj-10"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"numinlets" : 0,
									"numoutlets" : 1,
									"patching_rect" : [ 50.0, 45.0, 25.0, 25.0 ],
									"outlettype" : [ "bang" ],
									"id" : "obj-15",
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 0 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-14", 1 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-13", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 1 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-11", 1 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 0 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-15", 0 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-13", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-7", 0 ],
									"destination" : [ "obj-9", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"default_fontsize" : 10.0,
						"fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontface" : 0,
						"default_fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "t b b",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 70.0, 80.0, 34.0, 19.0 ],
					"outlettype" : [ "bang", "bang" ],
					"id" : "obj-9"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "loadbang",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 55.0, 56.0, 19.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-8"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "button",
					"numinlets" : 1,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 30.0, 20.0, 20.0 ],
					"outlettype" : [ "bang" ],
					"id" : "obj-7"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 2,
					"patching_rect" : [ 70.0, 200.0, 67.0, 19.0 ],
					"outlettype" : [ "", "" ],
					"id" : "obj-2",
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "test.finished",
					"fontname" : "Verdana",
					"numinlets" : 1,
					"fontsize" : 10.0,
					"numoutlets" : 1,
					"patching_rect" : [ 70.0, 175.0, 100.0, 19.0 ],
					"outlettype" : [ "" ],
					"id" : "obj-1"
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-4", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 1 ],
					"destination" : [ "obj-13", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-9", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-13", 0 ],
					"destination" : [ "obj-11", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-10", 0 ],
					"destination" : [ "obj-6", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-16", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-4", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-8", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"midpoints" : [  ]
				}

			}
 ]
	}

}
