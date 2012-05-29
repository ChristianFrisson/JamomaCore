/* 
 *	jcom.preset
 *	External object
 *	Copyright © 2010 by Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#include "TTModularClassWrapperMax.h"
#include "jpatcher_api.h"

#define data_out 0
#define dump_out 1

// This is used to store extra data
typedef struct extra {
	TTBoolean	attr_load_default;
	TTPtr		filewatcher;		// a preset filewather
	TTObjectPtr	toEdit;				// the object to edit (a preset or all the preset list)
	TTSymbolPtr	presetName;			// the name of the edited cue
	TTString	*text;				// the text of the editor to read after edclose
	ObjectPtr	textEditor;			// the text editor window
} t_extra;
#define EXTRA ((t_extra*)x->extra)

// Definitions
void		WrapTTPresetManagerClass(WrappedClassPtr c);
void		WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv);
void		WrappedPresetManageClass_free(TTPtr self);

void		preset_assist(TTPtr self, void *b, long msg, long arg, char *dst);

void		preset_return_names(TTPtr self, t_symbol *msg, long argc, t_atom *argv);
void		preset_filechanged(TTPtr self, char *filename, short path);

void		preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_read_again(TTPtr self);
void		preset_doread_again(TTPtr self);
void		preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_write_again(TTPtr self);
void		preset_dowrite_again(TTPtr self);
void		preset_default(TTPtr self);
void		preset_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);

void		preset_edit(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv);
void		preset_edclose(TTPtr self, char **text, long size);
void		preset_doedit(TTPtr self);

void		preset_subscribe(TTPtr self);

t_max_err	preset_get_load_default(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av);
t_max_err	preset_set_load_default(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av);


int TTCLASSWRAPPERMAX_EXPORT main(void)
{
	ModularSpec *spec = new ModularSpec;
	spec->_wrap = &WrapTTPresetManagerClass;
	spec->_new = &WrappedPresetManagerClass_new;
	spec->_free = &WrappedPresetManageClass_free;
	spec->_any = NULL;
	
	return wrapTTModularClassAsMaxClass(TT("PresetManager"), "jcom.preset", NULL, spec);
}

void WrapTTPresetManagerClass(WrappedClassPtr c)
{
	class_addmethod(c->maxClass, (method)preset_assist,					"assist",				A_CANT, 0L);
	
	class_addmethod(c->maxClass, (method)preset_return_names,			"return_names",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_filechanged,			"filechanged",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_read,					"preset_read",			A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_write,					"preset_write",			A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_edit,					"dblclick",				A_CANT, 0);
	class_addmethod(c->maxClass, (method)preset_edclose,				"edclose",				A_CANT, 0);
	
	class_addmethod(c->maxClass, (method)preset_read,					"read",					A_GIMME, 0);
	class_addmethod(c->maxClass, (method)preset_write,					"write",				A_GIMME, 0);
	class_addmethod(c->maxClass, (method)preset_edit,					"edit",					A_GIMME, 0);
	
	class_addmethod(c->maxClass, (method)preset_read_again,				"read/again",			0);
	class_addmethod(c->maxClass, (method)preset_write_again,			"write/again",			0);
	
	CLASS_ATTR_LONG(c->maxClass,		"load_default",	0,		WrappedModularInstance,	extra);
	CLASS_ATTR_DEFAULT(c->maxClass,		"load_default",	0,		"1")
	CLASS_ATTR_ACCESSORS(c->maxClass,	"load_default",			preset_get_load_default,	preset_set_load_default);
	CLASS_ATTR_STYLE(c->maxClass,		"load_default",	0,		"onoff");
}

void WrappedPresetManagerClass_new(TTPtr self, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	SymbolPtr					relativeAddress;
 	long						attrstart = attr_args_offset(argc, argv);			// support normal arguments
	
	// possible relativeAddress
	if (attrstart && argv) 
		relativeAddress = atom_getsym(argv);
	else
		relativeAddress = _sym_nothing;
	
	x->address = TTADRS(jamoma_parse_dieze((ObjectPtr)x, relativeAddress)->s_name);
	
	// create the preset manager
	jamoma_presetManager_create((ObjectPtr)x, &x->wrappedObject);
	
	// Prepare extra data
	x->extra = (t_extra*)malloc(sizeof(t_extra));
	EXTRA->attr_load_default = true;
	EXTRA->filewatcher = NULL;
	EXTRA->toEdit = x->wrappedObject;
	EXTRA->presetName = kTTSymEmpty;
	EXTRA->text = NULL;
	EXTRA->textEditor = NULL;
	
	// handle attribute args
	attr_args_process(x, argc, argv);
	
	// Make two outlets
	x->outlets = (TTHandle)sysmem_newptr(sizeof(TTPtr) * 1);
	x->outlets[data_out] = outlet_new(x, NULL);						// anything outlet to output data
	
	// Prepare Internals hash to store XmlHanler and TextHandler object
	x->internals = new TTHash();
	
	// The following must be deferred because we have to interrogate our box,
	// and our box is not yet valid until we have finished instantiating the object.
	// Trying to use a loadbang method instead is also not fully successful (as of Max 5.0.6)
	defer_low((ObjectPtr)x, (method)preset_subscribe, NULL, 0, 0);
}

void WrappedPresetManageClass_free(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	// delete filewatcher
	if (EXTRA->filewatcher) {
		filewatcher_stop(EXTRA->filewatcher);
		object_free(EXTRA->filewatcher);
	}
	
	free(EXTRA);
}

void preset_subscribe(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue						v, n, args;
	TTString					presetLevelAddress;
	TTNodeAddressPtr			absoluteAddress;
	TTNodePtr					node = NULL;
	TTDataPtr					aData;
	TTXmlHandlerPtr				aXmlHandler;
	TTTextHandlerPtr			aTextHandler;
	
	// add 'preset' after the address
	if (x->address != kTTAdrsEmpty) {
		presetLevelAddress = x->address->getCString();
		presetLevelAddress += "/preset";
	}
	else
		presetLevelAddress = "preset";
	
	// if the subscription is successful
	if (!jamoma_subscriber_create((ObjectPtr)x, x->wrappedObject, TTADRS(presetLevelAddress), &x->subscriberObject)) {
		
		// get all info relative to our patcher
		jamoma_patcher_get_info((ObjectPtr)x, &x->patcherPtr, &x->patcherContext, &x->patcherClass, &x->patcherName);
		
		// get the Node (.../preset) and his parent
		x->subscriberObject->getAttributeValue(TT("node"), n);
		n.get(0, (TTPtr*)&node);
		
		// set the Address attribute of the PresetManager if it is empty
		x->wrappedObject->getAttributeValue(kTTSym_address, v);
		v.get(0, &absoluteAddress);
		if (absoluteAddress == kTTAdrsEmpty) {
			node->getParent()->getAddress(&absoluteAddress);
			x->wrappedObject->setAttributeValue(kTTSym_address, absoluteAddress);
		}

		// expose messages of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Store"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Store a preset giving a name"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Recall"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Recall a preset using a name"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Interpolate"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_generic);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Interpolate 2 presets using their names and a ratio"));
		
		x->subscriberObject->exposeMessage(x->wrappedObject, TT("Remove"), &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Remove a preset using a name"));		
		
		// expose attributes of TTPreset as TTData in the tree structure
		x->subscriberObject->exposeAttribute(x->wrappedObject, kTTSym_names, kTTSym_return, &aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_array);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("The preset name list"));
		
		// create internal TTXmlHandler
		aXmlHandler = NULL;
		TTObjectInstantiate(TT("XmlHandler"), TTObjectHandle(&aXmlHandler), args);
		v = TTValue(TTPtr(aXmlHandler));
		x->internals->append(TT("XmlHandler"), v);
		v = TTValue(TTPtr(x->wrappedObject));
		aXmlHandler->setAttributeValue(kTTSym_object, v);
		
		// create internal TTTextHandler
		aTextHandler = NULL;
		TTObjectInstantiate(TT("TextHandler"), TTObjectHandle(&aTextHandler), args);
		v = TTValue(TTPtr(aTextHandler));
		x->internals->append(TT("TextHandler"), v);
		
		// Create internal messages for Read and Write
		makeInternals_data(self, absoluteAddress, TT("preset/read"), gensym("preset_read"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Read a xml preset file"));

		makeInternals_data(self, absoluteAddress, TT("preset/write"), gensym("preset_write"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_string);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Write a xml preset file"));
		
		/*
		makeInternals_data(self, absoluteAddress, TT("preset/read/again"), gensym("preset_read_again"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Read from the last xml preset file"));

		makeInternals_data(self, absoluteAddress, TT("preset/write/again"), gensym("preset_write_again"), x->patcherPtr, kTTSym_message, (TTObjectPtr*)&aData);
		aData->setAttributeValue(kTTSym_type, kTTSym_none);
		aData->setAttributeValue(kTTSym_tag, kTTSym_generic);
		aData->setAttributeValue(kTTSym_description, TT("Write into the last xml preset file"));
		*/
		
		// TODO : display in Max edition window
	
		// if desired, load default modelClass.patcherContext.xml file preset
		if (EXTRA->attr_load_default)
			defer_low(x, (method)preset_default, 0, 0, 0L);
	}
}

// Method for Assistance Messages
void preset_assist(TTPtr self, void *b, long msg, long arg, char *dst)
{
	if (msg==1)			// Inlets
		strcpy(dst, "");		
	else {							// Outlets
		switch(arg) {
			case data_out:
				strcpy(dst, "preset output");
				break;
			case dump_out:
				strcpy(dst, "dumpout");
				break;
		}
 	}
}

void preset_return_names(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	outlet_anything(x->outlets[data_out], gensym("names"), argc, argv);
}

void preset_read(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)preset_doread, msg, argc, argv);
}

void preset_doread(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue			o, v;
	TTSymbolPtr		fullpath;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTErr			tterr;
	
	if (x->wrappedObject) {
		
		fullpath = jamoma_file_read((ObjectPtr)x, argc, argv, 'TEXT');
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("Read"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_read, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
}

void preset_read_again(TTPtr self)
{
	defer(self, (method)preset_doread_again, NULL, 0, NULL);
}

void preset_doread_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(TT("XmlHandler"), o);
	
	if (!tterr) {
		
		o.get(0, (TTPtr*)&aXmlHandler);
		
		critical_enter(0);
		tterr = aXmlHandler->sendMessage(TT("ReadAgain"));
		critical_exit(0);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_read, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
}

void preset_write(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	defer(self, (method)preset_dowrite, msg, argc, argv);
}

void preset_dowrite(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 			filename[MAX_FILENAME_CHARS];
	TTSymbolPtr		fullpath;
	TTValue			o, v;
	TTXmlHandlerPtr	aXmlHandler;
	TTErr			tterr;
	
	// stop filewatcher
	if (EXTRA->filewatcher)
		filewatcher_stop(EXTRA->filewatcher);
	
	if (x->wrappedObject) {
		
		// Default XML File Name
		snprintf(filename, MAX_FILENAME_CHARS, "%s.%s.xml", x->patcherClass->getCString(), x->patcherContext->getCString());
		fullpath = jamoma_file_write((ObjectPtr)x, argc, argv, filename);
		v.append(fullpath);
		
		tterr = x->internals->lookup(TT("XmlHandler"), o);
		
		if (!tterr) {
			o.get(0, (TTPtr*)&aXmlHandler);
			
			critical_enter(0);
			tterr = aXmlHandler->sendMessage(TT("Write"), v, kTTValNONE);
			critical_exit(0);
			
			if (!tterr)
				object_obex_dumpout(self, _sym_write, argc, argv);
			else
				object_obex_dumpout(self, _sym_error, 0, NULL);
		}
	}
	
	// start filewatcher
	if (EXTRA->filewatcher)
		filewatcher_start(EXTRA->filewatcher);
}

void preset_write_again(TTPtr self)
{
	defer(self, (method)preset_dowrite_again, NULL, 0, NULL);
}

void preset_dowrite_again(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTXmlHandlerPtr	aXmlHandler = NULL;
	TTValue			o;
	TTErr			tterr;
	
	tterr = x->internals->lookup(TT("XmlHandler"), o);
	
	if (!tterr) {
		
		o.get(0, (TTPtr*)&aXmlHandler);
		
		critical_enter(0);
		tterr = aXmlHandler->sendMessage(TT("WriteAgain"));
		critical_exit(0);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_write, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
}

void preset_default(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	short		outvol;
	long		outtype, filetype = 'TEXT';
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char		posixpath[MAX_PATH_CHARS];
	Atom		a;
	SymbolPtr	xmlfile;

	if (x->patcherClass) {
		
		if (x->patcherContext == kTTSym_model)
			jamoma_edit_filename(ModelPresetFormat, x->patcherClass, &xmlfile);
		
		else if (x->patcherContext == kTTSym_view)
			jamoma_edit_filename(ViewPresetFormat, x->patcherClass, &xmlfile);
		else
			object_error((ObjectPtr)x, "preset_default : can't get the context of the patcher");
		
		if (locatefile_extended((char*)xmlfile->s_name, &outvol, &outtype, &filetype, 1)) {
			//object_warn((ObjectPtr)x, "preset_default : can't find %s file in the Max search path", xmlfile.data());
			return;
		}
		
		path_topathname(outvol, (char*)xmlfile->s_name, fullpath);
		path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
		
		atom_setsym(&a, gensym(posixpath));
		defer_low(self, (method)preset_doread, gensym("read"), 1, &a);
		
		// recall first preset
		defer_low((ObjectPtr)x, (method)preset_dorecall, NULL, 0, NULL);
		
		// replace filewatcher
		if (EXTRA->filewatcher) {
			filewatcher_stop(EXTRA->filewatcher);
			object_free(EXTRA->filewatcher);
		}
		
		EXTRA->filewatcher = filewatcher_new((ObjectPtr)x, outvol, (char*)xmlfile->s_name);
		filewatcher_start(EXTRA->filewatcher);
	}
	else
		object_error((ObjectPtr)x, "preset_default : can't get the class of the patcher");
}

void preset_filechanged(TTPtr self, char *filename, short path)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	char 		fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	char			posixpath[MAX_PATH_CHARS];
	TTValue		v;
	TTSymbolPtr current;
	Atom		a;
	
	// get current preset
	x->wrappedObject->getAttributeValue(TT("current"), v);
	
	path_topathname(path, filename, fullpath);
	path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
	
	atom_setsym(&a, gensym(posixpath));
	defer_low(self, (method)preset_doread, gensym("read"), 1, &a);
	
	// try to recall last current preset
	v.get(0, &current);
	atom_setsym(&a, gensym((char*)current->getCString()));
	defer_low((ObjectPtr)x, (method)preset_dorecall, NULL, 1, &a);
}

void preset_dorecall(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTValue		v;

	if (argc && argv)
		if (atom_gettype(argv) == A_SYM)
			v = TTValue(TT(atom_getsym(argv)->s_name));
	
	// recall the preset
	x->wrappedObject->sendMessage(TT("Recall"), v, kTTValNONE);
}

void preset_edit(TTPtr self, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTString			*buffer;
	char				title[MAX_FILENAME_CHARS];
	TTTextHandlerPtr	aTextHandler = NULL;
	TTHashPtr			allPresets;
	TTValue				v, o, args;
	TTErr				tterr;
	
	// choose object to edit : default the cuelist
	EXTRA->toEdit = x->wrappedObject;
	EXTRA->presetName = kTTSymEmpty;
	
	if (argc && argv) {
		if (atom_gettype(argv) == A_SYM) {
			
			// get preset object table
			x->wrappedObject->getAttributeValue(TT("presets"), v);
			v.get(0, (TTPtr*)&allPresets);
			
			if (allPresets) {
				
				// get cue to edit
				if (!allPresets->lookup(TT(atom_getsym(argv)->s_name), v)) {
					
					// edit a preset
					v.get(0, (TTPtr*)&EXTRA->toEdit);
					EXTRA->presetName = TT(atom_getsym(argv)->s_name);
				}
				else {
					object_error((ObjectPtr)x, "%s does'nt exist", atom_getsym(argv)->s_name);
					return;
				}
			}
		}
	}
	
	// only one editor can be open in the same time
	if (!EXTRA->textEditor) {
	
		EXTRA->textEditor = (t_object*)object_new(_sym_nobox, _sym_jed, x, 0);
		
		buffer = new TTString();
		
		// get the buffer handler
		tterr = x->internals->lookup(TT("TextHandler"), o);
		
		if (!tterr) {
			
			o.get(0, (TTPtr*)&aTextHandler);
			
			critical_enter(0);
			o = TTValue(TTPtr(EXTRA->toEdit));
			aTextHandler->setAttributeValue(kTTSym_object, o);
			args = TTValue((TTPtr)buffer);
			tterr = aTextHandler->sendMessage(TT("Write"), args, kTTValNONE);
			critical_exit(0);
		}
		
		// pass the buffer to the editor
		object_method(EXTRA->textEditor, _sym_settext, buffer->c_str(), _sym_utf_8);
		object_attr_setchar(EXTRA->textEditor, gensym("scratch"), 1);
		
		snprintf(title, MAX_FILENAME_CHARS, "%s preset editor", x->patcherClass->getCString());
		object_attr_setsym(EXTRA->textEditor, _sym_title, gensym(title));
		
		buffer->clear();
		delete buffer;
		buffer = NULL;
	}
}

void preset_edclose(TTPtr self, char **text, long size)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	EXTRA->text = new TTString(*text);
	EXTRA->textEditor = NULL;
	
	defer_low((ObjectPtr)x, (method)preset_doedit, NULL, 0, NULL);
}

void preset_doedit(TTPtr self)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	TTTextHandlerPtr	aTextHandler = NULL;
	TTValue				o, args;
	TTErr				tterr;
	
	// get the buffer handler
	tterr = x->internals->lookup(TT("TextHandler"), o);
	
	if (!tterr) {
		
		o.get(0, (TTPtr*)&aTextHandler);
		
		critical_enter(0);
		args = TTValue((TTPtr)EXTRA->text);
		tterr = aTextHandler->sendMessage(TT("Read"), args, kTTValNONE);
		critical_exit(0);
		
		// recall the current
		if (EXTRA->presetName != kTTSymEmpty)
			x->wrappedObject->sendMessage(TT("Recall"), EXTRA->presetName, kTTValNONE);
		
		if (!tterr)
			object_obex_dumpout(self, _sym_read, 0, NULL);
		else
			object_obex_dumpout(self, _sym_error, 0, NULL);
	}
	
	delete EXTRA->text;
	EXTRA->text = NULL;
	EXTRA->textEditor = NULL;
	EXTRA->toEdit = x->wrappedObject;
	EXTRA->presetName = kTTSymEmpty;
}

t_max_err preset_set_load_default(TTPtr self, TTPtr attr, AtomCount ac, AtomPtr av) 
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if (ac&&av) {
		EXTRA->attr_load_default = atom_getlong(av) == 1;
	}
	else
		EXTRA->attr_load_default = true; // default true
	
	return MAX_ERR_NONE;
}

t_max_err preset_get_load_default(TTPtr self, TTPtr attr, AtomCount *ac, AtomPtr *av)
{
	WrappedModularInstancePtr	x = (WrappedModularInstancePtr)self;
	
	if ((*ac)&&(*av)) {
		//memory passed in, use it
	} else {
		//otherwise allocate memory
		*ac = 1;
		if (!(*av = (AtomPtr)getbytes(sizeof(Atom)*(*ac)))) {
			*ac = 0;
			return MAX_ERR_OUT_OF_MEM;
		}
	}
	
	atom_setlong(*av, EXTRA->attr_load_default == 1);
	
	return MAX_ERR_NONE;
}