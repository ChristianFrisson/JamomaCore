// TTRuby : Language Bindings to Make the Jamoma Runtime accessible via Ruby
// Copyright © 2009, Timothy Place
// GNU LGPL

#include "TTAudioGraphAPI.h"
#include "ruby.h"


//
class TTRubyInstance {
public:
	TTAudioObjectPtr		obj;
	TTHashPtr				parameterNames;		// cache of parameter names, mapped from lowercase (ruby) to uppercase (TT)
	TTHashPtr				messageNames;		// cache of parameter names, mapped from lowercase (ruby) to uppercase (TT)
	
	TTRubyInstance()
	{
		obj = NULL;
	}
};


//
class TTAudioInstance {
public:
	TTAudioGraphObjectPtr	obj;
	TTHashPtr				parameterNames;		// cache of parameter names, mapped from lowercase (ruby) to uppercase (TT)
	TTHashPtr				messageNames;		// cache of parameter names, mapped from lowercase (ruby) to uppercase (TT)
	
	TTAudioInstance()
	{
		obj = NULL;
	}
};


typedef VALUE (*TTRubyMethod)(...);
//#define TTRubyMethod


// Prototypes
extern "C" {
	void Init_TTRuby();

	VALUE TTRubyInitialize(VALUE self, VALUE className);
	VALUE TTRubyGetMessages(VALUE self);
	VALUE TTRubySendMessage(int argc, VALUE* argv, VALUE self);
	VALUE TTRubyGetAttributes(VALUE self);
	VALUE TTRubySetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue);
	VALUE TTRubyGetAttribute(VALUE self, VALUE attributeName);
	VALUE TTRubyCalculate(VALUE self, VALUE x);

	VALUE TTAudioInitialize(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioGetMessages(VALUE self);
	VALUE TTAudioSendMessage(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioGetAttributes(VALUE self);
	VALUE TTAudioSetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue);
	VALUE TTAudioGetAttribute(VALUE self, VALUE attributeName);
	VALUE TTAudioReset(VALUE self);
	VALUE TTAudioConnect(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioDrop(int argc, VALUE* argv, VALUE self);
	VALUE TTAudioExportMax(VALUE self, VALUE pathToExportFile);
	VALUE TTAudioExportCpp(VALUE self, VALUE pathToExportFile);
}


// Globals and Statics
VALUE		TTRuby_class;
TTHashPtr	gTTRubyInstances = NULL;

VALUE		TTAudio_class;
TTHashPtr	gTTAudioInstances = NULL;


/*****************************************************************************************************/
// Class Definition

void Init_TTRuby()
{
	VALUE c;
	
	TTFoundationInit();
	
	c = rb_define_class("TTObject", rb_cObject);
	
	rb_define_method(c, "initialize",		TTRubyMethod(TTRubyInitialize), 1);		// called to initialize a new object that has been created or cloned	
	rb_define_method(c, "messages?",		TTRubyMethod(TTRubyGetMessages), 0);
	rb_define_method(c, "send",				TTRubyMethod(TTRubySendMessage), -1);	// send a message to the wrapped object
	rb_define_method(c, "attributes?",		TTRubyMethod(TTRubyGetAttributes), 0);
	rb_define_method(c, "set",				TTRubyMethod(TTRubySetAttribute), 2);	// set attribute value
	rb_define_method(c, "get",				TTRubyMethod(TTRubyGetAttribute), 1);	// get attribute value
	rb_define_method(c, "calculate",		TTRubyMethod(TTRubyCalculate), 1);
	
	TTRuby_class = c;
	gTTRubyInstances = new TTHash;
	
	
	// MULTICORE / AUDIO
	
	TTAudioGraphInit();

	c = rb_define_class("TTAudio", rb_cObject);
	
	rb_define_method(c, "initialize",		TTRubyMethod(TTAudioInitialize),	-1);	// called to initialize a new object that has been created or cloned
	rb_define_method(c, "messages?",		TTRubyMethod(TTAudioGetMessages),	0);
	rb_define_method(c, "send",				TTRubyMethod(TTAudioSendMessage),	-1);	// send a message to the wrapped object
	rb_define_method(c, "attributes?",		TTRubyMethod(TTAudioGetAttributes), 0);
	rb_define_method(c, "set",				TTRubyMethod(TTAudioSetAttribute),	2);		// set attribute value
	rb_define_method(c, "get",				TTRubyMethod(TTAudioGetAttribute),	1);		// get attribute value
	rb_define_method(c, "reset_audio",		TTRubyMethod(TTAudioReset),			0);		// reset multicore connections
	rb_define_method(c, "connect_audio",	TTRubyMethod(TTAudioConnect),		-1);	// connect an output of another object to our input
	rb_define_method(c, "drop_audio",		TTRubyMethod(TTAudioDrop),			-1);	// disconnect an output of another object from our input
	rb_define_method(c, "export_max",		TTRubyMethod(TTAudioExportMax),		1);		// reset multicore connections
	rb_define_method(c, "export_cpp",		TTRubyMethod(TTAudioExportCpp),		1);		// reset multicore connections
	
	TTAudio_class = c;
	gTTAudioInstances = new TTHash;
}


/*****************************************************************************************************/
// Life Cycle

// See pg 292 for an example of how to setup the message binding for this one
// VALUE TTRubyAlloc(VALUE ttruby_class)

VALUE TTRubyInitialize(VALUE self, VALUE className)
{	
	TTRubyInstance* instance = new TTRubyInstance;
	TTValue*		v = new TTValue;
	TTValue			args;
	TTErr			err = kTTErrNone;
	VALUE			classNameStr = StringValue(className);
	long			n;
	TTValue			names;
	TTSymbolPtr		aName;
	TTString		nameString;
	
	args.clear();
	err = TTObjectInstantiate(TT(RSTRING(classNameStr)->ptr), &instance->obj, args);
	if (!err) {
		instance->parameterNames = new TTHash;	// TODO: need to free this
		instance->obj->getAttributeNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getString();
			if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
				nameString[0] += 32;							// convert first letter to lower-case for Max
				TTValuePtr v = new TTValue(aName);
				instance->parameterNames->append(TT(nameString.c_str()), *v);
			}
		}
				
		instance->messageNames = new TTHash;	// TODO: need to free this
		instance->obj->getMessageNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getString();
			if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
				nameString[0] += 32;							// convert first letter to lower-case for Max
				TTValuePtr v = new TTValue(aName);
				instance->messageNames->append(TT(nameString.c_str()), *v);
			}
		}
				
		v->setSize(1);
		v->set(0, TTPtr(instance));
		gTTRubyInstances->append(TTSymbolPtr(self), *v);
		return self;
	}
	else
		return NULL;
}

// VALUE TTRubyInitializeCopy(VALUE self, VALUE orig)

// See page 285 about wrapping and freeing structs


/*****************************************************************************************************/
// Methods

VALUE TTRubyGetMessages(VALUE self)
{
	TTRubyInstance*	instance = NULL;
	TTErr			err = kTTErrNone;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	TTSymbolPtr		s;
	TTCString		c;
	TTUInt16		size;

	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			TTValue names;
			
			instance->messageNames->getKeys(names);
			//instance->obj->getMessageNames(v);			
			size = v.getSize();
			returnValue = rb_ary_new2(size);
			for (TTUInt16 i=0; i<size; i++) {				
				v.get(i, &s);
				c = (TTCString)s->getCString();
				rb_ary_store(returnValue, i, rb_str_new(c, strlen(c)));
			}
		}
	}
	return returnValue;
}

VALUE TTRubySendMessage(int argc, VALUE* argv, VALUE self)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			messageNameStr;
	VALUE			messageArgStr;
	TTValue			v;
	
	if (argc < 1) {
		cout << "ERROR -- TTRuby.send requires at least 1 argument (the name of the message to send)" << endl;
		goto bye;
	}
	
	messageNameStr = StringValue(argv[0]);	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			TTSymbolPtr	messageName;
			TTValue		messageNameValue;

			messageName = TT(RSTRING(messageNameStr)->ptr);
			instance->messageNames->lookup(messageName, messageNameValue);
			messageNameValue.get(0, &messageName);

			if (argc == 1) {		// no arguments...
				err = instance->obj->sendMessage(messageName);
			}
			else {					// we have arguments...
				v.clear();
				
				for (int i=1; i<argc; i++) {
					int t = TYPE(argv[i]);
					
					cout << "the type of the message arg is " << t << endl;
					switch (t) {
						case T_FLOAT:
							v.append(NUM2DBL(argv[i]));
							break;
						case T_FIXNUM:
							v.append((int)FIX2LONG(argv[i]));
							break;
						case T_BIGNUM:
							v.append((TTInt64)NUM2LL(argv[i]));
							break;
						case T_STRING:
							messageArgStr = StringValue(argv[i]);
							v.append(TT(RSTRING(messageArgStr)->ptr));
							break;
						case T_ARRAY:
							cout << "TTError: Array arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						case T_OBJECT:
							cout << "TTError: Object arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						default:
							// assume no arguments for now...
							break;
					}
				}				

				if (!err) {
					err = instance->obj->sendMessage(messageName, v);
				}
			}
			
			if (err)
				cout << "TTRubySendMessage: Error " << err << endl;
		}
	}
bye:
	;
}


VALUE TTRubyGetAttributes(VALUE self)
{
	TTRubyInstance*	instance = NULL;
	TTErr			err = kTTErrNone;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	TTSymbolPtr		s;
	TTCString		c;
	TTUInt16		size;

	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			TTValue names;
			
			instance->parameterNames->getKeys(names);
			//instance->obj->getAttributeNames(v);			
			size = v.getSize();
			returnValue = rb_ary_new2(size);
			for (TTUInt16 i=0; i<size; i++) {				
				v.get(i, &s);
				c = (TTCString)s->getCString();
				rb_ary_store(returnValue, i, rb_str_new(c, strlen(c)));
			}
		}
	}
	return returnValue;
}


VALUE TTRubySetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			attributeNameStr = StringValue(attributeName);
	VALUE			attributeValueStr;
	TTValue			v;
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			int t = TYPE(attributeValue);

			v.clear();
			//cout << "the type of the attr arg is " << t << endl;
			switch (t) {
				case T_FLOAT:
					v.append(NUM2DBL(attributeValue));
					break;
				case T_FIXNUM:
					v.append((int)FIX2LONG(attributeValue));
					break;
				case T_BIGNUM:
					v.append((TTInt64)NUM2LL(attributeValue));
					break;
				case T_STRING:
					attributeValueStr = StringValue(attributeValue);
					v.append(TT(RSTRING(attributeValueStr)->ptr));
					break;
				case T_ARRAY:
					cout << "TTError: Array arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				case T_OBJECT:
					cout << "TTError: Object arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				default:
					cout << "TTError: Unknown type for arguments to attribute" << endl;
					err = kTTErrGeneric;
					break;
			}
			if (!err) {
				TTSymbolPtr	parameterName;
				TTValue		parameterNameValue;
				
				parameterName = TT(RSTRING(attributeNameStr)->ptr);
				instance->parameterNames->lookup(parameterName, parameterNameValue);
				parameterNameValue.get(0, &parameterName);
				
				err = instance->obj->setAttributeValue(parameterName, v);
			}
			if (err)
				cout << "TTRubySetAttribute: Error " << err << endl;
		}
	}
}


VALUE TTRubyGetAttribute(VALUE self, VALUE attributeName)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	VALUE			attributeNameStr = StringValue(attributeName);
	VALUE			attributeValueStr;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	TTSymbolPtr		s;
	TTCString		c;
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			TTSymbolPtr	parameterName;
			TTValue		parameterNameValue;
			
			parameterName = TT(RSTRING(attributeNameStr)->ptr);
			instance->parameterNames->lookup(parameterName, parameterNameValue);
			parameterNameValue.get(0, &parameterName);
			
			err = instance->obj->getAttributeValue(parameterName, v);
			if (err) {
				cout << "TTRubyGetAttribute: Error " << err << endl;
				goto out;
			}

			// TODO: not handling array attrs yet...
			
			switch (v.getType(0)) {
				case kTypeFloat64:
				case kTypeFloat32:
					returnValue = rb_float_new(v);
					break;
				case kTypeInt8:
				case kTypeUInt8:
				case kTypeInt16:
				case kTypeUInt16:
				case kTypeInt32:
				case kTypeUInt32:
					returnValue = INT2NUM(v);
					break;
				case kTypeInt64:
				case kTypeUInt64:
					returnValue = LL2NUM((TTInt64)v);
					break;
				case kTypeBoolean:\
					returnValue = TTBoolean(v);
					break;
				case kTypeSymbol:
					s = v;
					c = (TTCString)s->getCString();
					returnValue = rb_str_new(c, strlen(c));
					break;
			}
		}
	}
out:
	return returnValue;
}


VALUE TTRubyCalculate(VALUE self, VALUE x)
{
	TTRubyInstance* instance = NULL;
	TTErr			err = kTTErrNone;
	TTValue			v;
	VALUE			returnValue = rb_float_new(0.0);
	
	err = gTTRubyInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			TTFloat64 fx = NUM2DBL(x);
			TTFloat64 fy = 0.0;

			err = instance->obj->calculate(fx, fy);			
			returnValue = rb_float_new(fy);
		}
	}
	return returnValue;
}



/**************************************************************************************
 * MULTICORE SUPPORT
 **************************************************************************************/
#pragma mark -
#pragma mark Audio Graph Support


//VALUE TTAudioInitialize(VALUE self, VALUE className)
VALUE TTAudioInitialize(int argc, VALUE* argv, VALUE self)
{	
	TTAudioInstance*	instance = new TTAudioInstance;
	TTValue*			v = new TTValue;
	TTValue				args;
	TTErr				err = kTTErrNone;
	//VALUE				classNameStr = StringValue(className);
	VALUE				messageArgStr;
	long				n;
	TTValue				names;
	TTSymbolPtr			aName;
	TTString			nameString;

	if (argc < 1) {
		cout << "ERROR -- TTAudio requires at least 1 argument (the name of the object class to create)" << endl;
		return NULL;
	}

	args.clear();
	for (int i=0; i<argc; i++) {
		int t = TYPE(argv[i]);

		//cout << "the type of the message arg is " << t << endl;
		switch (t) {
			case T_FLOAT:
				args.append(NUM2DBL(argv[i]));
				break;
			case T_FIXNUM:
				args.append((int)FIX2LONG(argv[i]));
				break;
			case T_BIGNUM:
				args.append((TTInt64)NUM2LL(argv[i]));
				break;
			case T_STRING:
				messageArgStr = StringValue(argv[i]);
				args.append(TT(RSTRING(messageArgStr)->ptr));
				break;
			case T_ARRAY:
				cout << "TTError: Array arguments for messages not yet supported in Ruby" << endl;
				err = kTTErrGeneric;
				break;
			case T_OBJECT:
				cout << "TTError: Object arguments for messages not yet supported in Ruby" << endl;
				err = kTTErrGeneric;
				break;
			default:
				// assume no arguments for now...
				break;
		}
	}				
	
	//err = TTObjectInstantiate(TT(RSTRING(classNameStr)->ptr), &instance->obj, args);
	err = TTObjectInstantiate(TT("multicore.object"), (TTObjectPtr*)&instance->obj, args);
	
	if (!err) {
		instance->parameterNames = new TTHash;	// TODO: need to free this
		instance->obj->getUnitGenerator()->getAttributeNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getString();
			if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
				nameString[0] += 32;							// convert first letter to lower-case for Max
				TTValuePtr v = new TTValue(aName);
				instance->parameterNames->append(TT(nameString.c_str()), *v);
			}
		}

		instance->messageNames = new TTHash;	// TODO: need to free this
		instance->obj->getUnitGenerator()->getMessageNames(names);
		n = names.getSize();
		for (int i=0; i<n; i++) {
			names.get(i, &aName);
			nameString = aName->getString();
			if (nameString[0] > 64 && nameString[0] < 91) {		// ignore all params not starting with upper-case
				nameString[0] += 32;							// convert first letter to lower-case for Max
				TTValuePtr v = new TTValue(aName);
				instance->messageNames->append(TT(nameString.c_str()), *v);
			}
		}
				
		v->setSize(1);
		v->set(0, TTPtr(instance));
		gTTAudioInstances->append(TTSymbolPtr(self), *v);
		return self;
	}
	else {
		cout << "TTObjectInstantiate failed to create object" << endl;
		return NULL;
	}
}


VALUE TTAudioGetMessages(VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;
	VALUE				returnValue = rb_float_new(0.0);
	TTSymbolPtr			s;
	TTCString			c;
	TTUInt16			size;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			TTValue names;
			
			instance->messageNames->getKeys(names);	
			//instance->obj->getUnitGenerator()->getMessageNames(v);			
			size = v.getSize();
			returnValue = rb_ary_new2(size);
			for (TTUInt16 i=0; i<size; i++) {				
				v.get(i, &s);
				c = (TTCString)s->getCString();
				rb_ary_store(returnValue, i, rb_str_new(c, strlen(c)));
			}
		}
	}
	return returnValue;
}


VALUE TTAudioSendMessage(int argc, VALUE* argv, VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				messageNameStr;
	VALUE				messageArgStr;
	TTValue				v;

	if (argc < 1) {
		cout << "ERROR -- TTRuby.send requires at least 1 argument (the name of the message to send)" << endl;
		goto bye;
	}

	messageNameStr = StringValue(argv[0]);	
	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			TTSymbolPtr	messageName;
			TTValue		messageNameValue;

			messageName = TT(RSTRING(messageNameStr)->ptr);
			instance->messageNames->lookup(messageName, messageNameValue);
			messageNameValue.get(0, &messageName);

			if (argc == 1) {		// no arguments...
				err = instance->obj->getUnitGenerator()->sendMessage(messageName);
			}
			else {					// we have arguments...
				v.clear();

				for (int i=1; i<argc; i++) {
					int t = TYPE(argv[i]);

					cout << "the type of the message arg is " << t << endl;
					switch (t) {
						case T_FLOAT:
							v.append(NUM2DBL(argv[i]));
							break;
						case T_FIXNUM:
							v.append((int)FIX2LONG(argv[i]));
							break;
						case T_BIGNUM:
							v.append((TTInt64)NUM2LL(argv[i]));
							break;
						case T_STRING:
							messageArgStr = StringValue(argv[i]);
							v.append(TT(RSTRING(messageArgStr)->ptr));
							break;
						case T_ARRAY:
							cout << "TTError: Array arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						case T_OBJECT:
							cout << "TTError: Object arguments for messages not yet supported in Ruby" << endl;
							err = kTTErrGeneric;
							break;
						default:
							// assume no arguments for now...
							break;
					}
				}				

				if (!err)
					err = instance->obj->getUnitGenerator()->sendMessage(messageName, v);				
			}

			if (err)
				cout << "TTAudioSendMessage ('" << RSTRING(messageNameStr)->ptr << "'): Error " << err << endl;
		}
	}
bye:
	;
}


VALUE TTAudioGetAttributes(VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;
	VALUE				returnValue = rb_float_new(0.0);
	TTSymbolPtr			s;
	TTCString			c;
	TTUInt16			size;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			TTValue names;
			
			instance->parameterNames->getKeys(names);
			//instance->obj->getAttributeNames(v);			
			//instance->obj->getUnitGenerator()->getAttributeNames(v);			
			size = v.getSize();
			returnValue = rb_ary_new2(size);
			for (TTUInt16 i=0; i<size; i++) {				
				v.get(i, &s);
				c = (TTCString)s->getCString();
				rb_ary_store(returnValue, i, rb_str_new(c, strlen(c)));
			}
		}
	}
	return returnValue;
}


VALUE TTAudioSetAttribute(VALUE self, VALUE attributeName, VALUE attributeValue)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				attributeNameStr = StringValue(attributeName);
	VALUE				attributeValueStr;
	TTValue				v;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			int t = TYPE(attributeValue);

			v.clear();
			//cout << "the type of the attr arg is " << t << endl;
			switch (t) {
				case T_FLOAT:
					v.append(NUM2DBL(attributeValue));
					break;
				case T_FIXNUM:
					v.append((int)FIX2LONG(attributeValue));
					break;
				case T_BIGNUM:
					v.append((TTInt64)NUM2LL(attributeValue));
					break;
				case T_STRING:
					attributeValueStr = StringValue(attributeValue);
					v.append(TT(RSTRING(attributeValueStr)->ptr));
					break;
				case T_ARRAY:
					cout << "TTError: Array arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				case T_OBJECT:
					cout << "TTError: Object arguments for attributes not yet supported in Ruby" << endl;
					err = kTTErrGeneric;
					break;
				default:
					cout << "TTError: Unknown type for arguments to attribute" << endl;
					err = kTTErrGeneric;
					break;
			}
			if (!err) {
				TTSymbolPtr	parameterName;
				TTValue		parameterNameValue;
				
				parameterName = TT(RSTRING(attributeNameStr)->ptr);
				instance->parameterNames->lookup(parameterName, parameterNameValue);
				parameterNameValue.get(0, &parameterName);
				
				err = instance->obj->getUnitGenerator()->setAttributeValue(parameterName, v);
			}
			if (err)
				cout << "TTAudioSetAttribute: Error " << err << endl;
		}
	}
}


VALUE TTAudioGetAttribute(VALUE self, VALUE attributeName)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	VALUE				attributeNameStr = StringValue(attributeName);
	VALUE				attributeValueStr;
	TTValue				v;
	VALUE				returnValue = rb_float_new(0.0);
	TTSymbolPtr			s;
	TTCString			c;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)&instance);
		if (instance) {
			TTSymbolPtr	parameterName;
			TTValue		parameterNameValue;
			
			parameterName = TT(RSTRING(attributeNameStr)->ptr);
			instance->parameterNames->lookup(parameterName, parameterNameValue);
			parameterNameValue.get(0, &parameterName);
			
			err = instance->obj->getUnitGenerator()->getAttributeValue(parameterName, v);
			if (err) {
				cout << "TTAudioGetAttribute: Error " << err << endl;
				goto out;
			}

			// TODO: not handling array attrs yet...

			switch (v.getType(0)) {
				case kTypeFloat64:
				case kTypeFloat32:
					returnValue = rb_float_new(v);
					break;
				case kTypeInt8:
				case kTypeUInt8:
				case kTypeInt16:
				case kTypeUInt16:
				case kTypeInt32:
				case kTypeUInt32:
					returnValue = INT2NUM(v);
					break;
				case kTypeInt64:
				case kTypeUInt64:
					returnValue = LL2NUM((TTInt64)v);
					break;
				case kTypeBoolean:\
					returnValue = TTBoolean(v);
					break;
				case kTypeSymbol:
					s = v;
					c = (TTCString)s->getCString();
					returnValue = rb_str_new(c, strlen(c));
					break;
			}
		}
	}
out:
	return returnValue;
}


VALUE TTAudioReset(VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			instance->obj->resetAudio();			
		}
	}
	return self;
}


VALUE TTAudioConnect(int argc, VALUE* argv, VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTAudioInstance*	instanceToConnect = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;
	TTUInt16			inletNumberToWhichToConnect = 0;
	TTUInt16			outletNumberFromWhichToConnect = 0;

	if (argc < 1) {
		cout << "ERROR -- TTAudioConnect requires at least 1 argument (the object whose output should be connected to our input)" << endl;
		goto bye;
	}

	if (TYPE(argv[0]) == T_OBJECT) {
		err = gTTAudioInstances->lookup(TTSymbolPtr(argv[0]), v);
		if (!err) {
			v.get(0, (TTPtr*)(&instanceToConnect));
		}		
	}

	if (!instanceToConnect) {
		cout << "ERROR -- TTAudioConnect cannot verify the object you would like to connect" << endl;
		goto bye;
	}
	
	if (argc > 1) {
		inletNumberToWhichToConnect = FIX2LONG(argv[1]);
		if (argc > 2)
			outletNumberFromWhichToConnect = FIX2LONG(argv[2]);
	}

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {			
			instance->obj->connectAudio(instanceToConnect->obj, outletNumberFromWhichToConnect, inletNumberToWhichToConnect);			
		}
	}
bye:
	return self;
}


VALUE TTAudioDrop(int argc, VALUE* argv, VALUE self)
{
	TTAudioInstance*	instance = NULL;
	TTAudioInstance*	instanceToConnect = NULL;
	TTErr				err = kTTErrNone;
	TTValue				v;
	TTUInt16			inletNumberToWhichToConnect = 0;
	TTUInt16			outletNumberFromWhichToConnect = 0;

	if (argc < 1) {
		cout << "ERROR -- TTAudioConnect requires at least 1 argument (the object whose output should be connected to our input)" << endl;
		goto bye;
	}

	if (TYPE(argv[0]) == T_OBJECT) {
		err = gTTAudioInstances->lookup(TTSymbolPtr(argv[0]), v);
		if (!err) {
			v.get(0, (TTPtr*)(&instanceToConnect));
		}		
	}

	if (!instanceToConnect) {
		cout << "ERROR -- TTAudioConnect cannot verify the object you would like to connect" << endl;
		goto bye;
	}
	
	if (argc > 1) {
		inletNumberToWhichToConnect = FIX2LONG(argv[1]);
		if (argc > 2)
			outletNumberFromWhichToConnect = FIX2LONG(argv[2]);
	}

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			instance->obj->dropAudio(instanceToConnect->obj, outletNumberFromWhichToConnect, inletNumberToWhichToConnect);			
		}
	}
bye:
	return self;
}


VALUE TTAudioExportMax(VALUE self, VALUE pathToExportFile)
{
	TTAudioInstance*		instance = NULL;
	TTErr					err = kTTErrNone;
	TTValue					v;
	TTAudioGraphDescription	desc;
	VALUE					pathToExportStr = StringValue(pathToExportFile);
	TTString				path = RSTRING(pathToExportStr)->ptr;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			instance->obj->getAudioDescription(desc);
			desc.exportMax(path);
		}
	}
	return self;
}

VALUE TTAudioExportCpp(VALUE self, VALUE pathToExportFile)
{
	TTAudioInstance*		instance = NULL;
	TTErr					err = kTTErrNone;
	TTValue					v;
	TTAudioGraphDescription	desc;
	VALUE					pathToExportStr = StringValue(pathToExportFile);
	TTString				path = RSTRING(pathToExportStr)->ptr;

	err = gTTAudioInstances->lookup(TTSymbolPtr(self), v);
	if (!err) {
		v.get(0, (TTPtr*)(&instance));
		if (instance) {
			instance->obj->getAudioDescription(desc);
			desc.exportCpp(path);
		}
	}
	return self;
}

