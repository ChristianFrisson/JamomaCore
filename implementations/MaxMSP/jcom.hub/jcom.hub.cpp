/* 
 *	jcom.node
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"

// those stuffes are needed for handling patchers without using the pcontrol object
#include "jpatcher_api.h"
typedef struct dll {
	t_object d_ob;
	struct dll *d_next;
	struct dll *d_prev;
	void *d_x1;
} t_dll;

typedef struct outlet {
	struct tinyobject o_ob;
	struct dll *o_dll;
} t_outlet;

typedef struct inlet {
	struct tinyobject i_ob;
	void *i_who;
	struct object *i_owner;
} t_inlet;

#define data_out 0

// Definitions
void		WrapTTContainerClass(WrappedClassPtr c);
void		WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);

void		hub_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		hub_list(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_build(TTPtr self, SymbolPtr address);

void		hub_set_panel(TTPtr self, long n);
void		hub_do_set_panel(TTPtr self, t_symbol *msg, long argc, t_atom *argv);

void		hub_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_panel(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		hub_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		hub_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTContainerClass;
	spec->_new = &WrappedContainerClass_new;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("Container"), "jcom.hub", NULL, spec);
}

void WrapTTContainerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)hub_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)hub_return_address,			"return_address",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_return_value,				"return_value",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_help,						"hub_help",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_reference,					"hub_reference",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_internals,					"hub_internals",		A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_panel,						"hub_panel",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_mute,						"hub_mute",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)hub_autodoc,					"doc_generate",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)hub_list,						"anything",				A_GIMME, 0L);
	
	class_addmethod(c->maxClass, (method)hub_set_panel,					"has_panel",			A_LONG, 0L);
	
	class_addmethod(c->maxClass, (method)hub_help,						"help",					0);
	class_addmethod(c->maxClass, (method)hub_reference,					"reference",			0);
	class_addmethod(c->maxClass, (method)hub_internals,					"internals",			0);
	class_addmethod(c->maxClass, (method)hub_panel,						"panel",				0);
	class_addmethod(c->maxClass, (method)hub_mute,						"mute",					A_LONG, 0);
	class_addmethod(c->maxClass, (method)hub_autodoc,					"documentation/generate",A_GIMME, 0);
	
}

void WrappedContainerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					address;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// A Modular object needs an address argument
	if (attrstart && argv) 
		address = atom_getsym(argv);
	else
		address = _sym_nothing;
	
	// create a container
	jamoma_container_create((ObjectPtr)x, &x->wrappedObject);
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)hub_build, address, 0, 0);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data

	// Prepare memory to store internal datas
	x->internals = new TTHash();
	
	// handle attribute args
	attr_args_process(x, argc, argv);
}

void hub_build(TTPtr self, SymbolPtr address)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, args;
	TTNodePtr					node = NULL;
	TTBoolean					newInstance;
	TTSymbolPtr					nodeAddress, relativeAddress;
	TTSymbolPtr					helpAdrs, refAdrs, internalsAdrs, documentationAdrs, muteAdrs;
	TTObjectPtr					aData;
	TTTextHandlerPtr			aTextHandler;
	TTPtr						context;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &x->patcherType, &x->patcherClass);
	jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, address, x->patcherType, &x->subscriberObject);
	
	// if the subscription is successful
	if (x->subscriberObject) {
		
		// Is a new instance have been created ?
		x->subscriberObject->getAttributeValue(TT("newInstanceCreated"), v);
		v.get(0, newInstance);
		
		if (newInstance) {
			x->subscriberObject->getAttributeValue(TT("relativeAddress"), v);
			v.get(0, &relativeAddress);
			object_warn((t_object*)x, "Jamoma cannot create multiple jcom.node with the same OSC identifier (%s).  Using %s instead.", address->s_name, relativeAddress->getCString());
		}
		
		// Set the address attribute of the Container
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		x->wrappedObject->setAttributeValue(TT("address"), v);
		
		// get absolute node address
		v.get(0, &nodeAddress);
		
		// debug
		object_post((ObjectPtr)x, "address = %s", nodeAddress->getCString());
		
		// get the Node
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		
		// attach to the patcher to be notified of his destruction
		context = node->getContext();
		// Crash : object_attach_byptr_register(x, context, _sym_box);
		
		// special case for jcom.node at the root of the model
		if ((address == gensym("/") || address == _sym_nothing)) {
			
			if (x->patcherType == TT("jmod")) {
				helpAdrs =  TT("/model/help");
				refAdrs = TT("/model/reference");
				internalsAdrs = TT("/model/internals");
				documentationAdrs = TT("/model/documentation/generate");
				muteAdrs = TT("/model/mute");
			}
			else if (x->patcherType == TT("jview")) {
				helpAdrs =  TT("/view/help");
				refAdrs = TT("/view/reference");
				internalsAdrs = TT("/view/internals");
				documentationAdrs = TT("/view/documentation/generate");
				muteAdrs = TT("/view/mute");
			}
			else {
				helpAdrs =  TT("/help");
				refAdrs = TT("/reference");
				internalsAdrs = TT("/internals");
				documentationAdrs = TT("/documentation/generate");
				muteAdrs = TT("/mute");
			}
			
			// Add a /help data
			makeInternals_data(x, nodeAddress, helpAdrs, gensym("hub_help"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_description, TT("Open the maxhelp patch"));
		
			// Add a /reference data
			makeInternals_data(x, nodeAddress, refAdrs, gensym("hub_reference"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_description, TT("Open the reference page"));
			
			// Add a /internals data
			makeInternals_data(x, nodeAddress, internalsAdrs, gensym("hub_internals"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_description, TT("Open the patcher"));
			
			// Add a /documentation/generate data
			makeInternals_data(x, nodeAddress, documentationAdrs, gensym("doc_generate"), context, kTTSym_message, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_description, TT("Make a html page description"));
			
			// Add a /model/mute data
			makeInternals_data(x, nodeAddress, muteAdrs, gensym("hub_mute"), context, kTTSym_parameter, &aData);
			aData->setAttributeValue(kTTSym_type, kTTSym_boolean);
			aData->setAttributeValue(kTTSym_description, TT("Turned off patcher processing to save CPU"));
			
			// create internal TTTextHandler and expose Write message
			aTextHandler = NULL;
			TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler), args);
			v = TTValue(TTPtr(aTextHandler));
			x->internals->append(TT("TextHandler"), v);
			v = TTValue(TTPtr(x->wrappedObject));
			aTextHandler->setAttributeValue(kTTSym_object, v);
		}
	}
}

// Method for Assistance Messages
void hub_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else if (msg==2)		// Outlets
		strcpy(dst, "");
}

void hub_list(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	jamoma_container_send((TTContainerPtr)x->wrappedObject, msg, argc, argv);
}

void hub_return_address(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	x->msg = msg;
}

void hub_return_value(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], x->msg, argc, argv);
}

void hub_set_panel(TTPtr self, long n)
{
	Atom a;
	atom_setlong(&a, n);
	defer_low((ObjectPtr)self, (method)hub_do_set_panel, NULL, 1, &a);
}

void hub_do_set_panel(TTPtr self, t_symbol *msg, long argc, t_atom *argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTObjectPtr					aData;
	TTValue						v;
	TTSymbolPtr					address, panelName;
	TTNodePtr					node = NULL;
	TTPtr						context;
	long						n = atom_getlong(argv);
	
	if (x->subscriberObject) {
		
		x->subscriberObject->getAttributeValue(TT("contextAddress"), v);
		v.get(0, &address);
		
		x->subscriberObject->getAttributeValue(TT("node"), v);
		v.get(0, (TTPtr*)&node);
		context = node->getContext();
		
		// Edit a /panel name
		if (x->patcherType == TT("jmod"))
			panelName = TT("/model/panel");
		else if (x->patcherType == TT("jview"))
			panelName = TT("/view/panel");
		else
			panelName = TT("/panel");
		
		if (n) {
			
			// Make a /panel data
			makeInternals_data(self, address, panelName, gensym("hub_panel"), context, kTTSym_message, &aData);
			
			// Set attribute of the data
			aData->setAttributeValue(kTTSym_type, kTTSym_none);
			aData->setAttributeValue(kTTSym_description, TT("Open a control panel if one is present."));
			aData->setAttributeValue(kTTSym_rampDrive, kTTSym_none);
		}
		else
			// Remove a /panel data
			removeInternals_data(self, address, panelName);

	}
	else
		object_error((ObjectPtr)x, "Can't create /panel message at loadbang. Please use a deferlow.");
}

void hub_help(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr patcherType;
	TTSymbolPtr patcherClass;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &patcherType, &patcherClass);
	
	TTString helpfile = patcherType->getCString();
	helpfile += ".";
	helpfile += patcherClass->getCString();
	
	//post("hub_help : %s", (char*)helpfile.data());
	
	classname_openhelp((char*)helpfile.data());
}

void hub_reference(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTSymbolPtr patcherType;
	TTSymbolPtr patcherClass;
	
	jamoma_patcher_type_and_class((ObjectPtr)x, &patcherType, &patcherClass);
	
	TTString refpage = patcherType->getCString();
	refpage += ".";
	refpage += patcherClass->getCString();
	
	//post("hub_reference : %s", (char*)refpage.data());
	
	classname_openrefpage((char*)refpage.data());
}

void hub_internals(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	ObjectPtr p = jamoma_object_getpatcher((ObjectPtr)x);
	
	object_method(p, _sym_vis);
}

void hub_panel(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr	box;
	t_outlet*	myoutlet = NULL;
	t_dll*		connecteds = NULL;
	ObjectPtr	o;
	SymbolPtr	name;
	TTValue		v;
	TTSymbolPtr nodeAddress;
	Atom		a;
	
	object_obex_lookup(x, _sym_pound_B, &box);
	myoutlet = (t_outlet*)jbox_getoutlet((t_jbox*)box, 1);
	if (myoutlet)
		connecteds = (t_dll*)myoutlet->o_dll;
	
	// search through all connected objects for a patcher object
	while (connecteds) {
		o = (t_object*)connecteds->d_x1;
		name = object_classname(o);
		if (name == _sym_inlet) {
			o = ((t_inlet *)connecteds->d_x1)->i_owner;
			name = object_classname(o);
			if (name == _sym_jpatcher) {
				
				// get absolute node address
				x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
				v.get(0, &nodeAddress);
				atom_setsym(&a, gensym((char*)nodeAddress->getCString()));
				object_attr_setvalueof(o, _sym_title, 1, &a);
				object_method(o, _sym_vis);
			}
		}
		o = NULL;
		name = NULL;
		connecteds = connecteds->d_next;
	}
}

void hub_autodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)hub_doautodoc, msg, argc, argv);
}

void hub_doautodoc(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			path, err;						// pathID#, error number
	t_filehandle	file_handle;					// a reference to our file (for opening it, closing it, etc.)
	long			filetype = 'TEXT', outtype;		// the file type that is actually true
	TTValue			o, v;
	SymbolPtr		userpath;
	TTSymbolPtr		nodeAddress;
	TTTextHandlerPtr aTextHandler;
	TTErr			tterr;
	
	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			userpath = atom_getsym(argv);
		else {
			object_error((t_object*)x, "%s : needs a symbol", msg->s_name);
			return;
		}
	
	// Create a file using Max API
	path = 0;
	strcpy(filepath, userpath->s_name);									// Copy symbol argument to a local string
	err = path_createsysfile(filepath, path, filetype, &file_handle);
	
	// Get absolute filepath using Max API
	if (locatefile_extended(filepath, &path, &outtype, &filetype, 1)) {	// Returns 0 if successful
		x->subscriberObject->getAttributeValue(TT("nodeAddress"), v);
		v.get(0, (TTPtr*)&nodeAddress);
		object_error((t_object*)x, "%s : file not created", gensym((char*)nodeAddress->getCString()));
		return;
	}
	
	jcom_core_getfilepath(path, filepath, fullpath);
	
	if (x->wrappedObject) {
		v.clear();
		v.append(TT(fullpath));
		
		tterr = x->internals->lookup(TT("TextHandler"), o);
			
		if (!tterr) {
				
			o.get(0, (TTPtr*)&aTextHandler);
				
			critical_enter(0);
			aTextHandler->sendMessage(TT("Write"), v);
			critical_exit(0);
		}
	}
}

void hub_mute(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	ObjectPtr					patcher = jamoma_object_getpatcher((ObjectPtr)x);
	long						mute;
	t_atom						a[2];
	
	// 'setrock' is the message that is used by pcontrol to enable patcher
	// it was inside former jcom.in or out. Not sure for what it was used (audio mute maybe...)
	
	if (argc && argv)
		if (atom_gettype(argv) == A_LONG) {
			mute = atom_getlong(argv);
			atom_setlong(a+0, !mute);
			atom_setlong(a+1, 1);
			object_method(patcher, gensym("setrock"), 2, a);
		}
}
