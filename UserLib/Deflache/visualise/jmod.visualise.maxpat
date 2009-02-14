{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 411.0, 44.0, 1278.0, 729.0 ],
		"bgcolor" : [ 0.1, 0.1, 0.1, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 411.0, 44.0, 1278.0, 729.0 ],
		"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
		"openinpresentation" : 1,
		"default_fontsize" : 10.0,
		"default_fontface" : 0,
		"default_fontname" : "Verdana",
		"gridonopen" : 0,
		"gridsize" : [ 5.0, 5.0 ],
		"gridsnaponopen" : 0,
		"toolbarvisible" : 1,
		"boxanimatetime" : 200,
		"imprint" : 1,
		"metadata" : [  ],
		"boxes" : [ 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in",
					"labelclick" : 0,
					"align" : 0,
					"depth" : 0,
					"ignoreclick" : 0,
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"presentation_rect" : [ 151.0, 0.0, 111.0, 19.0 ],
					"fontface" : 0,
					"menumode" : 0,
					"fontsize" : 10.0,
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"hidden" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"prefix_mode" : 0,
					"prefix" : "",
					"arrowframe" : 1,
					"items" : [ "/layout", ",", "/control", ",", "/scale", ",", "/visualise", ",", "/nd_qmetro", ",", "/nd_template_audio~", ",", "/nd_template_control", ",", "/drunk", ",", "/nd_drunk", ",", "/interfacez", ",", "/editing_this_module" ],
					"arrow" : 0,
					"types" : [  ],
					"bgcolor" : [ 0.258824, 0.258824, 0.258824, 1.0 ],
					"patching_rect" : [ 876.0, 321.0, 103.0, 19.0 ],
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"showdotfiles" : 0,
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 8,
					"underline" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"arrowlink" : 1,
					"numoutlets" : 3,
					"id" : "obj-2",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"background" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"autopopulate" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_in#",
					"triscale" : 0.9,
					"maximum" : 1,
					"ignoreclick" : 0,
					"presentation_rect" : [ 246.0, 1.0, 20.0, 19.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"format" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 841.0, 403.0, 20.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-5",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : 1,
					"mouseup" : 1,
					"outlettype" : [ "int", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "patch: Nicolas D√©flache",
					"ignoreclick" : 1,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"hidden" : 0,
					"frgb" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 872.0, 672.0, 110.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"underline" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-4",
					"fontname" : "Arial",
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "prepend /signal",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 531.0, 39.0, 89.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-3",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"patching_rect" : [ 531.0, 5.0, 23.0, 23.0 ],
					"numinlets" : 0,
					"presentation" : 0,
					"numoutlets" : 1,
					"id" : "obj-1",
					"background" : 0,
					"outlettype" : [ "" ],
					"comment" : "signal"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_min[2]",
					"triscale" : 0.9,
					"maximum" : "<none>",
					"ignoreclick" : 1,
					"presentation_rect" : [ 1.0, 17.0, 37.0, 19.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 20.0, 320.0, 44.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"numdecimalplaces" : 0,
					"textcolor" : [ 1.0, 1.0, 0.0, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-9",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : "<none>",
					"mouseup" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor2" : [ 0.819608, 0.8, 1.0, 1.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 168.0, 115.0, 211.0, 16.0 ],
					"numinlets" : 2,
					"gradient" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-11",
					"fontname" : "Arial",
					"background" : 0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor2" : [ 0.819608, 0.8, 1.0, 1.0 ],
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"patching_rect" : [ 185.0, 132.0, 138.0, 16.0 ],
					"numinlets" : 2,
					"gradient" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-43",
					"fontname" : "Arial",
					"background" : 0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "in_slash",
					"labelclick" : 0,
					"align" : 0,
					"depth" : 0,
					"ignoreclick" : 0,
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"presentation_rect" : [ 231.0, 0.0, 15.0, 19.0 ],
					"fontface" : 0,
					"menumode" : 0,
					"fontsize" : 10.0,
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"hidden" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"prefix_mode" : 0,
					"prefix" : "",
					"arrowframe" : 1,
					"items" : ".",
					"arrow" : 0,
					"types" : [  ],
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"patching_rect" : [ 314.0, 2.0, 15.0, 19.0 ],
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"showdotfiles" : 0,
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 8,
					"underline" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"arrowlink" : 1,
					"numoutlets" : 3,
					"id" : "obj-6",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"background" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"autopopulate" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in 1",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 531.0, 65.0, 58.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-7",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curve_slid",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 0,
					"settype" : 1,
					"ghostbar" : 0,
					"border_left" : 1,
					"ignoreclick" : 0,
					"compatibility" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 1.0, 95.0, 124.0, 10.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"hidden" : 0,
					"border_bottom" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 868.0, 43.0, 150.0, 17.0 ],
					"candycane" : 1,
					"border_right" : 1,
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"id" : "obj-21",
					"orientation" : 0,
					"spacing" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"background" : 0,
					"signed" : 0,
					"size" : 1,
					"border_top" : 1,
					"outlettype" : [ "", "" ],
					"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"patching_rect" : [ 227.0, 344.0, 65.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-25",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "" ],
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve",
					"triscale" : 0.9,
					"maximum" : "<none>",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 867.0, 77.0, 32.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"numdecimalplaces" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-27",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : "<none>",
					"mouseup" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "curve[1]",
					"text" : "jcom.parameter scroll-time @repetitions/allow 1 @type msg_float @range/bounds 0. 1000. @range/clipmode low @description \"Refresh time (ms) / Zoom on time axis (if 0.-1.)\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 825.0, 108.0, 589.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-50",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_max[1]",
					"text" : "jcom.parameter in_max @repetitions/allow 1 @type msg_float @description \"Maximum value of scale, calculated by autoscale over a sliding window\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 178.0, 603.0, 602.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-58",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_min[1]",
					"text" : "jcom.parameter in_min @repetitions/allow 1 @type msg_float @description \"Minimum value of scale, calculated by autoscale over a sliding window\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 182.0, 676.0, 596.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-60",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_min[1]",
					"text" : "jcom.parameter window_size @type msg_int @range/bounds 2 1150 @range/clipmode both @description \"Window size for autoscale\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 733.0, 211.0, 597.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-64",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_min",
					"triscale" : 0.9,
					"maximum" : "<none>",
					"ignoreclick" : 1,
					"presentation_rect" : [ 415.0, 90.0, 37.0, 19.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 182.0, 651.0, 33.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"numdecimalplaces" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-67",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : "<none>",
					"mouseup" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_max",
					"triscale" : 0.9,
					"maximum" : "<none>",
					"ignoreclick" : 1,
					"presentation_rect" : [ 415.0, 16.0, 36.0, 19.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 178.0, 574.0, 40.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"numdecimalplaces" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-68",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : "<none>",
					"mouseup" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_min",
					"triscale" : 0.9,
					"maximum" : "<none>",
					"ignoreclick" : 0,
					"presentation_rect" : [ 578.0, 204.0, 37.0, 19.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"cantchange" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"patching_rect" : [ 733.0, 184.0, 33.0, 19.0 ],
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"numdecimalplaces" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-71",
					"outputonclick" : 0,
					"fontname" : "Verdana",
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"triangle" : 0,
					"background" : 0,
					"minimum" : "<none>",
					"mouseup" : 0,
					"outlettype" : [ "float", "bang" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "window",
					"ignoreclick" : 1,
					"presentation_rect" : [ 540.0, 205.0, 42.0, 17.0 ],
					"fontface" : 0,
					"fontsize" : 9.0,
					"hidden" : 0,
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"patching_rect" : [ 770.0, 186.0, 42.0, 17.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"numoutlets" : 0,
					"id" : "obj-73",
					"fontname" : "Verdana",
					"background" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_function",
					"text" : "jcom.parameter module_in_function @repetitions/allow 1 @type msg_symbol @description \"Source module function of the visualisation\" @priority 6",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 884.0, 538.0, 603.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-77",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_fct",
					"labelclick" : 0,
					"align" : 0,
					"depth" : 0,
					"ignoreclick" : 0,
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"presentation_rect" : [ 262.0, 0.0, 167.0, 19.0 ],
					"fontface" : 0,
					"menumode" : 0,
					"fontsize" : 10.0,
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"hidden" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"prefix_mode" : 0,
					"prefix" : "",
					"arrowframe" : 1,
					"items" : "module_in_function",
					"arrow" : 0,
					"types" : [  ],
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"patching_rect" : [ 885.0, 512.0, 144.0, 19.0 ],
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"showdotfiles" : 0,
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"rounded" : 8,
					"underline" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"arrowlink" : 1,
					"numoutlets" : 3,
					"id" : "obj-80",
					"fontname" : "Verdana",
					"pattrmode" : 1,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"background" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"outlettype" : [ "int", "", "" ],
					"autopopulate" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_nr",
					"text" : "jcom.parameter module_in_nr @repetitions/allow 1 @type msg_int @description \"Source module instance of the visualization\" @priority 2",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 843.0, 441.0, 584.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-84",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter module_in @repetitions/allow 1 @type msg_symbol @description \"Source module of the visualization\" @priority 1",
					"linecount" : 2,
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 876.0, 355.0, 545.0, 31.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 3,
					"id" : "obj-86",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 9.873845,
					"hidden" : 0,
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"patching_rect" : [ 100.0, 120.0, 32.5, 16.0 ],
					"numinlets" : 2,
					"gradient" : 0,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-95",
					"fontname" : "Verdana",
					"background" : 0,
					"outlettype" : [ "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mapper",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"patching_rect" : [ 12.0, 288.0, 1189.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"numoutlets" : 12,
					"id" : "obj-98",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "clear", "", "", "float", "float", "float", "", "", "", "", "", "clear" ],
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 32.0, 71.0, 674.0, 611.0 ],
						"bglocked" : 0,
						"defrect" : [ 32.0, 71.0, 674.0, 611.0 ],
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
									"text" : "autoscale disabled for now",
									"fontsize" : 14.0,
									"patching_rect" : [ 43.0, 248.0, 180.0, 23.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-6",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 420.0, 502.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-5",
									"comment" : "to refresh-time display"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p scroll-time",
									"fontsize" : 10.0,
									"patching_rect" : [ 364.0, 236.0, 73.0, 19.0 ],
									"numinlets" : 2,
									"numoutlets" : 2,
									"id" : "obj-54",
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 782.0, 261.0, 658.0, 565.0 ],
										"bglocked" : 0,
										"defrect" : [ 782.0, 261.0, 658.0, 565.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "set 1 $1",
													"fontsize" : 10.0,
													"patching_rect" : [ 328.0, 473.0, 52.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-14",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 327.0, 501.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-22",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "not really correct, but is just for display of time zoom when using external scroll-time message",
													"linecount" : 3,
													"fontsize" : 10.0,
													"patching_rect" : [ 391.0, 438.0, 228.0, 43.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-18",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 10.0,
													"patching_rect" : [ 327.0, 439.0, 61.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-13",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1000.",
													"fontsize" : 10.0,
													"patching_rect" : [ 329.0, 396.0, 48.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-12",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "- 2.",
													"fontsize" : 10.0,
													"patching_rect" : [ 329.0, 376.0, 32.5, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-11",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p explinlog",
													"fontsize" : 9.873845,
													"patching_rect" : [ 327.0, 417.0, 63.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-10",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 30.0, 89.0, 556.0, 508.0 ],
														"bglocked" : 0,
														"defrect" : [ 30.0, 89.0, 556.0, 508.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"comment" : "output 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "float" ],
																	"comment" : "input 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 2",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "1",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 3",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-19",
																	"outlettype" : [ "float" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow(2\\,($f1*15)/2.)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "log/exp curve",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-24",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale control",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-25",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-26",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "arg 1 : initial curve value",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-27",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 2 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 87.0, 283.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-4",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 86.0, 426.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-3",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontsize" : 10.0,
													"patching_rect" : [ 38.0, 88.0, 32.5, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 24.0, -1.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"fontsize" : 10.0,
													"patching_rect" : [ 24.0, 29.0, 32.5, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-53",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 2",
													"fontsize" : 10.0,
													"patching_rect" : [ 38.0, 126.0, 52.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-52",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 38.0, 58.0, 32.5, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-20",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontsize" : 10.0,
													"patching_rect" : [ 33.0, 305.0, 54.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-51",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 10.0,
													"patching_rect" : [ 74.0, 333.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-38",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "-0.139",
													"fontsize" : 10.0,
													"patching_rect" : [ 318.0, 144.0, 44.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-26",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "multislider",
													"varname" : "curve_slid[1]",
													"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
													"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
													"compatibility" : 1,
													"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
													"presentation_rect" : [ 513.0, 92.0, 12.0, 88.0 ],
													"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
													"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"patching_rect" : [ 127.0, 101.0, 10.0, 31.0 ],
													"numinlets" : 1,
													"setminmax" : [ 0.0, 1.0 ],
													"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
													"presentation" : 1,
													"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 2,
													"contdata" : 1,
													"id" : "obj-33",
													"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
													"outlettype" : [ "", "" ],
													"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "multislider",
													"varname" : "curve_slid",
													"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
													"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
													"compatibility" : 1,
													"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
													"presentation_rect" : [ 648.0, 102.0, 10.0, 29.0 ],
													"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
													"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"patching_rect" : [ 253.0, 161.0, 10.0, 31.0 ],
													"numinlets" : 1,
													"setminmax" : [ -0.53, 0.5 ],
													"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
													"presentation" : 1,
													"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 2,
													"contdata" : 1,
													"id" : "obj-8",
													"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
													"outlettype" : [ "", "" ],
													"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"varname" : "curve",
													"triscale" : 0.9,
													"presentation_rect" : [ 618.0, 84.0, 42.0, 19.0 ],
													"fontsize" : 10.0,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 247.0, 199.0, 44.0, 19.0 ],
													"hbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"presentation" : 1,
													"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
													"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-9",
													"fontname" : "Verdana",
													"triangle" : 0,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontsize" : 10.0,
													"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
													"patching_rect" : [ 205.0, 199.0, 34.0, 19.0 ],
													"numinlets" : 2,
													"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
													"numoutlets" : 1,
													"id" : "obj-30",
													"fontname" : "Verdana",
													"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "multislider",
													"varname" : "curve_disp",
													"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
													"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
													"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
													"presentation_rect" : [ 601.0, 87.0, 33.0, 29.0 ],
													"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
													"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"patching_rect" : [ 266.0, 296.0, 33.0, 31.0 ],
													"numinlets" : 1,
													"setminmax" : [ 0.0, 1.0 ],
													"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
													"presentation" : 1,
													"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-48",
													"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
													"size" : 32,
													"outlettype" : [ "", "" ],
													"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 10.0,
													"patching_rect" : [ 285.0, 247.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-7",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontsize" : 10.0,
													"patching_rect" : [ 309.0, 102.0, 54.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p display",
													"fontsize" : 9.873845,
													"patching_rect" : [ 266.0, 269.0, 53.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 9.0, 62.0, 321.0, 413.0 ],
														"bglocked" : 0,
														"defrect" : [ 9.0, 62.0, 321.0, 413.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p explinlog",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 193.0, 111.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 92.0, 356.0, 556.0, 508.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 92.0, 356.0, 556.0, 508.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																					"fontsize" : 10.793149,
																					"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-1",
																					"fontname" : "Bell MT"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "made by Tom Mays",
																					"fontsize" : 10.793149,
																					"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-2",
																					"fontname" : "Bell MT"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-3",
																					"comment" : "output 0. to 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-4",
																					"outlettype" : [ "float" ],
																					"comment" : "input 0. to 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-5",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow($f1\\,$f2)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-6",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "abs 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"id" : "obj-7",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t f f",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"id" : "obj-8",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 2",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-9",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "< 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-10",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "1",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-11",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sel 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"id" : "obj-12",
																					"fontname" : "Verdana",
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 1.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-13",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 1.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-14",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-15",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-16",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 3",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"id" : "obj-17",
																					"fontname" : "Verdana",
																					"outlettype" : [ "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-18",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-19",
																					"outlettype" : [ "" ],
																					"comment" : "curve (-1. <= x <= 1.)"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-20",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-21",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow(2\\,($f1*15)/2.)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"id" : "obj-22",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow($f1\\,$f2)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-23",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "log/exp curve",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-24",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale control",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-25",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																					"linecount" : 3,
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-26",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "arg 1 : initial curve value",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-27",
																					"fontname" : "Verdana"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 1 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 1 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-23", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 2 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-17", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 1 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"fontface" : 0,
																		"fontsize" : 10.0,
																		"default_fontname" : "Verdana",
																		"default_fontsize" : 10.0,
																		"fontname" : "Verdana"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 214.0, 14.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 0",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 151.0, 58.0, 50.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 24.0, 338.0, 265.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 24.0, 327.0, 103.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-5",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 191.0, 38.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "float" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 19.0, 38.0, 134.0, 42.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-7",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 60.0, 258.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-8",
																	"comment" : "out to multislider"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl group 32",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 236.0, 65.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"patching_rect" : [ 30.0, 107.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 32",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 30.0, 129.0, 40.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0 32 0. 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 150.0, 86.0, 18.0 ],
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "attacher un multislider float avec range de 0. ‚àö‚Ä† 1. pour visualiser la courbe",
																	"linecount" : 4,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 80.0, 259.0, 132.0, 54.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-16",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.5, 93.0, 39.0, 93.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 223.0, 32.0, 160.5, 32.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p explinlog",
													"fontsize" : 9.873845,
													"patching_rect" : [ 125.0, 221.0, 63.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-36",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 30.0, 89.0, 556.0, 508.0 ],
														"bglocked" : 0,
														"defrect" : [ 30.0, 89.0, 556.0, 508.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"comment" : "output 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "float" ],
																	"comment" : "input 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 2",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "1",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 3",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-19",
																	"outlettype" : [ "float" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow(2\\,($f1*15)/2.)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "log/exp curve",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-24",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale control",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-25",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-26",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "arg 1 : initial curve value",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-27",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 2 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "on peut personaliser sa courbe ici",
													"fontsize" : 10.0,
													"patching_rect" : [ 190.0, 221.0, 194.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-32",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"fontsize" : 10.0,
													"patching_rect" : [ 121.0, 313.0, 60.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-31",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 2.",
													"fontsize" : 10.0,
													"patching_rect" : [ 121.0, 287.0, 32.5, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-29",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* 1000.",
													"fontsize" : 10.0,
													"patching_rect" : [ 121.0, 260.0, 49.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-24",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 10.0,
													"patching_rect" : [ 121.0, 144.0, 61.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-21",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "metro",
													"fontsize" : 10.0,
													"patching_rect" : [ 87.0, 360.0, 40.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-19",
													"fontname" : "Verdana",
													"outlettype" : [ "bang" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-51", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-19", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-36", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-52", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 1 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "i would have prefered if autoscale could provide min and max of signal on specified window (instead of min and max of resulting scale).",
									"linecount" : 3,
									"fontsize" : 11.595187,
									"patching_rect" : [ 291.0, 284.0, 257.0, 46.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-47",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p window-size",
									"fontsize" : 10.0,
									"patching_rect" : [ 228.0, 224.0, 82.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-68",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 44.0, 640.0, 480.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 44.0, 640.0, 480.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "couples that work well for me:\nscroll time (ms) -- window size (samples)\n400 -- 300\n136 -- 550\n40 -- 550\n5 -- 700\n2 -- 1000\n\n\n\n",
													"linecount" : 10,
													"fontsize" : 10.0,
													"patching_rect" : [ 279.0, 304.0, 357.0, 128.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-4",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "in this test patch we assume that when the signal changes a lot, the user has chosen short scroll time, and needs a large window.",
													"linecount" : 2,
													"fontsize" : 10.0,
													"patching_rect" : [ 285.0, 223.0, 357.0, 31.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-3",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "on peut personaliser sa courbe ici",
													"fontsize" : 10.0,
													"patching_rect" : [ 177.0, 99.0, 194.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-32",
													"fontname" : "Verdana"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 152.0, 347.0, 25.0, 25.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-2",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 113.0, 49.0, 25.0, 25.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-1",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1150.",
													"fontsize" : 10.0,
													"patching_rect" : [ 58.0, 204.0, 51.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-67",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1000.",
													"fontsize" : 10.0,
													"patching_rect" : [ 57.0, 179.0, 54.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-66",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "* -1.",
													"fontsize" : 10.0,
													"patching_rect" : [ 141.0, 159.0, 35.0, 19.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-64",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.29",
													"fontsize" : 10.0,
													"patching_rect" : [ 231.0, 71.0, 33.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-52",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "multislider",
													"varname" : "curve_slid[2]",
													"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
													"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
													"compatibility" : 1,
													"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
													"presentation_rect" : [ 1037.0, 314.0, 10.0, 29.0 ],
													"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
													"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"patching_rect" : [ 166.0, 88.0, 10.0, 31.0 ],
													"numinlets" : 1,
													"setminmax" : [ -0.53, 0.5 ],
													"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
													"presentation" : 1,
													"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 2,
													"contdata" : 1,
													"id" : "obj-53",
													"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
													"outlettype" : [ "", "" ],
													"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"varname" : "curve[1]",
													"triscale" : 0.9,
													"presentation_rect" : [ 1031.0, 352.0, 42.0, 19.0 ],
													"fontsize" : 10.0,
													"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"patching_rect" : [ 159.0, 128.0, 44.0, 19.0 ],
													"hbgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"numinlets" : 1,
													"presentation" : 1,
													"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
													"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-54",
													"fontname" : "Verdana",
													"triangle" : 0,
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "multislider",
													"varname" : "curve_disp[1]",
													"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
													"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
													"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
													"presentation_rect" : [ 1050.0, 449.0, 33.0, 29.0 ],
													"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
													"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
													"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
													"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
													"patching_rect" : [ 179.0, 223.0, 33.0, 31.0 ],
													"numinlets" : 1,
													"setminmax" : [ 0.0, 1.0 ],
													"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
													"presentation" : 1,
													"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
													"numoutlets" : 2,
													"id" : "obj-56",
													"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
													"size" : 32,
													"outlettype" : [ "", "" ],
													"frozen_box_attributes" : [ "bgcolor", "slidercolor" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "1",
													"fontsize" : 10.0,
													"patching_rect" : [ 198.0, 174.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-57",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.init",
													"fontsize" : 10.0,
													"patching_rect" : [ 222.0, 29.0, 54.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-58",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p display",
													"fontsize" : 9.873845,
													"patching_rect" : [ 179.0, 196.0, 53.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-59",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 9.0, 62.0, 321.0, 413.0 ],
														"bglocked" : 0,
														"defrect" : [ 9.0, 62.0, 321.0, 413.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "p explinlog",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 193.0, 111.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"patcher" : 																	{
																		"fileversion" : 1,
																		"rect" : [ 92.0, 356.0, 556.0, 508.0 ],
																		"bglocked" : 0,
																		"defrect" : [ 92.0, 356.0, 556.0, 508.0 ],
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
																		"boxes" : [ 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																					"fontsize" : 10.793149,
																					"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-1",
																					"fontname" : "Bell MT"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "made by Tom Mays",
																					"fontsize" : 10.793149,
																					"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-2",
																					"fontname" : "Bell MT"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "outlet",
																					"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-3",
																					"comment" : "output 0. to 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-4",
																					"outlettype" : [ "float" ],
																					"comment" : "input 0. to 1."
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-5",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow($f1\\,$f2)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-6",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "abs 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"id" : "obj-7",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "t f f",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"id" : "obj-8",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "+ 2",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-9",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "< 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-10",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "1",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-11",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "sel 0.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 2,
																					"id" : "obj-12",
																					"fontname" : "Verdana",
																					"outlettype" : [ "bang", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 1.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-13",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "!- 1.",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-14",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-15",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "number",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-16",
																					"fontname" : "Verdana",
																					"outlettype" : [ "int", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "gate 3",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 3,
																					"id" : "obj-17",
																					"fontname" : "Verdana",
																					"outlettype" : [ "", "", "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-18",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "inlet",
																					"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																					"numinlets" : 0,
																					"numoutlets" : 1,
																					"id" : "obj-19",
																					"outlettype" : [ "" ],
																					"comment" : "curve (-1. <= x <= 1.)"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-20",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "flonum",
																					"triscale" : 0.9,
																					"fontsize" : 9.873845,
																					"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																					"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																					"numinlets" : 1,
																					"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																					"numoutlets" : 2,
																					"id" : "obj-21",
																					"fontname" : "Verdana",
																					"outlettype" : [ "float", "bang" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow(2\\,($f1*15)/2.)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 1,
																					"id" : "obj-22",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "newobj",
																					"text" : "expr pow($f1\\,$f2)",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																					"numinlets" : 2,
																					"numoutlets" : 1,
																					"id" : "obj-23",
																					"fontname" : "Verdana",
																					"outlettype" : [ "" ]
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "log/exp curve",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-24",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "scale control",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-25",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																					"linecount" : 3,
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-26",
																					"fontname" : "Verdana"
																				}

																			}
, 																			{
																				"box" : 																				{
																					"maxclass" : "comment",
																					"text" : "arg 1 : initial curve value",
																					"fontsize" : 9.873845,
																					"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																					"numinlets" : 1,
																					"numoutlets" : 0,
																					"id" : "obj-27",
																					"fontname" : "Verdana"
																				}

																			}
 ],
																		"lines" : [ 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-11", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-9", 0 ],
																					"destination" : [ "obj-16", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-16", 0 ],
																					"destination" : [ "obj-17", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 1 ],
																					"destination" : [ "obj-6", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-4", 0 ],
																					"destination" : [ "obj-15", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-15", 0 ],
																					"destination" : [ "obj-17", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 2 ],
																					"destination" : [ "obj-14", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-14", 0 ],
																					"destination" : [ "obj-23", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-23", 0 ],
																					"destination" : [ "obj-13", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-13", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-17", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-6", 0 ],
																					"destination" : [ "obj-18", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-18", 0 ],
																					"destination" : [ "obj-3", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-6", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-5", 0 ],
																					"destination" : [ "obj-22", 0 ],
																					"hidden" : 0,
																					"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-22", 0 ],
																					"destination" : [ "obj-21", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-21", 0 ],
																					"destination" : [ "obj-23", 1 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-19", 0 ],
																					"destination" : [ "obj-20", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-20", 0 ],
																					"destination" : [ "obj-12", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 0 ],
																					"destination" : [ "obj-11", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-12", 1 ],
																					"destination" : [ "obj-8", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 0 ],
																					"destination" : [ "obj-10", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-10", 0 ],
																					"destination" : [ "obj-9", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-8", 1 ],
																					"destination" : [ "obj-7", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
, 																			{
																				"patchline" : 																				{
																					"source" : [ "obj-7", 0 ],
																					"destination" : [ "obj-5", 0 ],
																					"hidden" : 0,
																					"midpoints" : [  ]
																				}

																			}
 ]
																	}
,
																	"saved_object_attributes" : 																	{
																		"globalpatchername" : "",
																		"default_fontface" : 0,
																		"fontface" : 0,
																		"fontsize" : 10.0,
																		"default_fontname" : "Verdana",
																		"default_fontsize" : 10.0,
																		"fontname" : "Verdana"
																	}

																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 214.0, 14.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"outlettype" : [ "" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 1 0",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 151.0, 58.0, 50.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 24.0, 338.0, 265.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 24.0, 327.0, 103.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-5",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 191.0, 38.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"outlettype" : [ "float" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 19.0, 38.0, 134.0, 42.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-7",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 60.0, 258.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-8",
																	"comment" : "out to multislider"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl group 32",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 236.0, 65.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "button",
																	"patching_rect" : [ 30.0, 107.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "Uzi 32",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 30.0, 129.0, 40.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "bang", "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "scale 0 32 0. 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 60.0, 150.0, 86.0, 18.0 ],
																	"numinlets" : 6,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "attacher un multislider float avec range de 0. ‚àö‚Ä† 1. pour visualiser la courbe",
																	"linecount" : 4,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 80.0, 259.0, 132.0, 54.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-16",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 2 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 223.0, 32.0, 160.5, 32.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-3", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-1", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 160.5, 93.0, 39.0, 93.0 ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p explinlog",
													"fontsize" : 9.873845,
													"patching_rect" : [ 38.0, 148.0, 63.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-60",
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 30.0, 89.0, 556.0, 508.0 ],
														"bglocked" : 0,
														"defrect" : [ 30.0, 89.0, 556.0, 508.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "email : tmays@free.fr - web : http://www.tommays.net",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-1",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"fontsize" : 10.793149,
																	"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"fontname" : "Bell MT"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"comment" : "output 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "" ],
																	"comment" : "input 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 2",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "1",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-11",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-12",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-14",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-16",
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 3",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 3,
																	"id" : "obj-17",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-18",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-19",
																	"outlettype" : [ "float" ],
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-20",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"fontsize" : 9.873845,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																	"numinlets" : 1,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numoutlets" : 2,
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow(2\\,($f1*15)/2.)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-22",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-23",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "log/exp curve",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-24",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale control",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-25",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-26",
																	"fontname" : "Verdana"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "arg 1 : initial curve value",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-27",
																	"fontname" : "Verdana"
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-11", 0 ],
																	"destination" : [ "obj-16", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-16", 0 ],
																	"destination" : [ "obj-17", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 1 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-17", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 2 ],
																	"destination" : [ "obj-14", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-14", 0 ],
																	"destination" : [ "obj-23", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-23", 0 ],
																	"destination" : [ "obj-13", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-17", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-18", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-18", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-6", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-22", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-22", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-23", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-19", 0 ],
																	"destination" : [ "obj-20", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-20", 0 ],
																	"destination" : [ "obj-12", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-11", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 1 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 1 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-7", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"fontsize" : 10.0,
													"patching_rect" : [ 58.0, 231.0, 61.0, 19.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-47",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ]
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-64", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-60", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-57", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-57", 0 ],
													"destination" : [ "obj-59", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-53", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-52", 0 ],
													"destination" : [ "obj-53", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-52", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-47", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-66", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-67", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-66", 0 ],
													"destination" : [ "obj-67", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "expr -1*$i1 + 1",
									"fontsize" : 9.873845,
									"patching_rect" : [ 395.0, 95.0, 90.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-17",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 95.0, 496.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-50",
									"comment" : "to curve display"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 293.0, 575.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-49",
									"comment" : "to in_max"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend slidercolor",
									"fontsize" : 9.873845,
									"patching_rect" : [ 234.0, 552.0, 106.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-43",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "flonum",
									"maximum" : 1.0,
									"fontsize" : 11.595187,
									"patching_rect" : [ 297.0, 495.0, 43.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-44",
									"fontname" : "Arial",
									"minimum" : 0.0,
									"outlettype" : [ "float", "bang" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "comment",
									"text" : "Alpha",
									"fontsize" : 11.595187,
									"patching_rect" : [ 311.0, 476.0, 45.0, 20.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-45",
									"fontname" : "Arial"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pak 1. 0. 0. 1.",
									"fontsize" : 11.595187,
									"patching_rect" : [ 234.0, 526.0, 81.0, 20.0 ],
									"numinlets" : 4,
									"numoutlets" : 1,
									"id" : "obj-46",
									"fontname" : "Arial",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p color-change-when-auto-scaling",
									"fontsize" : 9.0,
									"patching_rect" : [ 223.0, 367.0, 164.0, 17.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-42",
									"fontname" : "Arial",
									"outlettype" : [ "float" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 705.0, 233.0, 622.0, 503.0 ],
										"bglocked" : 0,
										"defrect" : [ 705.0, 233.0, 622.0, 503.0 ],
										"openrect" : [ 0.0, 0.0, 0.0, 0.0 ],
										"openinpresentation" : 0,
										"default_fontsize" : 12.0,
										"default_fontface" : 0,
										"default_fontname" : "Arial",
										"gridonopen" : 0,
										"gridsize" : [ 15.0, 15.0 ],
										"gridsnaponopen" : 0,
										"toolbarvisible" : 1,
										"boxanimatetime" : 200,
										"imprint" : 0,
										"metadata" : [  ],
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scaling factor for disappearance of curve when min or max change",
													"linecount" : 2,
													"fontsize" : 9.0,
													"patching_rect" : [ 362.0, 350.0, 150.0, 27.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-65",
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"patching_rect" : [ 372.0, 377.0, 50.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-64",
													"fontname" : "Arial",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 1.93 2. 0. 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 131.0, 368.0, 86.5, 17.0 ],
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-63",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"patching_rect" : [ 131.0, 389.0, 50.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-61",
													"fontname" : "Arial",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 0. 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 132.0, 420.0, 46.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 1,
													"id" : "obj-60",
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 163.0, 35.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-59",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 321.0, 162.0, 35.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-58",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"patching_rect" : [ 195.0, 317.0, 50.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-56",
													"fontname" : "Arial",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"patching_rect" : [ 65.0, 273.0, 50.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-54",
													"fontname" : "Arial",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.",
													"fontsize" : 12.0,
													"patching_rect" : [ 451.0, 251.0, 32.5, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-42",
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 451.0, 222.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-43",
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 2.",
													"fontsize" : 9.0,
													"patching_rect" : [ 451.0, 196.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-44",
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 1. 2. 1. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 348.0, 218.0, 86.5, 17.0 ],
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-45",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1. 2.",
													"fontsize" : 9.0,
													"patching_rect" : [ 348.0, 196.0, 47.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 2,
													"id" : "obj-46",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0. 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 293.0, 196.0, 47.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 2,
													"id" : "obj-48",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 321.0, 139.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-49",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"fontsize" : 9.0,
													"patching_rect" : [ 321.0, 110.0, 27.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-50",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0.",
													"fontsize" : 12.0,
													"patching_rect" : [ 204.0, 247.0, 32.5, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-41",
													"fontname" : "Arial",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 9.0,
													"patching_rect" : [ 204.0, 218.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-39",
													"fontname" : "Arial",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 2.",
													"fontsize" : 9.0,
													"patching_rect" : [ 204.0, 192.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-37",
													"fontname" : "Arial",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 1. 2. 1. 0.",
													"fontsize" : 9.0,
													"patching_rect" : [ 101.0, 221.0, 86.5, 17.0 ],
													"numinlets" : 6,
													"numoutlets" : 1,
													"id" : "obj-36",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 1. 2.",
													"fontsize" : 9.0,
													"patching_rect" : [ 101.0, 192.0, 47.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 2,
													"id" : "obj-34",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 127.0, 317.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-32",
													"outlettype" : [ "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"fontsize" : 12.0,
													"patching_rect" : [ 133.0, 449.0, 50.0, 20.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-30",
													"fontname" : "Arial",
													"outlettype" : [ "float", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 127.0, 340.0, 32.5, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-28",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "quantity of change in scale (0-1.)",
													"fontsize" : 9.0,
													"patching_rect" : [ 183.0, 449.0, 150.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-15",
													"fontname" : "Arial"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "split 0. 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 46.0, 192.0, 47.0, 17.0 ],
													"numinlets" : 3,
													"numoutlets" : 2,
													"id" : "obj-7",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "/ 1.",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 144.0, 27.0, 17.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-10",
													"fontname" : "Arial",
													"outlettype" : [ "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"fontsize" : 9.0,
													"patching_rect" : [ 76.0, 115.0, 27.0, 17.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-11",
													"fontname" : "Arial",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 144.0, 480.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-12",
													"comment" : "color"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 321.0, 56.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-13",
													"outlettype" : [ "" ],
													"comment" : "max"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 106.0, 56.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-14",
													"outlettype" : [ "" ],
													"comment" : "min"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-61", 0 ],
													"destination" : [ "obj-60", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-60", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-54", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-59", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-59", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-58", 0 ],
													"destination" : [ "obj-48", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-49", 0 ],
													"destination" : [ "obj-58", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-56", 0 ],
													"destination" : [ "obj-28", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-56", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-54", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-50", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 1 ],
													"destination" : [ "obj-49", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-50", 0 ],
													"destination" : [ "obj-49", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-63", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-63", 0 ],
													"destination" : [ "obj-61", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-64", 0 ],
													"destination" : [ "obj-63", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 12.0,
										"default_fontname" : "Arial",
										"default_fontsize" : 12.0,
										"fontname" : "Arial"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend /window",
									"fontsize" : 10.0,
									"patching_rect" : [ 228.0, 250.0, 97.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-22",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"fontsize" : 9.873845,
									"patching_rect" : [ 140.0, 451.0, 32.5, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-18",
									"fontname" : "Verdana",
									"outlettype" : [ "float" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.autoscale @mode 4",
									"fontsize" : 10.0,
									"patching_rect" : [ 153.0, 281.0, 137.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-23",
									"fontname" : "Verdana",
									"outlettype" : [ "float", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /min /max",
									"fontsize" : 10.0,
									"patching_rect" : [ 201.0, 336.0, 159.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-40",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /window /scroll-time",
									"fontsize" : 10.0,
									"patching_rect" : [ 204.0, 196.0, 189.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-16",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 271.0, 498.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-15",
									"comment" : "to in_max"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 201.0, 494.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-14",
									"comment" : "to in_min"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.init",
									"fontsize" : 10.0,
									"patching_rect" : [ 523.0, 497.0, 54.0, 19.0 ],
									"numinlets" : 1,
									"numoutlets" : 2,
									"id" : "obj-41",
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"fontsize" : 9.873845,
									"patching_rect" : [ 523.0, 539.0, 89.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-1",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.modules_dumper",
									"fontsize" : 9.873845,
									"patching_rect" : [ 523.0, 518.0, 122.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 3,
									"id" : "obj-2",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "clear" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_dst_0[1]",
									"text" : "jcom.send jcom.remote.module.to",
									"fontsize" : 9.873845,
									"patching_rect" : [ 2.0, 383.0, 180.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-3",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_prepend_0[1]",
									"text" : "prepend /module/parameter",
									"fontsize" : 9.873845,
									"patching_rect" : [ 2.0, 349.0, 150.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 1,
									"id" : "obj-4",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 139.0, 494.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-10",
									"comment" : "to curve display"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 238.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-11",
									"comment" : "to in #"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_in",
									"fontsize" : 9.873845,
									"patching_rect" : [ 50.0, 108.0, 250.0, 18.0 ],
									"numinlets" : 3,
									"numoutlets" : 6,
									"id" : "obj-12",
									"fontname" : "Verdana",
									"outlettype" : [ "clear", "float", "float", "", "", "" ],
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 683.0, 162.0, 574.0, 696.0 ],
										"bglocked" : 0,
										"defrect" : [ 683.0, 162.0, 574.0, 696.0 ],
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p envfol",
													"fontsize" : 9.873845,
													"patching_rect" : [ 242.0, 396.0, 50.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 0,
													"id" : "obj-1",
													"fontname" : "Verdana",
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 39.0, 442.0, 297.0, 363.0 ],
														"bglocked" : 0,
														"defrect" : [ 39.0, 442.0, 297.0, 363.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b l",
																	"fontsize" : 10.0,
																	"patching_rect" : [ 25.0, -5.0, 197.0, 19.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-24",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl change",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 115.0, 225.0, 57.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-21",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 200.0, 149.0, 24.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-15",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append 1",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 250.0, 55.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append 0",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 115.0, 250.0, 55.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l b",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 170.0, 33.5, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 115.0, 200.0, 40.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-4",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl change",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 100.0, 145.0, 57.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-5",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 44.0, 64.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.send jcom.remote.module.to",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 285.0, 180.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-7",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 95.0, 214.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 2,
																	"id" : "obj-8",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s%s:/enable",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 120.0, 124.0, 18.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-9",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /audio/amplitude.*",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 40.0, 70.0, 179.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 2,
																	"id" : "obj-10",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 235.0, 74.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-12",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 40.0, 25.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-13",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-21", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-21", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 1 ],
																	"hidden" : 0,
																	"midpoints" : [ 109.5, 194.0, 145.5, 194.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-15", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 1 ],
																	"destination" : [ "obj-15", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-10", 0 ],
																	"destination" : [ "obj-8", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-10", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 124.5, 275.0, 49.5, 275.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-7", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-12", 0 ],
																	"destination" : [ "obj-8", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-13", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-24", 1 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-8", 0 ],
																	"destination" : [ "obj-9", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 49.5, 141.0, 109.5, 141.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-9", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-9", 1 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"fontsize" : 9.873845,
													"patching_rect" : [ 28.0, 442.0, 62.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-2",
													"fontname" : "Verdana",
													"outlettype" : [ "<separator>" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 736.0, 73.0, 317.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 736.0, 73.0, 317.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.parameters_dumper",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 25.0, 75.0, 138.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 26.0, 46.0, 139.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 3,
																	"id" : "obj-2",
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "<separator>", "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.returns_dumper",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 165.0, 75.0, 126.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 90.0, 113.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "" ],
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 1 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 95.5, 89.0, 99.0, 89.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 34.5, 104.0, 99.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 174.5, 104.0, 99.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 2 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.attributes_dumper",
													"fontsize" : 9.873845,
													"patching_rect" : [ 225.0, 416.0, 252.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-4",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0",
													"text" : "jcom.receive jcom.remote.module.from",
													"linecount" : 2,
													"fontsize" : 9.873845,
													"patching_rect" : [ 392.0, 540.0, 139.0, 30.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-5",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_route_0",
													"text" : "jcom.oscroute",
													"fontsize" : 9.873845,
													"patching_rect" : [ 392.0, 574.0, 138.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-6",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"fontsize" : 9.873845,
													"patching_rect" : [ 353.0, 289.0, 68.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-7",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 271.0, 163.0, 69.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-8",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 1.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 225.0, 544.0, 32.0, 16.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-9",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 28.0, 393.0, 50.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-10",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"fontsize" : 9.873845,
													"patching_rect" : [ 28.0, 414.0, 121.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 3,
													"id" : "obj-11",
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"fontsize" : 9.873845,
													"patching_rect" : [ 140.0, 73.0, 57.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-12",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 392.0, 598.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-13",
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 353.0, 188.0, 32.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-14",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"fontsize" : 9.873845,
													"patching_rect" : [ 241.0, 185.0, 44.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 3,
													"id" : "obj-15",
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 291.0, 264.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-16",
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"fontsize" : 9.873845,
													"patching_rect" : [ 291.0, 239.0, 45.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-17",
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 214.0, 154.0, 496.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 214.0, 154.0, 496.0, 199.0 ],
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
														"boxes" : [ 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "loadbang",
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 1,
																	"id" : "obj-1",
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"numinlets" : 1,
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_in 72 16, script bringtofront in_slash, script bringtofront module_in#",
																	"linecount" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 218.0, 63.0, 246.0, 28.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-3",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-4",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"numinlets" : 0,
																	"numoutlets" : 1,
																	"id" : "obj-5",
																	"outlettype" : [ "bang" ],
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_in 103 16, script bringtofront module_in",
																	"linecount" : 2,
																	"fontsize" : 9.873845,
																	"patching_rect" : [ 28.0, 67.0, 159.0, 28.0 ],
																	"numinlets" : 2,
																	"numoutlets" : 1,
																	"id" : "obj-6",
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ]
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 227.5, 100.0, 37.0, 100.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"globalpatchername" : "",
														"default_fontface" : 0,
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontname" : "Verdana",
														"default_fontsize" : 10.0,
														"fontname" : "Verdana"
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 353.0, 329.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-18",
													"comment" : "to nr"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"fontsize" : 9.873845,
													"patching_rect" : [ 382.0, 253.0, 74.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-19",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"fontsize" : 9.873845,
													"patching_rect" : [ 382.0, 232.0, 25.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-20",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 291.0, 212.0, 44.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 3,
													"id" : "obj-21",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 65.0, 260.0, 96.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 2,
													"id" : "obj-22",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 140.0, 95.0, 220.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 3,
													"id" : "obj-23",
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"fontsize" : 9.873845,
													"patching_rect" : [ 241.0, 116.0, 88.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-24",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 241.0, 138.0, 160.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 4,
													"id" : "obj-25",
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"save" : [ "#N", "coll", "jcom.modules_instances", 1, ";" ],
													"saved_object_attributes" : 													{
														"embed" : 0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "switch 2 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 65.0, 340.0, 96.0, 18.0 ],
													"numinlets" : 3,
													"numoutlets" : 1,
													"id" : "obj-26",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"fontsize" : 9.873845,
													"patching_rect" : [ 241.0, 210.0, 27.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-27",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"fontsize" : 9.873845,
													"patching_rect" : [ 65.0, 295.0, 60.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-28",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"fontsize" : 9.873845,
													"patching_rect" : [ 185.0, 260.0, 42.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-29",
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"fontsize" : 9.873845,
													"patching_rect" : [ 241.0, 163.0, 27.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-30",
													"fontname" : "Verdana",
													"outlettype" : [ "int" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s.%s",
													"fontsize" : 9.873845,
													"patching_rect" : [ 151.0, 294.0, 79.0, 18.0 ],
													"numinlets" : 2,
													"numoutlets" : 1,
													"id" : "obj-31",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 182.0, 233.0, 24.0, 24.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-32",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"fontsize" : 9.873845,
													"patching_rect" : [ 353.0, 211.0, 39.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-33",
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route default",
													"fontsize" : 9.873845,
													"patching_rect" : [ 225.0, 521.0, 72.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-36",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 277.0, 593.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-37",
													"comment" : "to in_max"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 225.0, 594.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-38",
													"comment" : "to in_min"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"fontsize" : 9.873845,
													"patching_rect" : [ 225.0, 570.0, 71.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-39",
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute range/bounds",
													"fontsize" : 9.873845,
													"patching_rect" : [ 225.0, 500.0, 153.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-40",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 225.0, 396.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-41",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"fontsize" : 9.873845,
													"patching_rect" : [ 130.0, 500.0, 57.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-42",
													"fontname" : "Verdana",
													"outlettype" : [ "clear" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"fontsize" : 9.873845,
													"patching_rect" : [ 65.0, 367.0, 412.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 2,
													"id" : "obj-43",
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"fontsize" : 9.873845,
													"patching_rect" : [ 28.0, 471.0, 89.0, 18.0 ],
													"numinlets" : 1,
													"numoutlets" : 1,
													"id" : "obj-44",
													"fontname" : "Verdana",
													"outlettype" : [ "" ]
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 130.0, 523.0, 15.0, 15.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-45",
													"comment" : "to module in function msg_menu"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 140.0, 54.0, 15.0, 15.0 ],
													"numinlets" : 0,
													"numoutlets" : 1,
													"id" : "obj-46",
													"outlettype" : [ "" ],
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function msg_menu to change when only the instance number changes",
													"linecount" : 10,
													"fontsize" : 9.873845,
													"patching_rect" : [ 35.0, 44.0, 67.0, 126.0 ],
													"numinlets" : 1,
													"numoutlets" : 0,
													"id" : "obj-47",
													"fontname" : "Verdana"
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 1 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 350.5, 120.0, 363.0, 120.0, 363.0, 43.0, 37.5, 43.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [ 250.5, 328.0, 74.5, 328.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-43", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-10", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-26", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [ 37.5, 493.0, 139.5, 493.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 1 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-26", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [ 362.5, 282.0, 220.5, 282.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 1 ],
													"destination" : [ "obj-31", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 1 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [ 280.5, 182.0, 250.5, 182.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-41", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [ 467.5, 390.0, 282.5, 390.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 250.5, 206.0, 300.5, 206.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [ 287.5, 563.0, 234.5, 563.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 1 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 1 ],
													"destination" : [ "obj-37", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [ 250.5, 182.0, 362.5, 182.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 391.5, 314.0, 362.0, 314.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 1 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-19", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [ 250.5, 159.0, 397.5, 159.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 1 ],
													"destination" : [ "obj-4", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [ 467.5, 498.0, 520.5, 498.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-40", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"globalpatchername" : "",
										"default_fontface" : 0,
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontname" : "Verdana",
										"default_fontsize" : 10.0,
										"fontname" : "Verdana"
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 97.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-13",
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 1",
									"fontsize" : 9.873845,
									"patching_rect" : [ 117.0, 202.0, 58.0, 18.0 ],
									"numinlets" : 2,
									"numoutlets" : 1,
									"id" : "obj-25",
									"fontname" : "Verdana",
									"outlettype" : [ "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 191.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-27",
									"comment" : "to in_max"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 144.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-28",
									"comment" : "to in_min"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 50.0, 135.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-34",
									"comment" : "to module in function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 523.0, 569.0, 15.0, 15.0 ],
									"numinlets" : 1,
									"numoutlets" : 0,
									"id" : "obj-35",
									"comment" : "to module in names menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module_in /module_in_nr /module_in_function /freeze /signal",
									"fontsize" : 9.873845,
									"patching_rect" : [ 46.0, 69.0, 600.0, 18.0 ],
									"numinlets" : 1,
									"numoutlets" : 6,
									"id" : "obj-37",
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "" ]
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 46.0, 45.0, 15.0, 15.0 ],
									"numinlets" : 0,
									"numoutlets" : 1,
									"id" : "obj-39",
									"outlettype" : [ "" ],
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-37", 4 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [ 520.299988, 175.0, 165.5, 175.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 4 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 520.299988, 175.0, 104.0, 175.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-50", 0 ],
									"hidden" : 0,
									"midpoints" : [ 290.5, 174.0, 104.0, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 3 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-12", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-12", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-43", 0 ],
									"destination" : [ "obj-49", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-42", 0 ],
									"destination" : [ "obj-44", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-44", 0 ],
									"destination" : [ "obj-46", 3 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-46", 0 ],
									"destination" : [ "obj-43", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 2 ],
									"destination" : [ "obj-42", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-42", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 1 ],
									"destination" : [ "obj-40", 0 ],
									"hidden" : 0,
									"midpoints" : [ 280.5, 308.0, 210.5, 308.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 1 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-40", 0 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-41", 0 ],
									"destination" : [ "obj-2", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-4", 0 ],
									"destination" : [ "obj-3", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 0 ],
									"destination" : [ "obj-34", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 4 ],
									"destination" : [ "obj-11", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 0 ],
									"destination" : [ "obj-1", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-2", 2 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [ 635.5, 561.0, 532.0, 561.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-1", 0 ],
									"destination" : [ "obj-35", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [ 290.5, 174.0, 165.5, 174.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-68", 0 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 0 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-54", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-54", 1 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 5 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-68", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-16", 1 ],
									"destination" : [ "obj-54", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-18", 1 ],
									"hidden" : 0,
									"midpoints" : [ 126.5, 266.0, 144.0, 266.0, 144.0, 312.0, 163.0, 312.0 ]
								}

							}
 ]
					}
,
					"saved_object_attributes" : 					{
						"globalpatchername" : "",
						"default_fontface" : 0,
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontname" : "Verdana",
						"default_fontsize" : 10.0,
						"fontname" : "Verdana"
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"Select, autoscale and visualize any Jamoma stream\"",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"patching_rect" : [ 76.0, 158.0, 515.0, 19.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"id" : "obj-100",
					"fontname" : "Verdana",
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"patching_rect" : [ 76.0, 120.0, 23.0, 23.0 ],
					"numinlets" : 0,
					"presentation" : 0,
					"numoutlets" : 1,
					"id" : "obj-101",
					"background" : 0,
					"outlettype" : [ "" ],
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"hidden" : 0,
					"patching_rect" : [ 76.0, 184.0, 23.0, 23.0 ],
					"numinlets" : 1,
					"presentation" : 0,
					"numoutlets" : 0,
					"id" : "obj-102",
					"background" : 0,
					"comment" : "message"
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"setstyle" : 4,
					"settype" : 1,
					"ghostbar" : 0,
					"border_left" : 1,
					"ignoreclick" : 1,
					"compatibility" : 0,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"presentation_rect" : [ 0.0, 20.0, 450.0, 85.0 ],
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"hidden" : 0,
					"border_bottom" : 1,
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"bgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"patching_rect" : [ 6.0, 437.0, 449.0, 86.0 ],
					"candycane" : 1,
					"border_right" : 1,
					"numinlets" : 1,
					"setminmax" : [ 0.0, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"presentation" : 1,
					"slidercolor" : [ 1.0, 0.0, 0.0, 0.97907 ],
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"numoutlets" : 2,
					"contdata" : 0,
					"id" : "obj-24",
					"orientation" : 1,
					"spacing" : 0,
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"background" : 0,
					"signed" : 0,
					"size" : 1,
					"border_top" : 1,
					"outlettype" : [ "", "" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"has_freeze" : 1,
					"has_mix" : 0,
					"headercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"ignoreclick" : 0,
					"presentation_rect" : [ 0.0, 0.0, 450.0, 105.0 ],
					"fontface" : 0,
					"fontsize" : 11.0,
					"has_mute" : 0,
					"has_panel" : 0,
					"hidden" : 0,
					"prefix" : "",
					"has_preview" : 0,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"patching_rect" : [ 0.0, 0.0, 450.0, 105.0 ],
					"numinlets" : 1,
					"presentation" : 1,
					"bordercolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"has_bypass" : 0,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"numoutlets" : 1,
					"id" : "obj-107",
					"fontname" : "Verdana",
					"has_meters" : 0,
					"background" : 0,
					"has_gain" : 0,
					"outlettype" : [ "" ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-7", 1 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-71", 0 ],
					"destination" : [ "obj-64", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-64", 0 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 742.5, 244.0, 720.0, 244.0, 720.0, 177.0, 742.5, 177.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-5", 0 ],
					"destination" : [ "obj-84", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 852.5, 479.0, 824.0, 479.0, 824.0, 391.0, 850.5, 391.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 7 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 191.5, 706.0, 168.0, 706.0, 168.0, 649.0, 191.5, 649.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-67", 0 ],
					"destination" : [ "obj-60", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-58", 0 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 187.5, 637.0, 170.0, 637.0, 170.0, 570.0, 187.5, 570.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-68", 0 ],
					"destination" : [ "obj-58", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 957.0, 533.0, 895.0, 533.0, 895.0, 535.0, 893.5, 535.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 893.5, 573.0, 870.0, 573.0, 870.0, 506.0, 894.5, 506.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 9 ],
					"destination" : [ "obj-24", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 8 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 6 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 11 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-21", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"color" : [ 0.721569, 0.721569, 0.721569, 1.0 ],
					"midpoints" : [ 927.5, 348.0, 898.0, 348.0, 898.0, 348.0, 885.5, 348.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 885.5, 395.0, 869.0, 395.0, 869.0, 312.0, 885.5, 312.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-7", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 10 ],
					"destination" : [ "obj-21", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 834.5, 128.0, 812.0, 128.0, 812.0, 86.0, 865.0, 66.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 177.5, 151.0, 101.0, 151.0, 101.0, 151.0, 85.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 194.5, 152.0, 86.0, 152.0, 86.0, 154.0, 85.5, 154.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
					"midpoints" : [ 109.5, 151.0, 85.5, 151.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-101", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-100", 0 ],
					"destination" : [ "obj-102", 0 ],
					"hidden" : 0,
					"color" : [ 0.603922, 0.603922, 0.603922, 1.0 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
