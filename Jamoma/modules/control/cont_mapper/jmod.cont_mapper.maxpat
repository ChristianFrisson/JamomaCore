{
	"patcher" : 	{
		"fileversion" : 1,
		"rect" : [ 33.0, 89.0, 1407.0, 770.0 ],
		"bgcolor" : [ 0.1, 0.1, 0.1, 1.0 ],
		"bglocked" : 0,
		"defrect" : [ 33.0, 89.0, 1407.0, 770.0 ],
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
					"maxclass" : "message",
					"text" : "/preset/store 1 default, /preset/write",
					"ignoreclick" : 0,
					"patching_rect" : [ 83.0, 93.0, 211.0, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor2" : [ 0.819608, 0.8, 1.0, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-11",
					"fontface" : 0,
					"gradient" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/documentation/generate",
					"ignoreclick" : 0,
					"patching_rect" : [ 100.0, 110.0, 138.0, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.8, 0.54902, 0.54902, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor2" : [ 0.819608, 0.8, 1.0, 1.0 ],
					"fontname" : "Arial",
					"outlettype" : [ "" ],
					"id" : "obj-43",
					"fontface" : 0,
					"gradient" : 1,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : "/editing_this_module",
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 890.0, 190.0, 103.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-1",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 40.0, 49.0, 103.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : "/editing_this_module",
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 890.0, 100.0, 103.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-2",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 40.0, 24.0, 103.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_out#",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 715.0, 329.0, 20.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-3",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : 1,
					"fontface" : 0,
					"format" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 123.0, 49.0, 20.0, 19.0 ],
					"background" : 0,
					"mouseup" : 1,
					"maximum" : 5,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "out_slash",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : ".",
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 105.0, 43.0, 15.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-4",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 111.0, 49.0, 15.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "module_in#",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 1110.0, 309.0, 20.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-5",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : 1,
					"fontface" : 0,
					"format" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 123.0, 24.0, 20.0, 19.0 ],
					"background" : 0,
					"mouseup" : 1,
					"maximum" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "in_slash",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : ".",
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 105.0, 20.0, 15.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-6",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 111.0, 24.0, 15.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "_________________________________________________",
					"ignoreclick" : 1,
					"patching_rect" : [ 16.0, 45.0, 536.0, 18.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.95, 0.95, 0.95, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
					"id" : "obj-47",
					"fontface" : 0,
					"fontsize" : 9.873845,
					"presentation_rect" : [ 15.0, 32.0, 319.0, 18.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_function[1]",
					"text" : "jcom.return direct_value @type msg_float @enable 0 @description \"direct value of the mapping\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 15.0, 490.0, 453.0, 31.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-9",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.in",
					"ignoreclick" : 0,
					"patching_rect" : [ 15.0, 194.0, 46.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-7",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "r mappers_edit",
					"ignoreclick" : 0,
					"patching_rect" : [ 794.0, 17.0, 85.0, 19.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-8",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "vu",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"signed" : 0,
					"border_top" : 1,
					"ignoreclick" : 0,
					"patching_rect" : [ 405.0, 340.0, 49.0, 30.0 ],
					"numoutlets" : 2,
					"contdata" : 0,
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"compatibility" : 0,
					"ghostbar" : 0,
					"settype" : 1,
					"border_left" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"orientation" : 0,
					"spacing" : 0,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-10",
					"border_bottom" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"candycane" : 1,
					"border_right" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setstyle" : 1,
					"presentation_rect" : [ 295.0, 5.0, 260.0, 16.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"background" : 0,
					"size" : 1,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curve_slid",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"signed" : 0,
					"border_top" : 1,
					"ignoreclick" : 0,
					"patching_rect" : [ 178.0, 539.0, 10.0, 31.0 ],
					"numoutlets" : 2,
					"contdata" : 1,
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setminmax" : [ -0.53, 0.5 ],
					"compatibility" : 1,
					"ghostbar" : 0,
					"settype" : 1,
					"border_left" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"orientation" : 1,
					"spacing" : 0,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-21",
					"border_bottom" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"candycane" : 1,
					"border_right" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setstyle" : 0,
					"presentation_rect" : [ 590.0, 43.0, 10.0, 29.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"background" : 0,
					"size" : 1,
					"numinlets" : 1,
					"frozen_box_attributes" : [ "slidercolor", "bgcolor" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.init",
					"ignoreclick" : 0,
					"patching_rect" : [ 723.0, 17.0, 72.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-22",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "thispatcher",
					"ignoreclick" : 0,
					"patching_rect" : [ 325.0, 350.0, 65.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-25",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1,
					"save" : [ "#N", "thispatcher", ";", "#Q", "end", ";" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "curve",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 172.0, 577.0, 32.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-27",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : "<none>",
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 558.0, 24.0, 42.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "edit",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : [ "edit", ",", "active", ",", "bypass" ],
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 655.0, 19.0, 42.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-28",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 560.0, 5.0, 41.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"ignoreclick" : 0,
					"patching_rect" : [ 249.0, 577.0, 34.0, 19.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float" ],
					"id" : "obj-29",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "* -1.",
					"ignoreclick" : 0,
					"patching_rect" : [ 130.0, 577.0, 34.0, 19.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float" ],
					"id" : "obj-30",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide_down[1]",
					"text" : "jcom.parameter slide_down @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Smoothing coef when value decreases\"",
					"linecount" : 3,
					"ignoreclick" : 0,
					"patching_rect" : [ 510.0, 193.0, 292.0, 43.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-31",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "slide_up[1]",
					"text" : "jcom.parameter slide_up @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Smoothing coef when value raises\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 510.0, 120.0, 366.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-33",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "ramp[1]",
					"text" : "jcom.parameter ramp @repetitions/allow 1 @ramp/drive scheduler @type msg_int @description \"Ramp time\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 995.0, 40.0, 320.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-35",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "number",
					"varname" : "ramp",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 995.0, 16.0, 30.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-37",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : 0,
					"fontface" : 0,
					"format" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 481.0, 24.0, 33.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"varname" : "ramp_com",
					"text" : "Ramp",
					"ignoreclick" : 1,
					"patching_rect" : [ 406.0, 22.0, 37.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-38",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 419.0, 26.0, 37.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "/down",
					"ignoreclick" : 1,
					"patching_rect" : [ 325.0, 45.0, 40.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-39",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 341.0, 49.0, 40.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "slide_up",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 510.0, 95.0, 28.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-40",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : 0.0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 385.0, 24.0, 31.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "slide_down",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 510.0, 169.0, 28.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-41",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : 0.0,
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 385.0, 49.0, 31.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Slide up",
					"ignoreclick" : 1,
					"patching_rect" : [ 321.0, 22.0, 49.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-42",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 337.0, 26.0, 49.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[12]",
					"text" : "jcom.message clipmode @repetitions/allow 1 @type msg_symbol @description \"Choose the clipping mode (none, low, high, both)\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 640.0, 605.0, 342.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-44",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "clipmode",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : [ "none", ",", "low", ",", "high", ",", "both" ],
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 640.0, 581.0, 38.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-46",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 481.0, 49.0, 33.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "multislider",
					"varname" : "curve_disp",
					"candicane3" : [ 0.290196, 0.411765, 0.713726, 1.0 ],
					"candicane5" : [ 0.584314, 0.827451, 0.431373, 1.0 ],
					"candicane6" : [ 0.733333, 0.035294, 0.788235, 1.0 ],
					"signed" : 0,
					"border_top" : 1,
					"ignoreclick" : 0,
					"patching_rect" : [ 172.0, 330.0, 33.0, 31.0 ],
					"numoutlets" : 2,
					"contdata" : 0,
					"presentation" : 1,
					"slidercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setminmax" : [ 0.0, 1.0 ],
					"compatibility" : 0,
					"ghostbar" : 0,
					"settype" : 1,
					"border_left" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"outlettype" : [ "", "" ],
					"candicane4" : [ 0.439216, 0.619608, 0.070588, 1.0 ],
					"orientation" : 1,
					"spacing" : 0,
					"candicane8" : [ 0.027451, 0.447059, 0.501961, 1.0 ],
					"id" : "obj-48",
					"border_bottom" : 1,
					"candicane2" : [ 0.145098, 0.203922, 0.356863, 1.0 ],
					"candicane7" : [ 0.878431, 0.243137, 0.145098, 1.0 ],
					"drawpeaks" : 0,
					"thickness" : 2,
					"candycane" : 1,
					"border_right" : 1,
					"bordercolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"setstyle" : 0,
					"presentation_rect" : [ 558.0, 43.0, 33.0, 29.0 ],
					"peakcolor" : [ 0.498039, 0.498039, 0.498039, 1.0 ],
					"background" : 0,
					"size" : 32,
					"numinlets" : 1,
					"frozen_box_attributes" : [ "slidercolor", "bgcolor" ]
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Curve",
					"ignoreclick" : 1,
					"patching_rect" : [ 450.0, 18.0, 38.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-49",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 521.0, 26.0, 38.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "curve[1]",
					"text" : "jcom.parameter curve @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Curve applied on the output value (<0 exponential, 0 linear, >0 logarithmic\"",
					"linecount" : 3,
					"ignoreclick" : 0,
					"patching_rect" : [ 130.0, 600.0, 317.0, 43.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-50",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.parameter[10]",
					"text" : "jcom.message edit @repetitions/allow 1 @type msg_symbol @description \"Choose operation mode (active, edit, bypass)\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 655.0, 40.0, 316.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-52",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_max[1]",
					"text" : "jcom.parameter out_max @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Maximum output value\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 485.0, 480.0, 342.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-58",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "out_min[1]",
					"text" : "jcom.parameter out_min @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Minimum output value\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 250.0, 380.0, 339.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-60",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_max[1]",
					"text" : "jcom.parameter in_max @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Maximum input value\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 1030.0, 435.0, 335.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-62",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "in_min[1]",
					"text" : "jcom.parameter in_min @repetitions/allow 1 @ramp/drive scheduler @type msg_float @description \"Minimum input value\"",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 955.0, 485.0, 332.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-64",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_min",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 250.0, 355.0, 33.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-67",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : "<none>",
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 256.0, 49.0, 40.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "out_max",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 485.0, 451.0, 40.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-68",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : "<none>",
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 297.0, 49.0, 40.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Range",
					"ignoreclick" : 1,
					"patching_rect" : [ 211.0, 45.0, 40.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-69",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 215.0, 49.0, 40.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_min",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 955.0, 460.0, 33.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-71",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : "<none>",
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 256.0, 24.0, 40.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "flonum",
					"varname" : "in_max",
					"cantchange" : 0,
					"ignoreclick" : 0,
					"triscale" : 0.9,
					"patching_rect" : [ 1030.0, 406.0, 41.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 0.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "float", "bang" ],
					"htricolor" : [ 0.87, 0.82, 0.24, 1.0 ],
					"id" : "obj-72",
					"triangle" : 0,
					"outputonclick" : 0,
					"hbgcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"tricolor" : [ 0.75, 0.75, 0.75, 1.0 ],
					"bordercolor" : [ 0.984314, 0.984314, 0.431373, 0.0 ],
					"minimum" : "<none>",
					"fontface" : 0,
					"fontsize" : 10.0,
					"htextcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"presentation_rect" : [ 297.0, 24.0, 41.0, 19.0 ],
					"background" : 0,
					"mouseup" : 0,
					"maximum" : "<none>",
					"numinlets" : 1,
					"numdecimalplaces" : 0
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Range",
					"ignoreclick" : 1,
					"patching_rect" : [ 211.0, 22.0, 40.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-73",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 215.0, 26.0, 40.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_function",
					"text" : "jcom.parameter module_in_function @repetitions/allow 1 @type msg_symbol @description \"Source module function of the mapping\" @priority 6",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 795.0, 555.0, 405.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-77",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_function",
					"text" : "jcom.parameter module_out_function @repetitions/allow 1 @type msg_symbol @description \"Destination function of the mapping\" @priority 5",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 90.0, 430.0, 393.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-79",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_in_fct",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : [ "button", ",", "delta/angle", ",", "delta/magnitude", ",", "delta/x", ",", "delta/y", ",", "position/x", ",", "position/y", ",", "<separator>", ",", "mouse_on", ",", "reference", ",", "ui/freeze" ],
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 795.0, 528.0, 72.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-80",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 142.0, 24.0, 72.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "umenu",
					"varname" : "module_out_fct",
					"togcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"items" : [ "audio/bypass", ",", "audio/gain", ",", "audio/mix", ",", "audio/mute", ",", "cf", ",", "filtergain", ",", "filtertype", ",", "q", ",", "ui/freeze", ",", "<separator>", ",", "documentation/generate", ",", "filtergraph", ",", "init", ",", "module/view_internals", ",", "panel/open", ",", "preset/clear", ",", "preset/copy", ",", "preset/default", ",", "preset/dump", ",", "preset/interpolate", ",", "preset/post", ",", "preset/read", ",", "preset/recall", ",", "preset/store", ",", "preset/storenext", ",", "preset/write", ",", "ui/refresh" ],
					"arrowlink" : 1,
					"types" : [  ],
					"ignoreclick" : 0,
					"prefix" : "",
					"showdotfiles" : 0,
					"patching_rect" : [ 90.0, 403.0, 72.0, 19.0 ],
					"numoutlets" : 3,
					"depth" : 0,
					"hltcolor" : [ 0.92, 0.92, 0.92, 1.0 ],
					"presentation" : 1,
					"autopopulate" : 0,
					"textcolor2" : [ 0.15, 0.15, 0.15, 1.0 ],
					"rounded" : 8,
					"hidden" : 0,
					"menumode" : 0,
					"bgcolor" : [ 0.207843, 0.207843, 0.207843, 1.0 ],
					"underline" : 0,
					"pattrmode" : 1,
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"bgcolor2" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "int", "", "" ],
					"id" : "obj-81",
					"arrowcolor" : [ 0.501961, 0.501961, 0.901961, 1.0 ],
					"arrowbgcolor" : [ 0.258824, 0.235294, 0.466667, 1.0 ],
					"align" : 0,
					"prefix_mode" : 0,
					"framecolor" : [ 0.501961, 0.501961, 0.898039, 1.0 ],
					"fontface" : 0,
					"fontsize" : 10.0,
					"arrowframe" : 1,
					"presentation_rect" : [ 142.0, 49.0, 72.0, 19.0 ],
					"arrow" : 0,
					"background" : 0,
					"labelclick" : 0,
					"discolor" : [ 0.509804, 0.505882, 0.505882, 1.0 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in_nr",
					"text" : "jcom.parameter module_in_nr @repetitions/allow 1 @type msg_int @description \"Source module instance of the mapping\" @priority 2",
					"linecount" : 4,
					"ignoreclick" : 0,
					"patching_rect" : [ 1110.0, 335.0, 200.0, 55.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-84",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_in[1]",
					"text" : "jcom.parameter module_in @repetitions/allow 1 @type msg_symbol @description \"Source module of the mapping\" @priority 1",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 890.0, 135.0, 358.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-86",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out_nr",
					"text" : "jcom.parameter module_out_nr @repetitions/allow 1 @type msg_int @description \"Destination module instance of the mapping\" @priority 4",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 715.0, 355.0, 368.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-88",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Clip mode",
					"ignoreclick" : 1,
					"patching_rect" : [ 389.0, 45.0, 59.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-90",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 417.0, 49.0, 59.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "Out",
					"ignoreclick" : 1,
					"patching_rect" : [ 9.0, 45.0, 27.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-92",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 15.0, 49.0, 27.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "pcontrol",
					"ignoreclick" : 0,
					"patching_rect" : [ 15.0, 237.0, 49.0, 19.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-93",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "jcom.pass open",
					"ignoreclick" : 0,
					"patching_rect" : [ 15.0, 213.0, 87.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-94",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "message",
					"text" : "/init",
					"ignoreclick" : 0,
					"patching_rect" : [ 41.0, 101.0, 32.5, 16.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.867, 0.867, 0.867, 1.0 ],
					"textcolor" : [ 0.0, 0.0, 0.0, 1.0 ],
					"bgcolor2" : [ 0.867, 0.867, 0.867, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"id" : "obj-95",
					"fontface" : 0,
					"gradient" : 0,
					"fontsize" : 9.873845,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"numinlets" : 2
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"text" : "p mapper",
					"ignoreclick" : 0,
					"patching_rect" : [ 15.0, 275.0, 1189.0, 19.0 ],
					"numoutlets" : 16,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "clear", "", "float", "", "float", "float", "", "", "", "clear", "", "float", "float", "", "clear" ],
					"id" : "obj-98",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1,
					"patcher" : 					{
						"fileversion" : 1,
						"rect" : [ 76.0, 199.0, 811.0, 661.0 ],
						"bglocked" : 0,
						"defrect" : [ 76.0, 199.0, 811.0, 661.0 ],
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
									"text" : "jcom.init",
									"patching_rect" : [ 590.0, 425.0, 54.0, 19.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "", "" ],
									"id" : "obj-41",
									"fontsize" : 10.0,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "prepend append",
									"patching_rect" : [ 590.0, 467.0, 89.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-1",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.modules_dumper",
									"patching_rect" : [ 590.0, 446.0, 122.0, 18.0 ],
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "clear" ],
									"id" : "obj-2",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_dst_0[1]",
									"text" : "jcom.send jcom.remote.module.to",
									"patching_rect" : [ 15.0, 541.0, 180.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-3",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"varname" : "mapping_object_prepend_0[1]",
									"text" : "prepend /module/parameter",
									"patching_rect" : [ 15.0, 507.0, 150.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-4",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"patching_rect" : [ 113.0, 409.0, 29.0, 18.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "float" ],
									"id" : "obj-5",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"patching_rect" : [ 193.0, 368.0, 29.0, 18.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "float" ],
									"id" : "obj-6",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "f",
									"patching_rect" : [ 113.0, 437.0, 27.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-7",
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "t b f",
									"patching_rect" : [ 256.0, 368.0, 29.0, 18.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "bang", "float" ],
									"id" : "obj-8",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 0. 1.",
									"patching_rect" : [ 119.0, 459.0, 421.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-9",
									"fontsize" : 9.873845,
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 119.0, 484.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-10",
									"numinlets" : 1,
									"comment" : "to curve display"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 477.0, 129.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-11",
									"numinlets" : 1,
									"comment" : "to in #"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_in",
									"patching_rect" : [ 289.0, 102.0, 245.0, 18.0 ],
									"numoutlets" : 6,
									"fontname" : "Verdana",
									"outlettype" : [ "clear", "", "float", "float", "", "" ],
									"id" : "obj-12",
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 786.0, 167.0, 574.0, 696.0 ],
										"bglocked" : 0,
										"defrect" : [ 786.0, 167.0, 574.0, 696.0 ],
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
													"patching_rect" : [ 242.0, 396.0, 50.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"id" : "obj-1",
													"fontsize" : 9.873845,
													"numinlets" : 2,
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
																	"patching_rect" : [ 25.0, -5.0, 197.0, 19.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-24",
																	"fontsize" : 10.0,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl change",
																	"patching_rect" : [ 115.0, 225.0, 57.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-21",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t b",
																	"patching_rect" : [ 200.0, 149.0, 24.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-15",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append 1",
																	"patching_rect" : [ 40.0, 250.0, 55.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "append 0",
																	"patching_rect" : [ 115.0, 250.0, 55.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t l b",
																	"patching_rect" : [ 100.0, 170.0, 33.5, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "bang" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"patching_rect" : [ 115.0, 200.0, 40.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl change",
																	"patching_rect" : [ 100.0, 145.0, 57.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-5",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf /%s",
																	"patching_rect" : [ 40.0, 44.0, 64.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.send jcom.remote.module.to",
																	"patching_rect" : [ 40.0, 285.0, 180.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-7",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "zl reg",
																	"patching_rect" : [ 40.0, 95.0, 214.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-8",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sprintf %s%s:/enable",
																	"patching_rect" : [ 40.0, 120.0, 124.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-9",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.oscroute /audio/amplitude.*",
																	"patching_rect" : [ 40.0, 70.0, 179.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "" ],
																	"id" : "obj-10",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 235.0, 74.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-12",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 40.0, 25.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-13",
																	"numinlets" : 0,
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"patching_rect" : [ 28.0, 442.0, 62.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-2",
													"fontsize" : 9.873845,
													"numinlets" : 1,
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
																	"patching_rect" : [ 25.0, 75.0, 138.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"patching_rect" : [ 26.0, 46.0, 139.0, 18.0 ],
																	"numoutlets" : 3,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "<separator>", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.returns_dumper",
																	"patching_rect" : [ 165.0, 75.0, 126.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 90.0, 113.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.attributes_dumper",
													"patching_rect" : [ 225.0, 416.0, 252.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_src_0",
													"text" : "jcom.receive jcom.remote.module.from",
													"linecount" : 2,
													"patching_rect" : [ 392.0, 540.0, 139.0, 30.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"varname" : "mapping_object_route_0",
													"text" : "jcom.oscroute",
													"patching_rect" : [ 392.0, 574.0, 138.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 353.0, 289.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"patching_rect" : [ 271.0, 163.0, 69.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 1.",
													"patching_rect" : [ 294.0, 546.0, 32.0, 16.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"patching_rect" : [ 28.0, 393.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-10",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"patching_rect" : [ 28.0, 414.0, 121.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "clear" ],
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"patching_rect" : [ 140.0, 73.0, 57.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-12",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 392.0, 598.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-13",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 353.0, 188.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 241.0, 185.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-15",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 291.0, 264.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-16",
													"numinlets" : 1,
													"comment" : "to thispatcher"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"patching_rect" : [ 291.0, 239.0, 45.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-17",
													"fontsize" : 9.873845,
													"numinlets" : 2,
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
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_in 72 16, script bringtofront in_slash, script bringtofront module_in#",
																	"linecount" : 2,
																	"patching_rect" : [ 218.0, 63.0, 246.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_in 103 16, script bringtofront module_in",
																	"linecount" : 2,
																	"patching_rect" : [ 28.0, 67.0, 159.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 353.0, 329.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-18",
													"numinlets" : 1,
													"comment" : "to nr"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"patching_rect" : [ 382.0, 253.0, 74.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 382.0, 232.0, 25.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-20",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"patching_rect" : [ 291.0, 212.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-21",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 1",
													"patching_rect" : [ 65.0, 260.0, 96.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-22",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"patching_rect" : [ 140.0, 95.0, 220.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "int" ],
													"id" : "obj-23",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"patching_rect" : [ 241.0, 116.0, 88.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-24",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"patching_rect" : [ 241.0, 138.0, 160.0, 18.0 ],
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-25",
													"fontsize" : 9.873845,
													"numinlets" : 1,
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
													"patching_rect" : [ 65.0, 340.0, 96.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-26",
													"fontsize" : 9.873845,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 241.0, 210.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-27",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"patching_rect" : [ 65.0, 295.0, 60.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-28",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 185.0, 260.0, 42.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-29",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"patching_rect" : [ 241.0, 163.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-30",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s.%s",
													"patching_rect" : [ 151.0, 294.0, 79.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 185.0, 242.0, 13.0, 13.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-32",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"patching_rect" : [ 353.0, 211.0, 39.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-33",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 294.0, 460.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-34",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"patching_rect" : [ 294.0, 480.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route default",
													"patching_rect" : [ 294.0, 523.0, 72.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-36",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 346.0, 595.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-37",
													"numinlets" : 1,
													"comment" : "to in_max"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 294.0, 596.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-38",
													"numinlets" : 1,
													"comment" : "to in_min"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"patching_rect" : [ 294.0, 572.0, 71.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-39",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute range/bounds",
													"patching_rect" : [ 294.0, 502.0, 153.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-40",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 225.0, 396.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-41",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"patching_rect" : [ 130.0, 500.0, 57.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "clear" ],
													"id" : "obj-42",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"patching_rect" : [ 65.0, 367.0, 412.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-43",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"patching_rect" : [ 28.0, 471.0, 89.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-44",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 130.0, 523.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-45",
													"numinlets" : 1,
													"comment" : "to module in function msg_menu"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 140.0, 54.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-46",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function msg_menu to change when only the instance number changes",
													"linecount" : 10,
													"patching_rect" : [ 35.0, 44.0, 67.0, 126.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-47",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
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
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-35", 0 ],
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
													"midpoints" : [ 356.5, 565.0, 303.5, 565.0 ]
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
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-40", 0 ],
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
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-35", 1 ],
													"hidden" : 0,
													"midpoints" : [ 234.5, 447.0, 334.5, 447.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 336.0, 129.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-13",
									"numinlets" : 1,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 226.0, 126.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-14",
									"numinlets" : 1,
									"comment" : "to module out instance number"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 109.0, 128.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-15",
									"numinlets" : 1,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 185.0, 320.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-16",
									"numinlets" : 1,
									"comment" : "to thispatcher"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p ramp_gate",
									"patching_rect" : [ 110.0, 320.0, 72.0, 18.0 ],
									"numoutlets" : 3,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "" ],
									"id" : "obj-17",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 712.0, 65.0, 201.0, 180.0 ],
										"bglocked" : 0,
										"defrect" : [ 712.0, 65.0, 201.0, 180.0 ],
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
													"text" : "zl change",
													"patching_rect" : [ 98.0, 69.0, 57.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-1",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 98.0, 112.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p hide",
													"patching_rect" : [ 98.0, 90.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 935.0, 57.0, 331.0, 215.0 ],
														"bglocked" : 0,
														"defrect" : [ 935.0, 57.0, 331.0, 215.0 ],
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
																	"maxclass" : "button",
																	"patching_rect" : [ 166.0, 62.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-1",
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 36.0, 126.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script show ramp, script show ramp_com",
																	"linecount" : 2,
																	"patching_rect" : [ 153.0, 89.0, 121.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script hide ramp, script hide ramp_com",
																	"linecount" : 2,
																	"patching_rect" : [ 36.0, 89.0, 117.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-4",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel none",
																	"patching_rect" : [ 36.0, 61.0, 127.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-5",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 36.0, 36.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-6", 0 ],
																	"destination" : [ "obj-5", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 162.5, 121.0, 45.0, 121.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-4", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-3", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p rp",
													"patching_rect" : [ 26.0, 67.0, 28.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 219.0, 195.0, 147.0, 197.0 ],
														"bglocked" : 0,
														"defrect" : [ 219.0, 195.0, 147.0, 197.0 ],
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
																	"text" : "t 2",
																	"patching_rect" : [ 78.0, 78.0, 22.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t 1",
																	"patching_rect" : [ 38.0, 79.0, 22.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"id" : "obj-2",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel none",
																	"patching_rect" : [ 38.0, 56.0, 50.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 38.0, 106.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 38.0, 34.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
 ],
														"lines" : [ 															{
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
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-2", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 1 ],
																	"destination" : [ "obj-1", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
 ]
													}
,
													"saved_object_attributes" : 													{
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "r #0_ramp",
													"patching_rect" : [ 26.0, 31.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 0
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2 2",
													"patching_rect" : [ 26.0, 89.0, 50.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 66.0, 110.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-7",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 26.0, 110.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 66.0, 69.0, 13.0, 13.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"id" : "obj-9",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "pack 0. ramp 0",
									"patching_rect" : [ 135.0, 345.0, 464.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-18",
									"fontsize" : 9.873845,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "slide 0. 0.",
									"patching_rect" : [ 110.0, 298.0, 435.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-19",
									"fontsize" : 9.873845,
									"numinlets" : 3
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p clip_range",
									"patching_rect" : [ 110.0, 275.0, 328.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-20",
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 50.0, 120.0, 738.0, 426.0 ],
										"bglocked" : 0,
										"defrect" : [ 50.0, 120.0, 738.0, 426.0 ],
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
													"maxclass" : "inlet",
													"patching_rect" : [ 530.0, 180.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-1",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 491.0, 180.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-2",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 574.0, 21.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route int float",
													"patching_rect" : [ 357.0, 73.0, 77.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"triscale" : 0.9,
													"patching_rect" : [ 50.0, 188.0, 35.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 357.0, 46.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "float" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "clip 0. 127.",
													"patching_rect" : [ 356.0, 270.0, 64.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "minimum 127.",
													"patching_rect" : [ 243.0, 270.0, 81.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "int" ],
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "maximum 0.",
													"patching_rect" : [ 130.0, 270.0, 71.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "int" ],
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 685.0, 366.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-10",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 17.0, 187.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 4 1",
													"patching_rect" : [ 17.0, 215.0, 350.0, 18.0 ],
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-12",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"patching_rect" : [ 17.0, 135.0, 88.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-13",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "umenu",
													"items" : [ "none", ",", "low", ",", "high", ",", "both" ],
													"types" : [  ],
													"patching_rect" : [ 17.0, 158.0, 100.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "", "" ],
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"labelclick" : 1,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "Only int and float can be scaled/clipped",
													"patching_rect" : [ 435.0, 76.0, 205.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-15",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [ 583.0, 40.0, 26.5, 40.0 ]
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
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-11", 0 ],
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
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-9", 1 ],
													"hidden" : 0,
													"midpoints" : [ 500.0, 240.0, 191.5, 240.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 2 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-8", 1 ],
													"hidden" : 0,
													"midpoints" : [ 539.0, 251.0, 314.5, 251.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 3 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [ 395.5, 108.0, 357.5, 108.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-7", 1 ],
													"hidden" : 0,
													"midpoints" : [ 500.0, 240.0, 388.0, 240.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-7", 2 ],
													"hidden" : 0,
													"midpoints" : [ 539.0, 251.0, 410.5, 251.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 365.5, 326.0, 694.0, 326.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 2 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 424.5, 99.0, 694.0, 99.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 252.5, 326.0, 694.0, 326.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 139.5, 326.0, 694.0, 326.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 26.5, 326.0, 694.0, 326.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 42.0, 244.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-21",
									"numinlets" : 1,
									"comment" : "to curve display"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p display",
									"patching_rect" : [ 42.0, 221.0, 53.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-22",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patcher" : 									{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p explinlog",
													"patching_rect" : [ 60.0, 193.0, 111.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-1",
													"fontsize" : 9.873845,
													"numinlets" : 2,
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
																	"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Bell MT",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-1",
																	"fontsize" : 10.793149,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "made by Tom Mays",
																	"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Bell MT",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-2",
																	"fontsize" : 10.793149,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-3",
																	"numinlets" : 1,
																	"comment" : "output 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "float" ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"comment" : "input 0. to 1."
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-5",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "abs 0.",
																	"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"id" : "obj-7",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t f f",
																	"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "float" ],
																	"id" : "obj-8",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "+ 2",
																	"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"id" : "obj-9",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "< 0.",
																	"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"id" : "obj-10",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "1",
																	"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "int" ],
																	"id" : "obj-11",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "sel 0.",
																	"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
																	"numoutlets" : 2,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang", "" ],
																	"id" : "obj-12",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"id" : "obj-13",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "!- 1.",
																	"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "float" ],
																	"id" : "obj-14",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-15",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "number",
																	"triscale" : 0.9,
																	"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "int", "bang" ],
																	"id" : "obj-16",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "gate 3",
																	"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
																	"numoutlets" : 3,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "", "" ],
																	"id" : "obj-17",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-18",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-19",
																	"numinlets" : 0,
																	"comment" : "curve (-1. <= x <= 1.)"
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-20",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "flonum",
																	"triscale" : 0.9,
																	"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
																	"numoutlets" : 2,
																	"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
																	"fontname" : "Verdana",
																	"outlettype" : [ "float", "bang" ],
																	"id" : "obj-21",
																	"fontsize" : 9.873845,
																	"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow(2\\,($f1*15)/2.)",
																	"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-22",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "expr pow($f1\\,$f2)",
																	"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-23",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "log/exp curve",
																	"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Verdana",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-24",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "scale control",
																	"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Verdana",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-25",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
																	"linecount" : 3,
																	"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Verdana",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-26",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "comment",
																	"text" : "arg 1 : initial curve value",
																	"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
																	"numoutlets" : 0,
																	"fontname" : "Verdana",
																	"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
																	"id" : "obj-27",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
 ],
														"lines" : [ 															{
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 214.0, 14.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-2",
													"numinlets" : 0,
													"comment" : "curve (-1. <= x <= 1.)"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"patching_rect" : [ 151.0, 58.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "email : tmays@free.fr - web : http://www.tommays.net",
													"patching_rect" : [ 24.0, 338.0, 265.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Bell MT",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-4",
													"fontsize" : 10.793149,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "made by Tom Mays",
													"patching_rect" : [ 24.0, 327.0, 103.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Bell MT",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-5",
													"fontsize" : 10.793149,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 191.0, 38.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"numinlets" : 0,
													"comment" : "curve (-1. <= x <= 1.)"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
													"linecount" : 3,
													"patching_rect" : [ 19.0, 38.0, 134.0, 42.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 60.0, 258.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-8",
													"numinlets" : 1,
													"comment" : "out to multislider"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl group 32",
													"patching_rect" : [ 60.0, 236.0, 65.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "button",
													"patching_rect" : [ 30.0, 107.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "bang" ],
													"id" : "obj-10",
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "Uzi 32",
													"patching_rect" : [ 30.0, 129.0, 40.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "int" ],
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "scale 0 32 0. 1.",
													"patching_rect" : [ 60.0, 150.0, 86.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-13",
													"fontsize" : 9.873845,
													"numinlets" : 6
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "attacher un multislider float avec range de 0. à 1. pour visualiser la courbe",
													"linecount" : 4,
													"patching_rect" : [ 80.0, 259.0, 118.0, 54.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-16",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 2 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [ 223.0, 32.0, 160.5, 32.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-3", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-1", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [ 160.5, 93.0, 39.0, 93.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "scale 0. 1. 0. 1.",
									"patching_rect" : [ 110.0, 250.0, 229.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-23",
									"fontsize" : 9.873845,
									"numinlets" : 6
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /in_min /in_max /out_min /out_max /curve /clipmode /slide_up /slide_down /ramp",
									"patching_rect" : [ 152.0, 184.0, 500.0, 18.0 ],
									"numoutlets" : 10,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "", "", "", "", "" ],
									"id" : "obj-24",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "gate 1 0",
									"patching_rect" : [ 93.0, 182.0, 50.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "" ],
									"id" : "obj-25",
									"fontsize" : 9.873845,
									"numinlets" : 2
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p edit",
									"patching_rect" : [ 547.0, 75.0, 37.0, 18.0 ],
									"numoutlets" : 2,
									"fontname" : "Verdana",
									"outlettype" : [ "int", "int" ],
									"id" : "obj-26",
									"fontsize" : 9.873845,
									"numinlets" : 1,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 10.0, 59.0, 200.0, 208.0 ],
										"bglocked" : 0,
										"defrect" : [ 10.0, 59.0, 200.0, 208.0 ],
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
													"maxclass" : "outlet",
													"patching_rect" : [ 85.0, 119.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-1",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 17.0, 115.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-2",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0",
													"patching_rect" : [ 83.0, 85.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 0 1",
													"patching_rect" : [ 48.0, 85.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "int" ],
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1",
													"patching_rect" : [ 17.0, 84.0, 22.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel edit active bypass",
													"patching_rect" : [ 17.0, 62.0, 115.0, 18.0 ],
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "bang", "" ],
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 17.0, 38.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"numinlets" : 0,
													"comment" : ""
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 1 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 2 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 1 ],
													"destination" : [ "obj-1", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 430.0, 129.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-27",
									"numinlets" : 1,
									"comment" : "to in_max"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 383.0, 129.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-28",
									"numinlets" : 1,
									"comment" : "to in_min"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 187.0, 127.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-29",
									"numinlets" : 1,
									"comment" : "to module out function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 148.0, 127.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-30",
									"numinlets" : 1,
									"comment" : "to module out function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 70.0, 128.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-31",
									"numinlets" : 1,
									"comment" : "to module out function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 31.0, 127.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-32",
									"numinlets" : 1,
									"comment" : "to module out function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p adress_out",
									"patching_rect" : [ 31.0, 102.0, 245.0, 18.0 ],
									"numoutlets" : 7,
									"fontname" : "Verdana",
									"outlettype" : [ "clear", "float", "", "float", "", "", "" ],
									"id" : "obj-33",
									"fontsize" : 9.873845,
									"numinlets" : 4,
									"patcher" : 									{
										"fileversion" : 1,
										"rect" : [ 184.0, 72.0, 506.0, 687.0 ],
										"bglocked" : 0,
										"defrect" : [ 184.0, 72.0, 506.0, 687.0 ],
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
													"text" : "jcom.attributes_dumper",
													"patching_rect" : [ 207.0, 411.0, 219.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-2",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p adresses",
													"patching_rect" : [ 17.0, 437.0, 62.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "<separator>" ],
													"id" : "obj-3",
													"fontsize" : 9.873845,
													"numinlets" : 1,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 98.0, 82.0, 317.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 98.0, 82.0, 317.0, 199.0 ],
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
																	"text" : "jcom.messages_dumper",
																	"patching_rect" : [ 26.0, 77.0, 130.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "t s <separator> s",
																	"patching_rect" : [ 26.0, 46.0, 130.0, 18.0 ],
																	"numoutlets" : 3,
																	"fontname" : "Verdana",
																	"outlettype" : [ "", "<separator>", "" ],
																	"id" : "obj-2",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "newobj",
																	"text" : "jcom.parameters_dumper",
																	"patching_rect" : [ 146.0, 77.0, 138.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 86.0, 113.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-4",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 26.0, 26.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
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
																	"midpoints" : [ 91.0, 89.0, 95.0, 89.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 35.5, 104.0, 95.0, 104.0 ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-4", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 155.5, 104.0, 95.0, 104.0 ]
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 342.0, 290.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "loadmess -1",
													"patching_rect" : [ 260.0, 163.0, 69.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /ramp/drive",
													"linecount" : 2,
													"patching_rect" : [ 140.0, 520.0, 85.0, 30.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"linecount" : 2,
													"patching_rect" : [ 315.0, 520.0, 53.0, 30.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "s #0_ramp",
													"patching_rect" : [ 140.0, 555.0, 68.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 315.0, 555.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-9",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.oscroute /range/bounds /range/clipmode",
													"patching_rect" : [ 231.0, 499.0, 242.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-10",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "message",
													"text" : "0. 1.",
													"patching_rect" : [ 231.0, 544.0, 32.0, 16.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 1",
													"patching_rect" : [ 17.0, 393.0, 50.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-12",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s 0 clear",
													"patching_rect" : [ 17.0, 414.0, 84.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "clear" ],
													"id" : "obj-13",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "zl change",
													"patching_rect" : [ 140.0, 72.0, 57.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 416.0, 462.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-15",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend set",
													"patching_rect" : [ 416.0, 440.0, 68.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-16",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 1",
													"patching_rect" : [ 342.0, 188.0, 32.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-17",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "change",
													"patching_rect" : [ 230.0, 185.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "int", "int" ],
													"id" : "obj-18",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 281.0, 262.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-19",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "p script",
													"patching_rect" : [ 281.0, 237.0, 45.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-20",
													"fontsize" : 9.873845,
													"numinlets" : 2,
													"patcher" : 													{
														"fileversion" : 1,
														"rect" : [ 335.0, 79.0, 496.0, 199.0 ],
														"bglocked" : 0,
														"defrect" : [ 335.0, 79.0, 496.0, 199.0 ],
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
																	"patching_rect" : [ 69.0, 45.0, 54.0, 18.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "bang" ],
																	"id" : "obj-1",
																	"fontsize" : 9.873845,
																	"numinlets" : 1
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "outlet",
																	"patching_rect" : [ 28.0, 111.0, 15.0, 15.0 ],
																	"numoutlets" : 0,
																	"id" : "obj-2",
																	"numinlets" : 1,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_out 72 16, script bringtofront out_slash, script bringtofront module_out#",
																	"linecount" : 2,
																	"patching_rect" : [ 218.0, 63.0, 253.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-3",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 218.0, 36.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-4",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "inlet",
																	"patching_rect" : [ 28.0, 44.0, 15.0, 15.0 ],
																	"numoutlets" : 1,
																	"outlettype" : [ "bang" ],
																	"id" : "obj-5",
																	"numinlets" : 0,
																	"comment" : ""
																}

															}
, 															{
																"box" : 																{
																	"maxclass" : "message",
																	"text" : "script size module_out 103 16, script bringtofront module_out",
																	"linecount" : 2,
																	"patching_rect" : [ 28.0, 67.0, 166.0, 28.0 ],
																	"numoutlets" : 1,
																	"fontname" : "Verdana",
																	"outlettype" : [ "" ],
																	"id" : "obj-6",
																	"fontsize" : 9.873845,
																	"numinlets" : 2
																}

															}
 ],
														"lines" : [ 															{
																"patchline" : 																{
																	"source" : [ "obj-1", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
																}

															}
, 															{
																"patchline" : 																{
																	"source" : [ "obj-5", 0 ],
																	"destination" : [ "obj-6", 0 ],
																	"hidden" : 0,
																	"midpoints" : [  ]
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
																	"source" : [ "obj-3", 0 ],
																	"destination" : [ "obj-2", 0 ],
																	"hidden" : 0,
																	"midpoints" : [ 227.5, 100.0, 37.0, 100.0 ]
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
														"fontname" : "Verdana",
														"default_fontface" : 0,
														"default_fontname" : "Verdana",
														"globalpatchername" : "",
														"fontface" : 0,
														"fontsize" : 10.0,
														"default_fontsize" : 10.0
													}

												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 342.0, 323.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-21",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend max",
													"patching_rect" : [ 371.0, 253.0, 74.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-22",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "i",
													"patching_rect" : [ 371.0, 232.0, 25.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-23",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0 1",
													"patching_rect" : [ 281.0, 210.0, 44.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "bang", "" ],
													"id" : "obj-24",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 2",
													"patching_rect" : [ 54.0, 260.0, 96.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-25",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s 1",
													"patching_rect" : [ 140.0, 94.0, 191.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "int" ],
													"id" : "obj-26",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend symbol",
													"patching_rect" : [ 230.0, 116.0, 88.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-27",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "coll jcom.modules_instances 1",
													"patching_rect" : [ 230.0, 138.0, 160.0, 18.0 ],
													"numoutlets" : 4,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "", "" ],
													"id" : "obj-28",
													"fontsize" : 9.873845,
													"numinlets" : 1,
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
													"patching_rect" : [ 54.0, 339.0, 96.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-29",
													"fontsize" : 9.873845,
													"numinlets" : 3
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 1",
													"patching_rect" : [ 230.0, 210.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-30",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s",
													"patching_rect" : [ 54.0, 295.0, 60.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-31",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t b i",
													"patching_rect" : [ 174.0, 260.0, 42.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "int" ],
													"id" : "obj-32",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "> 0",
													"patching_rect" : [ 230.0, 163.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-33",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sprintf %s.%s",
													"patching_rect" : [ 140.0, 294.0, 79.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-34",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 174.0, 242.0, 13.0, 13.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-35",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t 1 b",
													"patching_rect" : [ 342.0, 211.0, 39.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-36",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 231.0, 447.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "int" ],
													"id" : "obj-37",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 1 0",
													"patching_rect" : [ 231.0, 473.0, 59.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-38",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "route default",
													"patching_rect" : [ 231.0, 521.0, 72.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-39",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 283.0, 593.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-40",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 231.0, 594.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-41",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "unpack 0. 0.",
													"patching_rect" : [ 231.0, 570.0, 71.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-42",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 207.0, 393.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-43",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "jcom.thru",
													"patching_rect" : [ 91.0, 489.0, 57.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "clear" ],
													"id" : "obj-44",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t s s",
													"patching_rect" : [ 54.0, 372.0, 236.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "", "" ],
													"id" : "obj-45",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "prepend append",
													"patching_rect" : [ 17.0, 461.0, 89.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-46",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 91.0, 511.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-47",
													"numinlets" : 1,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 140.0, 53.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-48",
													"numinlets" : 0,
													"comment" : ""
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "this is to avoid the function msg_menu to change when only the instance number changes",
													"linecount" : 11,
													"patching_rect" : [ 24.0, 44.0, 58.0, 138.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-49",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-26", 2 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [ 321.5, 120.0, 343.0, 120.0, 343.0, 43.0, 26.5, 43.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 1 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-3", 0 ],
													"destination" : [ "obj-46", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-25", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 0 ],
													"destination" : [ "obj-31", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-30", 0 ],
													"destination" : [ "obj-29", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.5, 328.0, 63.5, 328.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-29", 0 ],
													"destination" : [ "obj-45", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 0 ],
													"destination" : [ "obj-12", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 2 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-46", 0 ],
													"destination" : [ "obj-44", 0 ],
													"hidden" : 0,
													"midpoints" : [ 26.5, 483.0, 100.5, 483.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-44", 0 ],
													"destination" : [ "obj-47", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-31", 0 ],
													"destination" : [ "obj-29", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 0 ],
													"destination" : [ "obj-25", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-25", 1 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 0 ],
													"destination" : [ "obj-34", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-34", 0 ],
													"destination" : [ "obj-29", 2 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-35", 0 ],
													"destination" : [ "obj-32", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [ 351.5, 283.0, 209.5, 283.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-32", 1 ],
													"destination" : [ "obj-34", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-43", 0 ],
													"destination" : [ "obj-2", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-26", 1 ],
													"destination" : [ "obj-27", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-27", 0 ],
													"destination" : [ "obj-28", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-33", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 269.5, 182.0, 239.5, 182.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-30", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-37", 0 ],
													"destination" : [ "obj-38", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-39", 1 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [ 293.5, 563.0, 240.5, 563.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-42", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-42", 0 ],
													"destination" : [ "obj-41", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-24", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.5, 206.0, 290.5, 206.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 0 ],
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
													"source" : [ "obj-42", 1 ],
													"destination" : [ "obj-40", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-24", 1 ],
													"destination" : [ "obj-20", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-33", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [ 239.5, 183.0, 351.5, 183.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-36", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 0 ],
													"destination" : [ "obj-4", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [ 380.5, 313.0, 351.0, 313.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-36", 1 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-28", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [ 239.5, 159.0, 386.5, 159.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-45", 1 ],
													"destination" : [ "obj-2", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 1 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-26", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-48", 0 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-39", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-38", 0 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [ 240.5, 495.0, 149.5, 495.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-2", 0 ],
													"destination" : [ "obj-38", 1 ],
													"hidden" : 0,
													"midpoints" : [ 216.5, 437.0, 280.5, 437.0 ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 289.0, 129.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-34",
									"numinlets" : 1,
									"comment" : "to module in function msg_menu"
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 590.0, 497.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-35",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "p explinlog",
									"patching_rect" : [ 93.0, 221.0, 63.0, 18.0 ],
									"numoutlets" : 1,
									"fontname" : "Verdana",
									"outlettype" : [ "float" ],
									"id" : "obj-36",
									"fontsize" : 9.873845,
									"numinlets" : 2,
									"patcher" : 									{
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
										"boxes" : [ 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "email : tmays@free.fr - web : http://www.tommays.net",
													"patching_rect" : [ 221.0, 394.0, 265.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Bell MT",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-1",
													"fontsize" : 10.793149,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "made by Tom Mays",
													"patching_rect" : [ 221.0, 383.0, 103.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Bell MT",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-2",
													"fontsize" : 10.793149,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "outlet",
													"patching_rect" : [ 100.0, 393.0, 15.0, 15.0 ],
													"numoutlets" : 0,
													"id" : "obj-3",
													"numinlets" : 1,
													"comment" : "output 0. to 1."
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 100.0, 98.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-4",
													"numinlets" : 0,
													"comment" : "input 0. to 1."
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"patching_rect" : [ 283.0, 214.0, 35.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-5",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow($f1\\,$f2)",
													"patching_rect" : [ 70.0, 284.0, 103.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-6",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "abs 0.",
													"patching_rect" : [ 283.0, 157.0, 39.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-7",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "t f f",
													"patching_rect" : [ 244.0, 135.0, 49.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "float", "float" ],
													"id" : "obj-8",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "+ 2",
													"patching_rect" : [ 244.0, 180.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-9",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "< 0.",
													"patching_rect" : [ 244.0, 159.0, 30.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-10",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "1",
													"patching_rect" : [ 211.0, 135.0, 27.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "int" ],
													"id" : "obj-11",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "sel 0.",
													"patching_rect" : [ 211.0, 114.0, 43.0, 18.0 ],
													"numoutlets" : 2,
													"fontname" : "Verdana",
													"outlettype" : [ "bang", "" ],
													"id" : "obj-12",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!- 1.",
													"patching_rect" : [ 100.0, 340.0, 30.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-13",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "!- 1.",
													"patching_rect" : [ 100.0, 260.0, 30.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "float" ],
													"id" : "obj-14",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"patching_rect" : [ 100.0, 120.0, 61.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-15",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "number",
													"triscale" : 0.9,
													"patching_rect" : [ 40.0, 220.0, 26.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "int", "bang" ],
													"id" : "obj-16",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "gate 3",
													"patching_rect" : [ 40.0, 239.0, 70.0, 18.0 ],
													"numoutlets" : 3,
													"fontname" : "Verdana",
													"outlettype" : [ "", "", "" ],
													"id" : "obj-17",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"patching_rect" : [ 100.0, 369.0, 64.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-18",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "inlet",
													"patching_rect" : [ 211.0, 54.0, 15.0, 15.0 ],
													"numoutlets" : 1,
													"outlettype" : [ "" ],
													"id" : "obj-19",
													"numinlets" : 0,
													"comment" : "curve (-1. <= x <= 1.)"
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"patching_rect" : [ 211.0, 96.0, 35.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-20",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "flonum",
													"triscale" : 0.9,
													"patching_rect" : [ 190.0, 268.0, 46.0, 18.0 ],
													"numoutlets" : 2,
													"bgcolor" : [ 0.866667, 0.866667, 0.866667, 1.0 ],
													"fontname" : "Verdana",
													"outlettype" : [ "float", "bang" ],
													"id" : "obj-21",
													"fontsize" : 9.873845,
													"htextcolor" : [ 0.870588, 0.870588, 0.870588, 1.0 ],
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow(2\\,($f1*15)/2.)",
													"patching_rect" : [ 190.0, 247.0, 136.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-22",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "newobj",
													"text" : "expr pow($f1\\,$f2)",
													"patching_rect" : [ 100.0, 319.0, 103.0, 18.0 ],
													"numoutlets" : 1,
													"fontname" : "Verdana",
													"outlettype" : [ "" ],
													"id" : "obj-23",
													"fontsize" : 9.873845,
													"numinlets" : 2
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "log/exp curve",
													"patching_rect" : [ 118.0, 304.0, 77.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-24",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "scale control",
													"patching_rect" : [ 214.0, 234.0, 71.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-25",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "0<x<=1 = exponential;\r-1<=x<0 = logarithmic;\r0 = linear",
													"linecount" : 3,
													"patching_rect" : [ 227.0, 54.0, 134.0, 42.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-26",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
, 											{
												"box" : 												{
													"maxclass" : "comment",
													"text" : "arg 1 : initial curve value",
													"patching_rect" : [ 290.0, 305.0, 134.0, 18.0 ],
													"numoutlets" : 0,
													"fontname" : "Verdana",
													"frgb" : [ 0.658824, 0.658824, 0.658824, 1.0 ],
													"id" : "obj-27",
													"fontsize" : 9.873845,
													"numinlets" : 1
												}

											}
 ],
										"lines" : [ 											{
												"patchline" : 												{
													"source" : [ "obj-9", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-11", 0 ],
													"destination" : [ "obj-16", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-16", 0 ],
													"destination" : [ "obj-17", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 1 ],
													"destination" : [ "obj-6", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-4", 0 ],
													"destination" : [ "obj-15", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-15", 0 ],
													"destination" : [ "obj-17", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 2 ],
													"destination" : [ "obj-14", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-14", 0 ],
													"destination" : [ "obj-23", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-23", 0 ],
													"destination" : [ "obj-13", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-6", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 79.5, 364.0, 109.5, 364.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-17", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [ 49.5, 364.0, 109.5, 364.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-13", 0 ],
													"destination" : [ "obj-18", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-18", 0 ],
													"destination" : [ "obj-3", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-6", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-5", 0 ],
													"destination" : [ "obj-22", 0 ],
													"hidden" : 0,
													"midpoints" : [ 292.5, 232.0, 199.5, 232.0 ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-22", 0 ],
													"destination" : [ "obj-21", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-21", 0 ],
													"destination" : [ "obj-23", 1 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-19", 0 ],
													"destination" : [ "obj-20", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-20", 0 ],
													"destination" : [ "obj-12", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 0 ],
													"destination" : [ "obj-11", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-12", 1 ],
													"destination" : [ "obj-8", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 0 ],
													"destination" : [ "obj-10", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-10", 0 ],
													"destination" : [ "obj-9", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-8", 1 ],
													"destination" : [ "obj-7", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
, 											{
												"patchline" : 												{
													"source" : [ "obj-7", 0 ],
													"destination" : [ "obj-5", 0 ],
													"hidden" : 0,
													"midpoints" : [  ]
												}

											}
 ]
									}
,
									"saved_object_attributes" : 									{
										"fontname" : "Verdana",
										"default_fontface" : 0,
										"default_fontname" : "Verdana",
										"globalpatchername" : "",
										"fontface" : 0,
										"fontsize" : 10.0,
										"default_fontsize" : 10.0
									}

								}

							}
, 							{
								"box" : 								{
									"maxclass" : "newobj",
									"text" : "jcom.oscroute /module_out /module_out_nr /module_out_function /module_in /module_in_nr /module_in_function /edit",
									"patching_rect" : [ 31.0, 54.0, 615.0, 18.0 ],
									"numoutlets" : 8,
									"fontname" : "Verdana",
									"outlettype" : [ "", "", "", "", "", "", "", "" ],
									"id" : "obj-37",
									"fontsize" : 9.873845,
									"numinlets" : 1
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "outlet",
									"patching_rect" : [ 0.0, 470.0, 15.0, 15.0 ],
									"numoutlets" : 0,
									"id" : "obj-38",
									"numinlets" : 1,
									"comment" : ""
								}

							}
, 							{
								"box" : 								{
									"maxclass" : "inlet",
									"patching_rect" : [ 31.0, 30.0, 15.0, 15.0 ],
									"numoutlets" : 1,
									"outlettype" : [ "" ],
									"id" : "obj-39",
									"numinlets" : 0,
									"comment" : ""
								}

							}
 ],
						"lines" : [ 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-38", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-38", 0 ],
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
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 6 ],
									"destination" : [ "obj-4", 0 ],
									"hidden" : 0,
									"midpoints" : [ 266.5, 149.0, 24.5, 149.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-4", 0 ],
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
									"source" : [ "obj-39", 0 ],
									"destination" : [ "obj-37", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 0 ],
									"destination" : [ "obj-33", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 0 ],
									"destination" : [ "obj-32", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-22", 0 ],
									"hidden" : 0,
									"midpoints" : [ 375.277771, 210.0, 51.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-22", 0 ],
									"destination" : [ "obj-21", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 1 ],
									"destination" : [ "obj-31", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-22", 1 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"midpoints" : [ 556.5, 175.0, 85.5, 175.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 1 ],
									"destination" : [ "obj-25", 0 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"midpoints" : [ 574.5, 175.0, 102.5, 175.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-25", 0 ],
									"destination" : [ "obj-36", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-20", 0 ],
									"destination" : [ "obj-19", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-19", 0 ],
									"destination" : [ "obj-17", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 1 ],
									"destination" : [ "obj-33", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 2 ],
									"destination" : [ "obj-15", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-36", 0 ],
									"destination" : [ "obj-23", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-23", 0 ],
									"destination" : [ "obj-20", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-18", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 0 ],
									"destination" : [ "obj-5", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 0 ],
									"destination" : [ "obj-7", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 0 ],
									"destination" : [ "obj-7", 0 ],
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
									"source" : [ "obj-9", 0 ],
									"destination" : [ "obj-10", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 5 ],
									"destination" : [ "obj-25", 1 ],
									"hidden" : 0,
									"midpoints" : [ 524.5, 159.0, 133.5, 159.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-5", 1 ],
									"destination" : [ "obj-7", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 1 ],
									"destination" : [ "obj-18", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 4 ],
									"destination" : [ "obj-36", 1 ],
									"hidden" : 0,
									"midpoints" : [ 375.277771, 210.0, 146.5, 210.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 3 ],
									"destination" : [ "obj-30", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 7 ],
									"destination" : [ "obj-24", 0 ],
									"hidden" : 0,
									"midpoints" : [ 636.5, 180.0, 161.5, 180.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 0 ],
									"destination" : [ "obj-23", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-17", 2 ],
									"destination" : [ "obj-16", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 2 ],
									"destination" : [ "obj-33", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 4 ],
									"destination" : [ "obj-29", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-6", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 1 ],
									"destination" : [ "obj-23", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-6", 1 ],
									"destination" : [ "obj-9", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-20", 1 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-33", 5 ],
									"destination" : [ "obj-14", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 2 ],
									"destination" : [ "obj-23", 3 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-8", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-33", 3 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.54902, 0.54902, 1.0 ],
									"midpoints" : [ 556.5, 96.0, 266.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-23", 4 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-8", 1 ],
									"destination" : [ "obj-9", 2 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 3 ],
									"destination" : [ "obj-12", 0 ],
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
									"source" : [ "obj-24", 3 ],
									"destination" : [ "obj-20", 2 ],
									"hidden" : 0,
									"color" : [ 1.0, 0.890196, 0.090196, 1.0 ],
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 6 ],
									"destination" : [ "obj-19", 1 ],
									"hidden" : 0,
									"midpoints" : [ 482.166656, 294.0, 327.5, 294.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 1 ],
									"destination" : [ "obj-13", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 4 ],
									"destination" : [ "obj-12", 1 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 2 ],
									"destination" : [ "obj-28", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 5 ],
									"destination" : [ "obj-20", 3 ],
									"hidden" : 0,
									"midpoints" : [ 428.722229, 238.0, 428.5, 238.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-12", 3 ],
									"destination" : [ "obj-27", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 5 ],
									"destination" : [ "obj-12", 2 ],
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
									"source" : [ "obj-24", 7 ],
									"destination" : [ "obj-19", 2 ],
									"hidden" : 0,
									"midpoints" : [ 535.611084, 286.0, 535.5, 286.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-26", 0 ],
									"destination" : [ "obj-12", 3 ],
									"hidden" : 0,
									"color" : [ 0.8, 0.611765, 0.380392, 1.0 ],
									"midpoints" : [ 556.5, 96.0, 524.5, 96.0 ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-37", 6 ],
									"destination" : [ "obj-26", 0 ],
									"hidden" : 0,
									"midpoints" : [  ]
								}

							}
, 							{
								"patchline" : 								{
									"source" : [ "obj-24", 8 ],
									"destination" : [ "obj-18", 2 ],
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
									"midpoints" : [ 702.5, 489.0, 599.0, 489.0 ]
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
 ]
					}
,
					"saved_object_attributes" : 					{
						"fontname" : "Verdana",
						"default_fontface" : 0,
						"default_fontname" : "Verdana",
						"globalpatchername" : "",
						"fontface" : 0,
						"fontsize" : 10.0,
						"default_fontsize" : 10.0
					}

				}

			}
, 			{
				"box" : 				{
					"maxclass" : "comment",
					"text" : "In",
					"ignoreclick" : 1,
					"patching_rect" : [ 9.0, 22.0, 19.0, 19.0 ],
					"numoutlets" : 0,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 1.0, 1.0, 1.0, 0.0 ],
					"underline" : 0,
					"textcolor" : [ 1.0, 1.0, 1.0, 1.0 ],
					"fontname" : "Verdana",
					"frgb" : [ 1.0, 1.0, 1.0, 1.0 ],
					"id" : "obj-99",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 15.0, 26.0, 19.0, 19.0 ],
					"background" : 0,
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "jcom.hub",
					"text" : "jcom.hub @module_type control @description \"One-to-one Mapper\"",
					"ignoreclick" : 0,
					"patching_rect" : [ 17.0, 138.0, 454.0, 19.0 ],
					"numoutlets" : 2,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "" ],
					"id" : "obj-100",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "inlet",
					"ignoreclick" : 0,
					"patching_rect" : [ 17.0, 101.0, 23.0, 23.0 ],
					"numoutlets" : 1,
					"presentation" : 0,
					"hidden" : 0,
					"outlettype" : [ "" ],
					"id" : "obj-101",
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"numinlets" : 0,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "outlet",
					"ignoreclick" : 0,
					"patching_rect" : [ 17.0, 165.0, 23.0, 23.0 ],
					"numoutlets" : 0,
					"presentation" : 0,
					"hidden" : 0,
					"id" : "obj-102",
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"numinlets" : 1,
					"comment" : ""
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "newobj",
					"varname" : "module_out[1]",
					"text" : "jcom.parameter module_out @repetitions/allow 1 @type msg_symbol @description \"Destination module of the mapping\" @priority 3",
					"linecount" : 2,
					"ignoreclick" : 0,
					"patching_rect" : [ 890.0, 220.0, 365.0, 31.0 ],
					"numoutlets" : 3,
					"presentation" : 0,
					"hidden" : 0,
					"bgcolor" : [ 0.078431, 0.078431, 0.078431, 1.0 ],
					"textcolor" : [ 0.95, 0.95, 0.95, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "", "", "" ],
					"id" : "obj-103",
					"fontface" : 0,
					"fontsize" : 10.0,
					"presentation_rect" : [ 0.0, 0.0, 0.0, 0.0 ],
					"background" : 0,
					"color" : [ 0.545098, 0.843137, 0.494118, 0.8 ],
					"numinlets" : 1
				}

			}
, 			{
				"box" : 				{
					"maxclass" : "jcom.ui",
					"text" : "/editing_this_module",
					"ignoreclick" : 0,
					"prefix" : "",
					"patching_rect" : [ 1.0, 0.0, 600.0, 70.0 ],
					"numoutlets" : 1,
					"presentation" : 1,
					"hidden" : 0,
					"bgcolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"has_mute" : 0,
					"textcolor" : [ 0.65, 0.65, 0.65, 1.0 ],
					"fontname" : "Verdana",
					"outlettype" : [ "" ],
					"has_gain" : 0,
					"id" : "obj-107",
					"has_preview" : 0,
					"has_bypass" : 0,
					"has_mix" : 0,
					"bordercolor" : [ 0.141176, 0.141176, 0.141176, 1.0 ],
					"has_panel" : 0,
					"has_freeze" : 0,
					"fontface" : 0,
					"fontsize" : 11.0,
					"presentation_rect" : [ 7.0, 4.0, 600.0, 70.0 ],
					"background" : 0,
					"has_meters" : 0,
					"numinlets" : 1,
					"headercolor" : [ 0.0, 0.0, 0.0, 1.0 ]
				}

			}
 ],
		"lines" : [ 			{
				"patchline" : 				{
					"source" : [ "obj-11", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 92.5, 132.0, 42.0, 132.0, 42.0, 132.0, 26.5, 132.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-43", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 109.5, 133.0, 27.0, 133.0, 27.0, 135.0, 26.5, 135.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-95", 0 ],
					"destination" : [ "obj-100", 0 ],
					"hidden" : 0,
					"color" : [ 0.556863, 0.556863, 0.556863, 1.0 ],
					"midpoints" : [ 50.5, 132.0, 26.5, 132.0 ]
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
, 			{
				"patchline" : 				{
					"source" : [ "obj-103", 0 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 899.5, 258.0, 879.0, 258.0, 879.0, 183.0, 899.5, 183.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-86", 0 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [ 899.5, 174.0, 883.0, 174.0, 883.0, 91.0, 899.5, 91.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 0 ],
					"destination" : [ "obj-9", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 8 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 6 ],
					"destination" : [ "obj-68", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 3 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 1 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 13 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 12 ],
					"destination" : [ "obj-71", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 10 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 9 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 14 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 2 ],
					"destination" : [ "obj-48", 0 ],
					"hidden" : 0,
					"color" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-27", 0 ],
					"destination" : [ "obj-30", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-29", 0 ],
					"destination" : [ "obj-27", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-31", 0 ],
					"destination" : [ "obj-41", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 519.5, 237.0, 497.0, 237.0, 497.0, 165.0, 519.5, 165.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-41", 0 ],
					"destination" : [ "obj-31", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-33", 0 ],
					"destination" : [ "obj-40", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 519.5, 155.0, 497.0, 155.0, 497.0, 90.0, 519.5, 90.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-40", 0 ],
					"destination" : [ "obj-33", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-35", 0 ],
					"destination" : [ "obj-37", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 1004.5, 78.0, 982.0, 78.0, 982.0, 13.0, 1004.5, 13.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-37", 0 ],
					"destination" : [ "obj-35", 0 ],
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
					"midpoints" : [ 494.5, 514.0, 477.0, 514.0, 477.0, 447.0, 494.5, 447.0 ]
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
					"source" : [ "obj-60", 0 ],
					"destination" : [ "obj-67", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 259.5, 410.0, 236.0, 410.0, 236.0, 353.0, 259.5, 353.0 ]
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
					"source" : [ "obj-62", 0 ],
					"destination" : [ "obj-72", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 1039.5, 468.0, 1017.0, 468.0, 1017.0, 402.0, 1039.5, 402.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-72", 0 ],
					"destination" : [ "obj-62", 0 ],
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
					"midpoints" : [ 964.5, 520.0, 942.0, 520.0, 942.0, 453.0, 964.5, 453.0 ]
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
					"source" : [ "obj-79", 0 ],
					"destination" : [ "obj-81", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 99.5, 464.0, 76.0, 464.0, 76.0, 400.0, 99.5, 400.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-81", 1 ],
					"destination" : [ "obj-79", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 126.0, 427.0, 100.0, 427.0, 100.0, 427.0, 99.5, 427.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-88", 0 ],
					"destination" : [ "obj-3", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 724.5, 387.0, 701.0, 387.0, 701.0, 324.0, 724.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-3", 0 ],
					"destination" : [ "obj-88", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-1", 1 ],
					"destination" : [ "obj-103", 0 ],
					"hidden" : 0,
					"color" : [ 0.721569, 0.721569, 0.721569, 1.0 ],
					"midpoints" : [ 941.5, 215.0, 899.5, 215.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-77", 0 ],
					"destination" : [ "obj-80", 0 ],
					"hidden" : 0,
					"color" : [ 0.533333, 0.533333, 0.533333, 1.0 ],
					"midpoints" : [ 804.5, 590.0, 781.0, 590.0, 781.0, 523.0, 804.5, 523.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-80", 1 ],
					"destination" : [ "obj-77", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 831.0, 550.0, 806.0, 550.0, 806.0, 552.0, 804.5, 552.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-84", 0 ],
					"destination" : [ "obj-5", 0 ],
					"hidden" : 0,
					"color" : [ 0.509804, 0.509804, 0.509804, 1.0 ],
					"midpoints" : [ 1119.5, 400.0, 1096.0, 400.0, 1096.0, 302.0, 1119.5, 302.0 ]
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
					"source" : [ "obj-2", 1 ],
					"destination" : [ "obj-86", 0 ],
					"hidden" : 0,
					"color" : [ 0.721569, 0.721569, 0.721569, 1.0 ],
					"midpoints" : [ 941.5, 127.0, 912.0, 127.0, 912.0, 127.0, 899.5, 127.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-44", 0 ],
					"destination" : [ "obj-46", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 649.5, 637.0, 626.0, 637.0, 626.0, 577.0, 649.5, 577.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-46", 1 ],
					"destination" : [ "obj-44", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 5 ],
					"destination" : [ "obj-10", 0 ],
					"hidden" : 0,
					"color" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-52", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 664.5, 72.0, 641.0, 72.0, 641.0, 15.0, 664.5, 15.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-8", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.568627, 0.568627, 0.568627, 1.0 ],
					"midpoints" : [ 803.5, 35.0, 710.0, 35.0, 710.0, 14.0, 664.5, 14.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-22", 0 ],
					"destination" : [ "obj-28", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [ 732.5, 35.0, 710.0, 35.0, 710.0, 14.0, 664.5, 14.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-28", 1 ],
					"destination" : [ "obj-52", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-7", 0 ],
					"destination" : [ "obj-94", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 0 ],
					"destination" : [ "obj-93", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-94", 1 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"color" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"midpoints" : [ 92.5, 262.0, 24.5, 262.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-93", 0 ],
					"destination" : [ "obj-98", 0 ],
					"hidden" : 0,
					"color" : [ 0.454902, 0.454902, 0.454902, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 11 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"midpoints" : [ 882.5, 324.0, 334.5, 324.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 4 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"midpoints" : [ 336.5, 314.0, 334.5, 314.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 7 ],
					"destination" : [ "obj-25", 0 ],
					"hidden" : 0,
					"color" : [ 0.627451, 0.627451, 0.627451, 1.0 ],
					"midpoints" : [ 570.5, 320.0, 334.5, 320.0 ]
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
					"source" : [ "obj-30", 0 ],
					"destination" : [ "obj-50", 0 ],
					"hidden" : 0,
					"color" : [ 0.0, 0.0, 0.0, 1.0 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-50", 0 ],
					"destination" : [ "obj-29", 0 ],
					"hidden" : 0,
					"color" : [ 0.490196, 0.490196, 0.490196, 1.0 ],
					"midpoints" : [ 139.5, 643.0, 116.0, 643.0, 116.0, 534.0, 258.5, 534.0 ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 15 ],
					"destination" : [ "obj-2", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
, 			{
				"patchline" : 				{
					"source" : [ "obj-98", 15 ],
					"destination" : [ "obj-1", 0 ],
					"hidden" : 0,
					"color" : [ 0.8, 0.8, 0.8, 0.5 ],
					"midpoints" : [  ]
				}

			}
 ]
	}

}
