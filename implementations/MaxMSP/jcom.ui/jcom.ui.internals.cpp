/* 
 * jcom.ui
 * External for Jamoma: provide standard user interface component for modules
 * By Tim Place, Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "jcom.ui.h"

void ui_create_colors(t_ui* obj)
{
	TTObjectPtr			anObject;
	TTValue				v;
	
	// view/color/contentBackground
	ui_create_parameter(obj, &anObject, gensym("return_color_contentBackground"), TT("view/color/contentBackground"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The background color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarBackground
	ui_create_parameter(obj, &anObject, gensym("return_color_toolbarBackground"), TT("view/color/toolbarBackground"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The background color of the module's toolbar in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/toolbarText
	ui_create_parameter(obj, &anObject, gensym("return_color_toolbarText"), TT("view/color/toolbarText"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The color of the module's toolbar text in the format RGBA where values range [0.0, 1.0]."));
	
	// view/color/border
	ui_create_parameter(obj, &anObject, gensym("return_color_border"), TT("view/color/border"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The border color of the module in the format RGBA where values range [0.0, 1.0]."));
	
	// view/size
	ui_create_parameter(obj, &anObject, gensym("return_view_size"), TT("view/size"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_array);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("The size of the module's UI."));
	
	v.append(obj->box.b_patching_rect.width);
	v.append(obj->box.b_patching_rect.height);
	anObject->setAttributeValue(kTTSym_Value, v);
	
	// view/freeze
	ui_create_parameter(obj, &anObject, gensym("return_view_freeze"), TT("view/freeze"));
	anObject->setAttributeValue(kTTSym_Type, kTTSym_boolean);
	anObject->setAttributeValue(kTTSym_RampDrive, kTTSym_none);
	anObject->setAttributeValue(kTTSym_Description, TT("Freeze each jcom.view in the patch"));
}

void ui_destroy_colors(t_ui *obj)
{
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete all parameters
	if (obj->hash_parameters) {
		
		obj->hash_parameters->getKeys(hk);
		
		for (i=0; i<obj->hash_parameters->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			ui_destroy_parameter(obj, key);
		}
		
		delete obj->hash_parameters;
	}
}
								   
void ui_create_parameter(t_ui *obj, TTObjectPtr *returnedParameter, SymbolPtr aCallbackMethod, TTSymbolPtr name)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTNodePtr		aNode;
	TTBoolean		nodeCreated;
	TTSymbolPtr		paramAddress;
	
	// Prepare arguments to create a TTParameter object
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedParameter = NULL;
	TTObjectInstantiate(TT("Parameter"), TTObjectHandle(returnedParameter), args);
	
	// Register parameter
	joinOSCAddress(obj->modelAddress, name, &paramAddress);
	TTModularDirectory->TTNodeCreate(paramAddress, *returnedParameter, NULL, &aNode, &nodeCreated);
	
	// Store the parameter
	args = TTValue(TTPtr(*returnedParameter));
	obj->hash_parameters->append(name, args);
}								   

void ui_destroy_parameter(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTSymbolPtr		paramAddress;
	
	obj->hash_parameters->lookup(name, storedObject);
	storedObject.get(0, (TTPtr*)&anObject);
	
	joinOSCAddress(obj->modelAddress, name, &paramAddress);
	
	TTModularDirectory->TTNodeRemove(paramAddress);
	
	if (anObject)
		TTObjectRelease(&anObject);
}

void ui_send_parameter(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTSymbolPtr		paramAddress;
	
	obj->hash_parameters->lookup(name, storedObject);
	storedObject.get(0, (TTPtr*)&anObject);
	
	anObject->setAttributeValue(kTTSym_Value, v);
}

void ui_destroy_all_viewers(t_ui* obj)
{
	TTValue			hk, v;
	TTSymbolPtr		key;
	TTUInt8			i;
	
	// delete all viewers
	if (obj->hash_viewers) {
		
		obj->hash_viewers->getKeys(hk);
		
		for (i=0; i<obj->hash_viewers->getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			ui_destroy_viewer(obj, key);
		}
		
		delete obj->hash_viewers;
	}
}

void ui_create_viewer(t_ui *obj, TTObjectPtr *returnedViewer, SymbolPtr aCallbackMethod, TTSymbolPtr name)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	TTSymbolPtr		viewerAddress;
	
	// prepare arguments
	args.append(TTModularDirectory);
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("Callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(obj));
	returnValueBaton->append(TTPtr(aCallbackMethod));
	returnValueCallback->setAttributeValue(TT("Baton"), TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(TT("Function"), TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectInstantiate(TT("Viewer"), TTObjectHandle(returnedViewer), args);
	
	// Set address attribute
	joinOSCAddress(obj->modelAddress, name, &viewerAddress);
	args = TTValue(viewerAddress);
	(*returnedViewer)->setAttributeValue(kTTSym_Address, args);
	
	// Store the Viewer
	args = TTValue(TTPtr(*returnedViewer));
	obj->hash_viewers->append(name, args);
}

void ui_destroy_viewer(t_ui *obj, TTSymbolPtr name)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	
	if (obj->hash_viewers) {
		obj->hash_viewers->lookup(name, storedObject);
		storedObject.get(0, (TTPtr*)&anObject);
	
		if (anObject)
			TTObjectRelease(&anObject);
	}
}

void ui_send_viewer(t_ui *obj, TTSymbolPtr name, TTValue v)
{
	TTValue			storedObject;
	TTObjectPtr		anObject;
	TTSymbolPtr		paramAddress;
	if (obj->hash_viewers) {
		obj->hash_viewers->lookup(name, storedObject);
		storedObject.get(0, (TTPtr*)&anObject);
	
		anObject->sendMessage(kTTSym_send, v);
	}
}

#if 0
#pragma mark -
#pragma mark message handlers
#endif

void ui_observe_parameter(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	SymbolPtr	paramName;
	TTObjectPtr anObject;
	TTBoolean	gain = false;
	TTBoolean	mix = false;
	TTBoolean	bypass = false;
	TTBoolean	freeze = false;
	TTBoolean	preview = false;
	TTBoolean	mute = false;
	TTBoolean	panel = false;
	TTBoolean	meters = false;
	TTBoolean	preset = false;			// is there a /preset node in the model ?
	TTBoolean	help = false;			// is there a help patch for the model ?
	TTBoolean	ref = false;			// is there a ref page for the model ?
										// note : we don't look for some other parameters because 
										// they exist for any model (/view/refresh, /autodoc, ...)
	TTBoolean	change = false;
	
	// look the namelist to know which parameter exist
	for (long i=0; i<argc; i++) {
		
		paramName = atom_getsym(argv+i);
		
		if (paramName == gensym("/gain"))
			gain = true;
		else if (paramName == gensym("/mix"))
			mix = true;
		else if (paramName == gensym("/bypass"))
			bypass = true;
		else if (paramName == gensym("/freeze"))
			freeze = true;
		else if (paramName == gensym("/preview"))
			preview = true;
		else if (paramName == gensym("/mute"))
			mute = true;
		else if (paramName == gensym("/view/panel"))			// TODO : create sender (a viewer is useless)
			panel = true;
		else if (paramName == gensym("/audio/meters/freeze"))
			meters = true;
		else if (paramName == gensym("/preset/load"))			// the internal TTExplorer looks for Parameters (not for node like /preset)
			preset = true;
		else if (paramName == gensym("/model/help"))			// TODO : create sender (a viewer is useless)
			help = true;
		else if (paramName == gensym("/model/reference"))		// TODO : create sender (a viewer is useless)
			ref = true;
	}
	
	// if a parameter appears or disappears : create or remove the viewer
	
	// gain
	if (gain != obj->has_gain) {
		obj->has_gain = gain;
		if (gain) 
			ui_create_viewer(obj, &anObject, gensym("return_gain"), TT("gain"));
		else
		  ui_destroy_viewer(obj, TT("gain"));
	}
	
	// mix
	if (mix != obj->has_mix) {
		obj->has_mix = mix;
		if (mix) 
			ui_create_viewer(obj, &anObject, gensym("return_mix"), TT("mix"));
		else
			ui_destroy_viewer(obj, TT("mix"));
		
		change = true;
	}
	
	// bypass
	if (bypass != obj->has_bypass) {
		obj->has_bypass = bypass;
		if (bypass) 
			ui_create_viewer(obj, &anObject, gensym("return_bypass"), TT("bypass"));
		else
			ui_destroy_viewer(obj, TT("bypass"));
		
		change = true;
	}
	
	// freeze
	if (freeze != obj->has_freeze) {
		obj->has_freeze = freeze;
		if (freeze) 
			ui_create_viewer(obj, &anObject, gensym("return_freeze"), TT("freeze"));
		else
			ui_destroy_viewer(obj, TT("freeze"));
		
		change = true;
	}
	
	// preview
	if (preview != obj->has_preview) {
		obj->has_preview = preview;
		if (preview) 
			ui_create_viewer(obj, &anObject, gensym("return_preview"), TT("preview"));
		else
			ui_destroy_viewer(obj, TT("preview"));
		
		change = true;
	}
	
	// mute
	if (mute != obj->has_mute) {
		obj->has_mute = mute;
		if (mute) 
			ui_create_viewer(obj, &anObject, gensym("return_mute"), TT("mute"));
		else
			ui_destroy_viewer(obj, TT("mute"));
		
		change = true;
	}
	
	// panel
	if (panel != obj->has_panel) {
		obj->has_panel = panel;
		if (panel) 
			ui_create_viewer(obj, &anObject, gensym("return_panel"), TT("panel"));
		else
			ui_destroy_viewer(obj, TT("panel"));
		
		change = true;
	}
	
	if (change)
		jbox_redraw(&obj->box);
}

void ui_return_metersdefeated(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_metersdefeated = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_muted = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_bypass(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_bypassed = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_mix(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->mix = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_gain(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->gain = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_frozen = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_preview(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	obj->is_previewing = atom_getlong(argv);
	jbox_redraw(&obj->box);
}

void ui_return_view_size(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	; // do nothing ?
}

void ui_return_view_freeze(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("ui_is_frozen"), argc, argv);
}

void ui_return_color_contentBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	// Colors default to "0". If default value is passed, we avoid setting the color, in order to stick to object defaults.
	if (argc>1)
		object_attr_setvalueof(obj, _sym_bgcolor, argc, argv);
}

void ui_return_color_toolbarBackground(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("headercolor"), argc, argv);
}

void ui_return_color_toolbarText(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, _sym_textcolor, argc, argv);
}

void ui_return_color_border(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	t_ui* obj = (t_ui*)self;
	
	if (argc>1)
		object_attr_setvalueof(obj, gensym("bordercolor"), argc, argv);
}
