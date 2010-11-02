/* 
 *	jcom.receive
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

#define address_out 0
#define data_out 1


// Definitions
void	WrapTTReceiverClass(WrappedClassPtr c);
void	WrappedReceiverClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void	receive_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void	receive_return_address(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void	receive_return_value(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void	receive_bang(TTPtr self);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTReceiverClass;
	spec->_new = &WrappedReceiverClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Receiver"), "jcom.receive", NULL, spec);
}

void WrapTTReceiverClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)receive_assist,				"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)receive_return_address,		"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)receive_return_value,			"return_value",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)receive_bang,					"bang",					0);
	
}

void WrappedReceiverClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments

	// A Modular object needs an address argument : atom_getsym(argv) or _sym_nothing by default
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	jamoma_receiver_create((ObjectPtr)x, address, &x->wrappedObject);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 2);
	x->outlets[address_out] = outlet_new(x, NULL);					// anything outlet to output address
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

// Method for Assistance Messages
void receive_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void receive_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[address_out], msg, argc, argv);
}

void receive_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// avoid blank before data
	if (msg == _sym_nothing)
		outlet_atoms(x->outlets[data_out], argc, argv);
	else
		outlet_anything(x->outlets[data_out], msg, argc, argv);
}

void receive_bang(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	x->wrappedObject->sendMessage(TT("get"));
}