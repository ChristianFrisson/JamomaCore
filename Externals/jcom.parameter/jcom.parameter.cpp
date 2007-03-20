/* 
 * jcom.paramater
 * External for Jamoma: parameter definition using pattr
 * By Tim Place, Copyright � 2006
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "jcom.parameter.h"		// everything we need is in here
#include "ext_pattr_bundle.h"	// pattr definitions

// Globals
t_class		*param_class;		// Required: Global pointer for our class
bool		g_pattr_valid;		// Did pattr init successfully?
	
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy);

/************************************************************************************/
// Class Definition

int main(void)				// main recieves a copy of the Max function macros table
{
	short		err = 0;
	long		attrflags = 0;
	t_class		*c;
	t_object	*attr;
	
	// Initialize Globals
	g_pattr_valid = false;
	common_symbols_init();
#ifndef JMOD_MESSAGE
	err = ext_pattr_setup();
	if(err){
		post("Jamoma: pattr integration is not available - could not init pattr-bundle");
		g_pattr_valid = false;
	}
	else
		g_pattr_valid = true;
#endif

	// Define our class
	c = class_new(OBJECT_CLASS_NAME,(method)param_new, (method)param_free, (short)sizeof(t_param), (method)0L, A_GIMME, 0);
	class_obexoffset_set(c, calcoffset(t_param, obex));

	if(g_pattr_valid == true)
		pattr_obex_init(c);			// set up the pattr obex
		
	// Make methods accessible for our class:
	// Note that we can't make the bang method directly accessible here (must go through another function)
	//	because the function pointer is in out struct, which hasn't been defined yet
	class_addmethod(c, (method)param_dispatched,			"dispatched",	A_GIMME, 0L);
	class_addmethod(c, (method)param_int,					"int",			A_DEFLONG,	0L);
	class_addmethod(c, (method)param_float,					"float",		A_DEFFLOAT,	0L);
 	class_addmethod(c, (method)param_list,					"list",			A_GIMME, 0L);
 	class_addmethod(c, (method)param_symbol,				"anything",		A_GIMME, 0L);
	class_addmethod(c, (method)param_ui_refresh,			"ui/refresh",	0L);
	class_addmethod(c, (method)param_inc,					"inc",			0L);
	class_addmethod(c, (method)param_dec,					"dec",			0L);
	class_addmethod(c, (method)param_dump,					"dump",			0L);
	class_addmethod(c, (method)param_bang,					"bang",			0L);
	class_addmethod(c, (method)param_release,				"release",		A_CANT, 0L);	// notification of hub being freed
	class_addmethod(c, (method)param_assist,				"assist",		A_CANT, 0L); 
    class_addmethod(c, (method)object_obex_dumpout,			"dumpout",		A_CANT,0);  
    class_addmethod(c, (method)object_obex_quickref,		"quickref",		A_CANT, 0);
#ifndef JMOD_MESSAGE
	if(g_pattr_valid == true){
		// required to manually add because of our pattr-wrapping for parameters
		class_addmethod(c, (method)param_getvalueof,			"getvalueof",	A_CANT, 0);
		class_addmethod(c, (method)param_setvalueof,			"setvalueof",	A_CANT, 0);
		class_addmethod(c, (method)pattr_obex_notify,			"notify",		A_CANT, 0); 	
	}
#endif

	// ATTRIBUTE: clipmode - options are none, low, high, both
	attr = attr_offset_new("clipmode", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_clipmode));
	class_addattr(c, attr);

	// ATTRIBUTE: description - does nothing, but is accessed by jcom.dispatcher for /autodoc generation
	attr = attr_offset_new("description", _sym_symbol, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_description));
	class_addattr(c, attr);

	if(g_pattr_valid == false){
		// ATTRIBUTE: name --- in parameters, the name attribute is provided to us by the pattr wrapping	
		attr = attr_offset_new("name", _sym_symbol, attrflags,
			(method)0, (method)0, calcoffset(t_param, attr_name));
		class_addattr(c, attr);	
	}
	
	// ATTRIBUTE: ramp
	attr = attr_offset_new("ramp", _sym_symbol, attrflags,
		(method)0, (method)param_setramp, calcoffset(t_param, attr_ramp));
	class_addattr(c, attr);

	// ATTRIBUTE: range <low, high>
	attr = attr_offset_array_new("range", _sym_float32, 2, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_range_len), calcoffset(t_param, attr_range));
	class_addattr(c, attr);

	// ATTRIBUTE: repetitions - 0 means repetitive values are not allowed, 1 means they are
	attr = attr_offset_new("repetitions", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_repetitions));
	class_addattr(c, attr);

	// ATTRIBUTE: type - options are msg_generic, msg_int, msg_float, msg_symbol, msg_toggle, msg_list, msg_none
	attr = attr_offset_new("type", _sym_symbol, attrflags,
		(method)0, (method)param_settype, calcoffset(t_param, attr_type));
	class_addattr(c, attr);
			
	// ATTRIBUTE: ui/freeze - toggles a "frozen" ui outlet so that you can save cpu
	attr = attr_offset_new("ui/freeze", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_ui_freeze));
	class_addattr(c, attr);
	
	// ATTRIBUTE: slavemode - indicates that the instance is slave to another parameter/message
	attr = attr_offset_new("slave", _sym_long, attrflags,
	 	(method)0, (method)0, calcoffset(t_param, attr_slavemode));
	class_addattr(c, attr);

	// ATTRIBUTE: stepsize - how much increment or decrement by
	attr = attr_offset_new("stepsize", _sym_float32, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_stepsize));
	class_addattr(c, attr);

	// ATTRIBUTE: priority - used to determine order of parameter recall in a preset
	attr = attr_offset_new("priority", _sym_long, attrflags,
		(method)0, (method)0, calcoffset(t_param, attr_priority));
	class_addattr(c, attr);

	// ATTRIBUTE: value
	attr = attr_offset_array_new("value", _sym_atom, LISTSIZE, attrflags,
		   (method)0, (method)0, calcoffset(t_param, list_size), calcoffset(t_param, attr_value));
	class_addattr(c, attr);

	// Finalize our class
	class_register(CLASS_BOX, c);
	param_class = c;
	
	jcom_core_init();
	return 0;
}


/************************************************************************************/
// Object Life

void *param_new(t_symbol *s, long argc, t_atom *argv)
{
	short		i;
	long		attrstart = attr_args_offset(argc, argv);
	t_param		*x = (t_param *)object_alloc(param_class);
	t_symbol	*name = _sym_nothing;

	if(attrstart && argv)
		atom_arg_getsym(&name, 0, attrstart, argv);
	else
		name = symbol_unique();

	if(x){
		for(i=num_outlets; i > 0; i--)
			x->outlets[i-1] = outlet_new(x, 0);
		object_obex_store((void *)x, _sym_dumpout, (t_object *)x->outlets[k_outlet_dumpout]);

		x->attr_ramp = ps_none;						// set defaults...	
		x->rampunit = NULL;
		x->rampfunction = NULL;
		
		// defaulted to one long above, set list to be of size 1
		x->list_size = 1;
		for(i = 0; i < LISTSIZE; i++)	
			atom_setlong(&x->atom_list[i], 0); // atom_setlong(&x->attr_value, 0);
		x->module_name = _sym_nothing;
		x->name = name;
		atom_setsym(&x->name_atom, name);
		x->attr_name = name;
		x->attr_range[0] = 0.0;
		x->attr_range[1] = 1.0;
		x->attr_range_len = 2;
		x->attr_clipmode = ps_none;
		x->attr_description = _sym_nothing;
		x->attr_type = NULL;
		x->attr_repetitions = 1;
		x->attr_ui_freeze = 0;
		x->attr_slavemode = 0;
		x->attr_stepsize = 1.0;
		x->attr_priority = 0;						// default is no priority
		x->param_output = &param_output_generic;		// set function pointer to default
		x->hub = NULL;
		
		attr_args_process(x, argc, argv);			// handle attribute args
		if(g_pattr_valid == true)
			pattr_obex_setup(x, name);				// set up out internal pattr instance

		x->container = (t_patcher *)gensym("#P")->s_thing;	
		defer_low(x, (method)param_subscribe, 0, 0, 0);
		
		// If no type was specified by the user we call the accessor here
		// this is important because memory is configured - not just setting a default!
		if(x->attr_type == NULL){
			t_atom a;
			atom_setsym(&a, ps_msg_generic);
			object_attr_setvalueof(x, ps_type, 1, &a);
		}
		
		x->ui_qelem = qelem_new(x, (method)param_ui_queuefn);
	}
	return (x);										// return the pointer to our new instantiation
}

// deferred function for registering with the jcom.hub object
void param_subscribe(t_param *x)
{
#ifdef JMOD_MESSAGE
	x->hub = jcom_core_subscribe(x, x->name, x->container, ps_subscribe_message);
#else
	x->hub = jcom_core_subscribe(x, x->name, x->container, ps_subscribe_parameter);
#endif // JMOD_MESSAGE

	x->module_name = (t_symbol *)object_method(x->hub, ps_module_name_get);	
}


void param_free(t_param *x)
{	
//	jcom_core_unsubscribe(x->hub, x->name);
	jcom_core_unsubscribe(x->hub, x);

	if(x->rampfunction != NULL){
		x->rampfunction->destroy(x->rampunit);
		sysmem_freeptr(x->rampfunction);
	}	
	qelem_free(x->ui_qelem);
}


// Notification that the hub no longer exists
void param_release(t_param *x)
{
	x->hub = NULL;
}



#ifndef JMOD_MESSAGE
/************************************************************************************/
// Communication with PSTO (pattrstorage)

// FROM psto
t_max_err param_setvalueof(t_param *x, long argc, t_atom *argv)
{
	if(argc && argv) {
		sysmem_copyptr(argv, &x->atom_list[0], sizeof(t_atom) * argc);
		x->list_size = argc;
		x->param_output(x);
	}	
	return MAX_ERR_NONE;
}

// TO psto
t_max_err param_getvalueof(t_param *x, long *argc, t_atom **argv)
{
	if(argc && argv){
		if(*argc && *argv) {
			// use passed in memory
		} else { 
			if(x->list_size > 1)
				*argv = (t_atom *)getbytes(sizeof(t_atom) * x->list_size);
			else
				*argv = (t_atom *)getbytes(sizeof(t_atom));
		}
		
		*argc = x->list_size > 1 ? x->list_size : 1;
		sysmem_copyptr(&x->atom_list[0], *argv, sizeof(t_atom) * (*argc));
	}
	return MAX_ERR_NONE;
}

#endif

/************************************************************************************/
// Methods bound to input/inlets

// Method for Assistance Messages
void param_assist(t_param *x, void *b, long msg, long arg, char *dst)
{
	if(msg==1) 						// Inlet
		strcpy(dst, "input");
	else{							// Outlets
		switch(arg){
			case k_outlet_set:
					strcpy(dst, "set: connect to ui object");
					break;
			case k_outlet_direct:
					strcpy(dst, "direct: values");
					break;
			case k_outlet_dumpout:
					strcpy(dst, "dumpout");
					break;
		}
 	}		
}


// DUMP: use for debugging - dump state to the Max window
void param_dump(t_param *x)
{
	char	s[256];
	t_atom	a[4];
	
	if(x->hub != NULL){
		sprintf(s, "dump/%s:clipmode", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_clipmode);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:description", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_description);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:priority", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_priority);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:ramp", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_ramp);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:range", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setfloat(&a[1], x->attr_range[0]);
		atom_setfloat(&a[2], x->attr_range[1]);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:repetitions", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_repetitions);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:type", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setsym(&a[1], x->attr_type);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:ui/freeze", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		atom_setlong(&a[1], x->attr_ui_freeze);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);

		sprintf(s, "dump/%s:value", x->attr_name->s_name);
		atom_setsym(&a[0], gensym(s));
		jcom_core_atom_copy(&a[1], &x->attr_value);
		object_method_typed(x->hub, ps_feedback, 2, a, NULL);
	}
}


/* The 'bang' method is actually a function pointer to a method optimized for the 
   the data type of the parameter.
	
   If the user sends a bang to the parameter/message, then we want to send out the 
   most recent output again.
*/

/*
// BANG INPUT - this sends the OSC name with no additional arguments
void return_bang(t_return *x)
{
	x->output_len = 1;
	if(x->hub != NULL)
		object_method_typed(x->hub, ps_return, x->output_len, x->output, NULL);
}

*/

// 'bang' method for user input
void param_bang(t_param *x)
{
#ifdef JMOD_MESSAGE
	t_atom	a;
	
	atom_setsym(&a, gensym(""));
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	outlet_anything(x->outlets[k_outlet_set], _sym_set, 1, &a);

	// call on the hub to pass our data onward
	if(x->hub != NULL){
		jcom_core_atom_copy(&a, &x->name_atom);
		object_method_typed(x->hub, ps_feedback, 1, &a, NULL);
	}
#else
	x->param_output(x);
#endif
}


// Actual bang functions
void param_output_generic(void *z)
{
	t_param *x = (t_param *)z;
	
	param_clip_generic(x);
	if(x->list_size > 1) {
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	} else {
		if(x->attr_value.a_type == A_LONG)
			outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
		else if(x->attr_value.a_type == A_FLOAT)
			outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
		else if(x->attr_value.a_type == A_SYM)
			outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	}
	param_send_feedback(x);
}

void param_output_int(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_int(x);
	outlet_int(x->outlets[k_outlet_direct], x->attr_value.a_w.w_long);
	param_send_feedback(x);
}

void param_output_float(void *z)
{
	t_param *x = (t_param *)z;

	param_clip_float(x);
	outlet_float(x->outlets[k_outlet_direct], x->attr_value.a_w.w_float);
	param_send_feedback(x);
}

void param_output_symbol(void *z)
{
	t_param *x = (t_param *)z;

	outlet_anything(x->outlets[k_outlet_direct], x->attr_value.a_w.w_sym, 0, NULL);
	param_send_feedback(x);
}

void param_output_list(void *z)
{
	t_param *x = (t_param *)z;
	
	param_clip_list(x);
	outlet_anything(x->outlets[k_outlet_direct], _sym_list, x->list_size, x->atom_list);
	param_send_feedback(x);
}

#ifdef JMOD_MESSAGE
void param_output_none(void *z)
{
	t_param *x = (t_param *)z;
	t_atom output[1];
	t_atom *out = (t_atom *)(&output);

	// bang direct output
	outlet_bang(x->outlets[k_outlet_direct]);
	
	// call on the hub to pass our data onward
	// We can not use (method)param_send_feedback here as it assumes an additional argument
	if(x->hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		object_method_typed(x->hub, ps_feedback, 1, out, NULL);
	}
}
#endif // JMOD_MESSAGE


// INC & DEC
void param_inc(t_param *x)
{
	if(x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_direct], ps_inc, 0, NULL);
	else{
		if (x->rampfunction)
			x->rampfunction->stop(x->rampunit);				// new input - halt any ramping...
		if(x->attr_type == ps_msg_int){
			x->attr_value.a_w.w_long += x->attr_stepsize;	// step up
			param_output_int(x);								// output
		}
		else if((x->attr_type == ps_msg_float) || (x->attr_type == ps_msg_generic)){
			x->attr_value.a_w.w_float += x->attr_stepsize;
			param_output_float(x);
		}
		else if(x->attr_type == ps_msg_toggle){
			if(x->attr_value.a_w.w_long == 1)
				x->attr_value.a_w.w_long = 0;
			else
				x->attr_value.a_w.w_long = 1;
			param_output_int(x);
		}
		else
			error("%s parameter (in the %s module) is an inappropriate type for the 'inc' message.");
	}
}

void param_dec(t_param *x)
{
	if (x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_direct], ps_dec, 0, NULL);
	else {
		if (x->rampfunction)
			x->rampfunction->stop(x->rampunit);				// new input - halt any ramping...
		if(x->attr_type == ps_msg_int){
			x->attr_value.a_w.w_long -= x->attr_stepsize;	// step down		
			param_output_int(x);								// output
		}
		else if((x->attr_type == ps_msg_float) || (x->attr_type == ps_msg_generic)){
			x->attr_value.a_w.w_float -= x->attr_stepsize;
			param_output_float(x);
		}
		else if(x->attr_type == ps_msg_toggle){
			if(x->attr_value.a_w.w_long == 1)
				x->attr_value.a_w.w_long = 0;
			else
				x->attr_value.a_w.w_long = 1;
			param_output_int(x);
		}
		else
			error("%s parameter (in the %s module) is an inappropriate type for the 'dec' message.");
	}
}


// ATTRIBUTE: TYPE
// This is crucial because it sets function pointers for the optimized clipping, bang, and other functions
t_max_err param_settype(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_type = arg;

	if(arg == ps_msg_int){
		x->param_output = &param_output_int;
	}
	else if(arg == ps_msg_float){
		x->param_output = &param_output_float;
	}
	else if(arg == ps_msg_symbol){
		x->param_output = &param_output_symbol;
	}
	else if(arg == ps_msg_toggle){
		x->param_output = &param_output_int;
	}
	else if(arg == ps_msg_generic){
		x->param_output = &param_output_generic;
	} 
	else if(arg == ps_msg_list){
		x->param_output = &param_output_list;
	}
#ifdef JMOD_MESSAGE
	else if(arg == ps_msg_none){
		x->param_output = &param_output_none;
	}
#endif // JMOD_MESSAGE
	else{
		error("Jamoma - invalid type specified for %s parameter in the %s module.", x->name->s_name, x->module_name->s_name);
		x->attr_type = ps_msg_generic;
		x->param_output = &param_output_generic;
	}

	defer_low(x, (method)param_ramp_setup, 0, 0, 0);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// ATTRIBUTE: RAMP
// This is crucial because it sets function pointers
t_max_err param_setramp(t_param *x, void *attr, long argc, t_atom *argv)
{
	t_symbol *arg = atom_getsym(argv);
	x->attr_ramp = arg;
	
	defer_low(x, (method)param_ramp_setup, 0, 0, 0);

	return MAX_ERR_NONE;
	#pragma unused(attr)
}


// INT INPUT
void param_int(t_param *x, long value)
{
	if (x->attr_slavemode)
		outlet_int(x->outlets[k_outlet_direct], value);
	else {	
		x->list_size = 1;
		if(x->attr_repetitions == 0){
			if(value == atom_getlong(&x->attr_value))
				return;
		}
		// new input - halt any ramping...
		if (x->rampfunction)
			x->rampfunction->stop(x->rampunit);
		atom_setlong(&x->attr_value, value);
		x->param_output(x);
	}
}


// FLOAT INPUT
void param_float(t_param *x, double value)
{
	if (x->attr_slavemode)
		outlet_float(x->outlets[k_outlet_direct], value);
	else {
		x->list_size = 1;
		if(x->attr_repetitions == 0){
			if(value == atom_getfloat(&x->attr_value))
				return;
		}
		// new input - halt any ramping...
		if(x->rampfunction)
			x->rampfunction->stop(x->rampunit);
	
		atom_setfloat(&x->attr_value, value);
		x->param_output(x);
	}
}


// SYMBOL INPUT
void param_symbol(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	if (x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_direct], msg, argc, argv);
	else {	
		x->list_size = 1;
		if(x->attr_repetitions == 0){
			if(jcom_core_atom_compare(x->attr_type, &x->attr_value, argv))
				return;
		}
		atom_setsym(&x->attr_value, msg);
		x->param_output(x);
	}
}


void param_ui_refresh(t_param *x)
{
	if (!x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// Send feedback to the hub
void param_send_feedback(t_param *x)
{
	t_atom output[LISTSIZE + 1];
	t_atom *out = (t_atom *)(&output);
	
	// send to our ui outlet
	if(x->attr_ui_freeze == 0)
		qelem_set(x->ui_qelem);
	
	// call on the hub to pass our data onward
	if(x->hub != NULL){
		jcom_core_atom_copy(out, &x->name_atom);
		jcom_core_atom_copy(out+1, &x->attr_value);
		// copy any remaining atoms
		if(x->list_size > 1) 
			sysmem_copyptr(&x->atom_list[1], out + 2, sizeof(t_atom) * (x->list_size - 1));
		object_method_typed(x->hub, ps_feedback, x->list_size + 1, out, NULL);
	}
	// notify pattr that we have modified data
#ifndef JMOD_MESSAGE
	object_notify(x, _sym_modified, NULL);
#endif
}


// Send values to a potentially connected ui object at the first outlet
void param_ui_queuefn(t_param *x)
{
	outlet_anything(x->outlets[k_outlet_set], _sym_set, x->list_size, &x->attr_value);
}


// messages received from jcom.hub
void param_dispatched(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	if (x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, argc, argv);
	else {
		if(x->attr_repetitions == 0){
			// If it's not a list this will perform the comparison as a 1 element list
			if(param_list_compare(x->atom_list, x->list_size, argv, argc))
				return;
		}
		if(argc > 1){
			param_list(x, msg, argc, argv);
		}
		else{
			jcom_core_atom_copy(&x->attr_value, argv);
			x->param_output(x);
		}
	}
}

// Returns true if lists are identical
int param_list_compare(t_atom *x, long lengthx, t_atom *y, long lengthy)
{
	// If lists differ in length they're obviously not the same
	if(lengthx == lengthy) {
		short type;
		for(int i = 0; i < lengthx; i++) {
			if((x->a_type) != (y->a_type))
				return 0; // not identical, types differ
			
			type = x->a_type;
			if((type == A_FLOAT) && (x->a_w.w_float != y->a_w.w_float))
				return 0;
			else if((type == A_LONG) && (x->a_w.w_long != y->a_w.w_long))
				return 0;
			else if((type == A_SYM) && (x->a_w.w_sym != y->a_w.w_sym))
				return 0;
			
			x++; y++;  // keep going
		}
	} else {
		return 0; // list lengths differ
	}
	
	return 1;
}

// LIST INPUT <value, ramptime>
void param_list(t_param *x, t_symbol *msg, short argc, t_atom *argv)
{
	float	value, time;
	
	if (x->attr_slavemode)
		outlet_anything(x->outlets[k_outlet_direct], _sym_list, argc, argv);
		
	// Check the second to last item in the list first, which when ramping should == the string ramp
	t_atom* ramp = argv + (argc - 2);
	if(ramp->a_type == A_SYM && ramp->a_w.w_sym == ps_ramp) {
		// XXX this currently doesn't handle ramping with lists
		value = atom_getfloat(argv);
		time = atom_getfloat(argv+(argc-1));

		if(time <= 0){
			jcom_core_atom_copy(&x->attr_value, argv);
			x->param_output(x);
			return;
		}	

		if(x->attr_repetitions == 0){
			if(param_list_compare(x->atom_list, x->list_size, argv, argc))
				return;	// nothing to do
		}
		x->rampfunction->set(x->rampunit, atom_getfloat(&x->attr_value));
		x->rampfunction->go(x->rampunit, value, time);
	} else {
		// Don't output if the input data is identical
		if(!x->attr_repetitions) {
			if(param_list_compare(x->atom_list, x->list_size, argv, argc))
				return;	// nothing to do
		}
		
		for(int i = 0; i < argc; i++) {
			switch(argv[i].a_type) 
			{
				case A_LONG:
					atom_setlong(&x->atom_list[i], atom_getlong(argv + i));
					break;
				case A_FLOAT:
					atom_setfloat(&x->atom_list[i], atom_getfloat(argv + i));
					break;
				case A_SYM:
					atom_setsym(&x->atom_list[i], atom_getsym(argv + i));
					break;
				default:
					error("param_list: no type specification");
					break;
			}
		}
		x->list_size = argc;
		x->param_output(x);
	}

}


#pragma mark -
#pragma mark Ramp Units

void param_ramp_callback_float(void *v, float value)
{
	t_param *x = (t_param *)v;
	float	oldval = atom_getfloat(&x->attr_value);
	
	if(value != oldval){

		atom_setfloat(&x->attr_value, value);
		param_output_float(x);
	}
}


void param_ramp_callback_int(void *v, float value)
{
	t_param	*x= (t_param *)v;
	long	val	= value, oldval;

	oldval = atom_getlong(&x->attr_value);
	if(val != oldval){
		atom_setlong(&x->attr_value, value);
		param_output_int(x);
	}
}


void param_ramp_setup(t_param *x)
{
	// 1. check and free memory
	if(x->rampfunction != NULL)
		sysmem_freeptr(x->rampfunction);	
	if(x->rampunit != NULL)
		x->rampfunction->destroy(x->rampunit);

	// 2. allocate memory for function pointers
	x->rampfunction = (t_rampunit_functions *)sysmem_newptr(sizeof(t_rampunit_functions));

	// 3. setup function pointers
	if(x->attr_ramp == ps_linear){
		x->rampfunction->create 	= ramplib_linear_max_create;
		x->rampfunction->destroy 	= ramplib_linear_max_free;
		x->rampfunction->attrset 	= &ramplib_linear_max_attrset;
		x->rampfunction->attrget 	= &ramplib_linear_max_attrget;
		x->rampfunction->go 		= &ramplib_linear_max_go;
		x->rampfunction->set 		= &ramplib_linear_max_set;
		x->rampfunction->stop 		= &ramplib_linear_max_stop;
		x->rampfunction->tick 		= &ramplib_linear_max_tick;
	}
	else if(x->attr_ramp == ps_linear_q){
		x->rampfunction->create 	= &ramplib_linear_maxq_create;
		x->rampfunction->destroy 	= &ramplib_linear_maxq_free;
		x->rampfunction->attrset 	= &ramplib_linear_maxq_attrset;
		x->rampfunction->attrget 	= &ramplib_linear_maxq_attrget;
		x->rampfunction->go 		= &ramplib_linear_maxq_go;
		x->rampfunction->set 		= &ramplib_linear_maxq_set;
		x->rampfunction->stop 		= &ramplib_linear_maxq_stop;
		x->rampfunction->tick 		= &ramplib_linear_maxq_tick;
	}
	else{
		x->rampfunction->create 	= &ramplib_none_create;
		x->rampfunction->destroy 	= &ramplib_none_free;
		x->rampfunction->attrset 	= &ramplib_none_attrset;
		x->rampfunction->attrget 	= &ramplib_none_attrget;
		x->rampfunction->go 		= &ramplib_none_go;
		x->rampfunction->set 		= &ramplib_none_set;
		x->rampfunction->stop 		= &ramplib_none_stop;
		x->rampfunction->tick 		= &ramplib_none_tick;
	}
	
	// 4. allocate and create ramp unit
	if((x->attr_type == ps_msg_int) || (x->attr_type == ps_msg_toggle))
		x->rampunit = x->rampfunction->create(param_ramp_callback_int, (void *)x);
	else	// assume float type
		x->rampunit = x->rampfunction->create(param_ramp_callback_float, (void *)x);
		
	if(x->rampunit == NULL)
		error("jcom.parameter (%s module): could not allocate memory for ramp unit!", x->module_name);
}
