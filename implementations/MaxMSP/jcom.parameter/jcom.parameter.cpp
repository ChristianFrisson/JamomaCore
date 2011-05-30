/* 
 *	jcom.parameter/message/return
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTModularClassWrapperMax.h"

#define data_out 0
#define	dump_out 1

// Definitions
void		WrapTTDataClass(WrappedClassPtr c);
void		WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst);

void		data_new_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_subscribe(TTPtr self, SymbolPtr address);
void		data_subscribe_array(TTPtr self);
void		data_array_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service, long index);
void		data_array_select(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_address(TTPtr self, SymbolPtr name);

#ifndef JMOD_RETURN
void		data_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_array_return_value(TTPtr baton, TTValue& v);
#endif

#ifndef JMOD_MESSAGE
void		WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_bang(TTPtr self);
void		data_int(TTPtr self, long value);
void		data_float(TTPtr self, double value);
void		data_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
#endif

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTDataClass;
	spec->_new = &WrappedDataClass_new;
	spec->_free = NULL;
#ifndef JMOD_MESSAGE
	spec->_any = &WrappedDataClass_anything;
#else
	spec->_any = NULL;
#endif
	
#ifdef JMOD_MESSAGE
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.message", NULL, spec);
#endif
	
#ifdef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.return", NULL, spec);
#endif
	
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
	return wrapTTModularClassAsMaxClass(TT("Data"), "jcom.parameter", NULL, spec);
#endif
#endif
}

void WrapTTDataClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)data_assist,						"assist",				A_CANT, 0L);
	
#ifndef JMOD_RETURN
	class_addmethod(c->maxClass, (method)data_return_value,					"return_value",			A_CANT, 0);
#endif
	
#ifndef JMOD_MESSAGE	
	class_addmethod(c->maxClass, (method)data_bang,							"bang",					0L);
	class_addmethod(c->maxClass, (method)data_int,							"int",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)data_float,						"float",				A_FLOAT, 0);
	class_addmethod(c->maxClass, (method)data_list,							"list",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)data_inc,							"+",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)data_dec,							"-",					A_GIMME, 0);
#endif
	
	class_addmethod(c->maxClass, (method)data_array_select,					"array/select",			A_GIMME,0);
	
	class_addmethod(c->maxClass, (method)data_address,						"address",				A_SYM,0);
}

void WrappedDataClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// check address argument
	relativeAddress = _sym_nothing;
	if (attrstart && argv)
		if (atom_gettype(argv) == A_SYM)
			relativeAddress = atom_getsym(argv);
	
	if (relativeAddress == _sym_nothing) {
		object_error((ObjectPtr)x, "needs a name as first argument");
		return;
	}
	
	// Make outlets (before attr_args_process)
	/////////////////////////////////////////////////////////////////////////////////
#ifndef JMOD_RETURN
	
	// Don't create outlets during dynamic changes
		x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
		x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data

#endif

	data_new_address(self, relativeAddress, argc--, argv++);
}
	
void data_new_address(TTPtr self, SymbolPtr relativeAddress, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	long						number, i;
	TTObjectPtr					anObject;
	SymbolPtr					instanceAddress;
	TTValue						v;
	
	number = jamoma_parse_bracket(relativeAddress, &x->i_format, &x->s_format);
	
	// no address or [0]
	if (number == 0)
		return;
	
	// Make one object only
	/////////////////////////////////////////////////////////////////////////////////
	if (number == -1) {
		
		x->useInternals = false;
		
		// create the data
#ifdef JMOD_MESSAGE
		jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_message);
#endif
		
#if JMOD_RETURN
		jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_return);
#endif
		
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
		jamoma_data_create((ObjectPtr)x, &x->wrappedObject, kTTSym_parameter);
#endif
#endif
		if (argc && argv)
			attr_args_process(x, argc, argv);
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)data_subscribe, relativeAddress, 0, 0);
	}
	
	// Make an array of object
	/////////////////////////////////////////////////////////////////////////////////
	else if (number) {
		
		x->useInternals = true;
		x->internals = new TTHash();
		x->internals->setThreadProtection(YES);
		x->cursor = kTTSymEmpty;
		for (i = 1; i <= number; i++) {
			
			jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
			
			// create a data
#ifdef JMOD_MESSAGE
			data_array_create((ObjectPtr)x, &anObject, kTTSym_message, i);
#endif
			
#if JMOD_RETURN
			data_array_create((ObjectPtr)x, &anObject, kTTSym_return, i);
#endif
			
#ifndef JMOD_MESSAGE
#ifndef JMOD_RETURN
			data_array_create((ObjectPtr)x, &anObject, kTTSym_parameter, i);
#endif
#endif
			
			// append the data to the internals table
			v = TTValue(TTPtr(anObject));
			v.append(TT(instanceAddress->s_name));
			x->internals->append(TT(instanceAddress->s_name), v);
			
			// handle attribute args to set attribute of each internals data
			x->cursor = TT(instanceAddress->s_name);
			
			if (argc && argv)
				attr_args_process(x, argc, argv);
		}
		
		// The following must be deferred because we have to interrogate our box,
		// and our box is not yet valid until we have finished instantiating the object.
		// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
		defer_low((ObjectPtr)x, (method)data_subscribe_array, NULL, 0, NULL);
	}
}

void data_subscribe(TTPtr self, SymbolPtr relativeAddress)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	// no leading slash means the address is relative
	if (relativeAddress->s_name[0] != C_SEPARATOR)
		jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, jamoma_parse_dieze((ObjectPtr)x, relativeAddress), &x->subscriberObject);
	else
		object_error((ObjectPtr)x, "can't register at %s because this address starts by a /", relativeAddress->s_name);
}

void data_subscribe_array(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr		keyAddress;
	TTValue			keys, storedObject, element;
	TTSubscriberPtr	aSubscriber;
	TTObjectPtr		anObject;
	TTHashPtr		newInternals;
	
	newInternals = new TTHash();
	newInternals->setThreadProtection(YES);
		
	x->internals->getKeys(keys);
	
	for (int i=0; i<keys.getSize(); i++) {
		
		keys.get(i, &keyAddress);
		x->cursor = keyAddress;
		anObject = selectedObject;

		// if the subscription is successful
		if (!jamoma_subscriber_create((ObjectPtr)x, anObject, gensym((char*)keyAddress->getCString()),  &aSubscriber)) {
	
			// prepare new internals
			element = TTValue((TTPtr)anObject);
			element.append(keyAddress);
			element.append((TTPtr)aSubscriber);
			newInternals->append(keyAddress, element);
		}
	}
	
	delete x->internals;
	x->internals = newInternals;
	
	// default : listen all datas
	x->index = -1;
}

void data_array_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service, long index)
{
	TTValue			args;
	TTObjectPtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	
	returnValueCallback = NULL;			// without this, TTObjectInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectInstantiate(TT("callback"), &returnValueCallback, kTTValNONE);
#ifndef JMOD_RETURN
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueBaton->append(TTUInt32(index));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&data_array_return_value));
#endif
	
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectInstantiate(TT("Data"), TTObjectHandle(returnedData), args);
}

void data_array_select(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					instanceAddress;
	unsigned long				i;
	TTValue						v;
	
	if (x->useInternals)
		
		if (argc && argv) {
			if (atom_gettype(argv) == A_LONG) {
				i = atom_getlong(argv);
				if (i > 0 && i <= x->internals->getSize()) {
					x->index = i;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, i);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %ld is not a valid index", i);
			}
			else if (atom_gettype(argv) == A_SYM) {
				instanceAddress = atom_getsym(argv);
				if (instanceAddress == gensym("*")) {
					x->index = -1;
					jamoma_edit_numeric_instance(x->i_format, &instanceAddress, 1);
					x->cursor = TT(instanceAddress->s_name);
				}
				else
					object_error((ObjectPtr)x, "array/select : %s is not a valid index", i);
			}
		}
	else
		object_error((ObjectPtr)x, "array/select : this method is not available. Use an [] in address argument to create an array");
}

void data_address(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// unregister wrapped object (or internals)
	wrappedModularClass_unregister(x);
	
	// rebuild wrapped object (or internals)
	defer_low(self,(method)data_new_address, address, 0, NULL); // TODO : give all @attribute too
}

// Method for Assistance Messages
void data_assist(TTPtr self, TTPtr b, long msg, AtomCount arg, char *dst)
{
	if (msg==1) 						// Inlet
		strcpy(dst, "input");
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "direct: values");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

#ifndef JMOD_MESSAGE
void data_bang(TTPtr self)
{
	data_list(self, _sym_bang, 0, NULL);
}

void data_int(TTPtr self, long value)
{
	t_atom a;
	
	atom_setlong(&a, value);
	data_list(self, _sym_int, 1, &a);
}

void data_float(TTPtr self, double value)
{
	t_atom a;
	
	atom_setfloat(&a, value);
	data_list(self, _sym_float, 1, &a);
}

void data_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;

	if (!x->useInternals)
		jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
	
	else {
		
		// send to each data
		if (x->index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
				}
			}
			x->cursor = kTTSymEmpty;
		}
		else
			jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
	}
}

void WrappedDataClass_anything(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (!x->useInternals)
		jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
	else {
		
		// send to each data
		if (x->index == -1) {
			TTValue keys;
			if (!x->internals->isEmpty()) {
				x->internals->getKeys(keys);
				for (int i=0; i<keys.getSize(); i++) {
					keys.get(i, &x->cursor);
					jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
				}
				x->cursor = kTTSymEmpty;
			}
		}
		else
			jamoma_data_command((TTDataPtr)selectedObject, msg, argc, argv);
	}
}
#endif

#ifndef JMOD_RETURN
void data_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;
	TTUInt8		i;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void data_array_return_value(TTPtr baton, TTValue& v)
{
	WrappedModularInstancePtr	x;
	TTValuePtr					b;
	SymbolPtr					msg, iAdrs;
	long						i, argc = 0;
	AtomPtr						argv = NULL;
	TTBoolean					shifted = NO;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	b->get(0, (TTPtr*)&x);
	b->get(1, i);
	
	if (x->index == -1) {
		jamoma_edit_numeric_instance(x->i_format, &iAdrs, i);
		x->cursor = TT(iAdrs->s_name);
	}
	else
		if (i != x->index) return;
	
	jamoma_ttvalue_to_typed_Atom(v, &msg, &argc, &argv, shifted);
	data_return_value(x, msg, argc, argv);
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}
#endif

#ifndef JMOD_MESSAGE
void data_inc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;

	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TT("Inc"), v);
}

void data_dec(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue v;
	
	jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
	selectedObject->sendMessage(TT("Dec"), v);
}
#endif