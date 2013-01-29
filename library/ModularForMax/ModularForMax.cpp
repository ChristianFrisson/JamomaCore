/* 
 * Modular For Max
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "ModularForMax.h"

/***********************************************************************************
*
*		C EXTERN METHODS
*
************************************************************************************/

// Method to deal with the jamoma directory
/////////////////////////////////////////

TTErr jamoma_directory_dump_observers(void)
{
	unsigned int i, j, s;
	TTValue v;
	TTValuePtr pv;
	TTSymbol key, owner;
	
	post("--- JamomaDirectory Observers ---");
	JamomaDirectory->dumpObservers(v);
	
	s = v.size();
	for (i = 0; i < s; i++) {
		
        pv = TTValuePtr((TTPtr)v[i]);
		key = (*pv)[0];
		post("%s :", key.c_str());
		
		for (j = 1; j < ((TTValuePtr)pv)->size(); j++) {
		
            owner = (*pv)[j];
			post("    %s", owner.c_str());
		}
	}
	
	post("----------------------------------------------");
	
	return kTTErrNone;
}

// Method to deal with TTSubscriber
///////////////////////////////////////////////////////////////////////

TTErr jamoma_subscriber_create(ObjectPtr x, TTObjectBasePtr aTTObjectBase, TTAddress relativeAddress, TTSubscriberPtr *returnedSubscriber)
{
	TTValue			v, args;
	TTNodePtr		aNode;
	TTList			aContextList;
	TTAddress		newRelativeAddress, absoluteAddress;
	TTBoolean		newInstance;
		
	// prepare arguments
	args.append(aTTObject);
	args.append(relativeAddress);
	
	// Get all Context above the object and their name 
	jamoma_subscriber_get_patcher_list(x, aContextList);
	args.append((TTPtr)&aContextList);
	
	*returnedSubscriber = NULL;
	TTObjectBaseInstantiate(kTTSym_Subscriber, TTObjectBaseHandle(returnedSubscriber), args);
	
	// Check if the subscription is ok (or the binding in case of NULL object)
	(*returnedSubscriber)->getAttributeValue(TTSymbol("node"), v);
	aNode = TTNodePtr((TTPtr)v[0]);
	if (aNode) {
		
		if (aTTObjectBase) {
			// Is a new instance have been created ?
			(*returnedSubscriber)->getAttributeValue(TTSymbol("newInstanceCreated"), v);
			newInstance = v[0];
			
			if (newInstance) {
				(*returnedSubscriber)->getAttributeValue(TTSymbol("relativeAddress"), v);
				newRelativeAddress = v[0];
				object_warn(x, "Jamoma cannot registers multiple object with the same OSC identifier (%s).  Using %s instead.", relativeAddress.c_str(), newRelativeAddress.c_str());
			}
			
			JamomaDebug {
				(*returnedSubscriber)->getAttributeValue(TTSymbol("nodeAddress"), v);
				absoluteAddress = v[0];
				object_post(x, "registers at %s", absoluteAddress.c_str());
			}
		}

		return kTTErrNone;
	}
	
	if (aTTObjectBase)
		object_error(x, "Jamoma cannot registers %s", relativeAddress.c_str());
	else
		// don't display this message because the objects can try many times before to binds
		; //object_error(x, "Jamoma cannot binds %s", relativeAddress->s_name);
	
	return kTTErrGeneric;
}

void jamoma_subscriber_get_patcher_list(ObjectPtr x, TTList& aContextListToFill)
{
	TTValue		v;
	ObjectPtr	objPtr = x;
	ObjectPtr	patcherPtr = NULL;
	TTSymbol	patcherContext;
	TTSymbol	patcherName;
	TTSymbol	patcherClass;
	TTSymbol	lowerContext;
	
	// Edit the list of all patcher's name and pointer 
	// above the object x looking at all parent patcher
	do {
		// get all info from the current object
		jamoma_patcher_get_info(objPtr, &patcherPtr, patcherContext, patcherClass, patcherName);
		
		if (patcherName && patcherPtr) {
			
			// check if the patcher have the same context than lower patchers
			if (patcherContext == lowerContext || lowerContext == kTTSymEmpty) {
				
				// keep it as lowerContext
				lowerContext = patcherContext;
				
				// insert the current patcher name and his pointer to the list
				v = patcherName;
				v.append((TTPtr)patcherPtr);
				aContextListToFill.insert(0, v);
				
				// replace current object by his parent patcher
				objPtr = patcherPtr;
			}
			else {
				
				// skip the patcher to go directly to an upper one
				objPtr = patcherPtr;
			}
		}
		else
			break;
		
	} while (jamoma_patcher_get_hierarchy(objPtr) != _sym_topmost);
}

// Method to deal with TTContainer
///////////////////////////////////////////////////////////////////////

/**	Create a container object */
TTErr jamoma_container_create(ObjectPtr x, TTObjectBasePtr *returnedContainer)
{
	TTValue			args;
	TTObjectBasePtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	// prepare arguments
	returnAddressCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedContainer = NULL;
	TTObjectBaseInstantiate(kTTSym_Container, TTObjectBaseHandle(returnedContainer), args);
	
	return kTTErrNone;
}

/**	Send Max data using a container object */
TTErr jamoma_container_send(TTContainerPtr aContainer, SymbolPtr relativeAddressAndAttribute, AtomCount argc, AtomPtr argv)
{
	TTAddress anAddress;
	TTValue	v, data;
	
	if (aContainer) {
		
		anAddress = relativeAddressAndAttribute->s_name;
		
		if (anAddress.getType() != kAddressRelative) {
			error("%s is an absolute address", relativeAddressAndAttribute->s_name);
			return kTTErrGeneric;
		}
		
		if (anAddress.getAttribute() == NO_ATTRIBUTE)
			anAddress = anAddress.appendAttribute(kTTSym_value);
		else
			anAddress = anAddress.appendAttribute(ToTTName(anAddress.getAttribute()));

		data.append(anAddress);
		
		jamoma_ttvalue_from_Atom(v, _sym_nothing, argc, argv);
		data.append((TTPtr)&v);
		
		return aContainer->sendMessage(kTTSym_Send, data, kTTValNONE); // data is [address, attribute, [x, x, ,x , ...]]
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTData
///////////////////////////////////////////////////////////////////////

/**	Create a data object */
TTErr jamoma_data_create(ObjectPtr x, TTObjectBasePtr *returnedData, TTSymbol service)
{
	TTValue			args;
	TTObjectBasePtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	args.append(service);
	
	*returnedData = NULL;
	TTObjectBaseInstantiate(kTTSym_Data, TTObjectBaseHandle(returnedData), args);
	
	return kTTErrNone;
}

/**	Send Max data command */
TTErr jamoma_data_command(TTDataPtr aData, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aData) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		aData->sendMessage(kTTSym_Command, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTSender
///////////////////////////////////////////////////////////////////////

/**	Create a sender object */
TTErr jamoma_sender_create(ObjectPtr x, TTObjectBasePtr *returnedSender)
{
	*returnedSender = NULL;
	TTObjectBaseInstantiate(kTTSym_Sender, TTObjectBaseHandle(returnedSender), kTTValNONE);
	return kTTErrNone;
}

/**	Create a sender object for audio signal */
TTErr jamoma_sender_create_audio(ObjectPtr x, TTObjectBasePtr *returnedSender)
{	
	TTValue				args;
	TTAudioSignalPtr	audio = NULL;
	
	// prepare arguments
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audio, 1);
	args.append(audio);
	
	*returnedSender = NULL;
	TTObjectBaseInstantiate(kTTSym_Sender, TTObjectBaseHandle(returnedSender), args);
	return kTTErrNone;
}

/**	Send Max data using a sender object */
TTErr jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aSender) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);

		return aSender->sendMessage(kTTSym_Send, v, kTTValNONE);
	}
	
	return kTTErrGeneric;
}

// Method to deal with TTReceiver
///////////////////////////////////////////////////////////////////////

/**	Create a receiver object */
TTErr jamoma_receiver_create(ObjectPtr x, TTObjectBasePtr *returnedReceiver)
{
	TTValue			args;
	TTObjectBasePtr		returnAddressCallback, returnValueCallback;
	TTValuePtr		returnAddressBaton, returnValueBaton;
	
	returnAddressCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	*returnedReceiver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(returnedReceiver), args);
	
	return kTTErrNone;
}

/**	Create a receiver object for audio signal */
TTErr jamoma_receiver_create_audio(ObjectPtr x, TTObjectBasePtr *returnedReceiver)
{
	TTValue			args;
	TTObjectBasePtr		returnAddressCallback;
	TTValuePtr		returnAddressBaton;
	TTAudioSignalPtr	audio = NULL;
	
	// prepare arguments
	returnAddressCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnAddressCallback, kTTValNONE);
	returnAddressBaton = new TTValue(TTPtr(x));
	returnAddressCallback->setAttributeValue(kTTSym_baton, TTPtr(returnAddressBaton));
	returnAddressCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_address));
	args.append(returnAddressCallback);
	
	args.append(NULL);	// no return value callback
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audio, 1);
	args.append(audio);
	
	*returnedReceiver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(returnedReceiver), args);
	
	return kTTErrNone;
}

// Method to deal with TTPresetManager
///////////////////////////////////////////////////////////////////////

/**	Create a preset manager object */
TTErr jamoma_presetManager_create(ObjectPtr x, TTObjectBasePtr *returnedPresetManager)
{
	TTValue			args;
	
	*returnedPresetManager = NULL;
	TTObjectBaseInstantiate(kTTSym_PresetManager, TTObjectBaseHandle(returnedPresetManager), args);
	
	return kTTErrNone;
}

/**	Create a cue manager object */
TTErr jamoma_cueManager_create(ObjectPtr x, TTObjectBasePtr *returnedCueManager)
{
	TTValue			args;
	TTObjectBasePtr		returnLineCallback;
	TTValuePtr		returnLineBaton;
	
	// prepare arguments
	returnLineCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnLineCallback, kTTValNONE);
	returnLineBaton = new TTValue(TTPtr(x));
	returnLineCallback->setAttributeValue(kTTSym_baton, TTPtr(returnLineBaton));
	returnLineCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnLineCallback);
	
	*returnedCueManager = NULL;
	TTObjectBaseInstantiate(kTTSym_CueManager, TTObjectBaseHandle(returnedCueManager), args);
	
	return kTTErrNone;
}

// Method to deal with TTInput
///////////////////////////////////////////////////////////////////////

/**	Create an input object for any signal */
TTErr jamoma_input_create(ObjectPtr x, TTObjectBasePtr *returnedInput)
{	
	TTValue			args;
	TTObjectBasePtr		signalOutCallback = NULL;
	TTValuePtr		signalOutBaton;
	
	// prepare arguments
	args.append(TTSymbol("control"));
	
	TTObjectBaseInstantiate(TTSymbol("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(signalOutCallback);
	
	*returnedInput = NULL;
	TTObjectBaseInstantiate(kTTSym_Input, TTObjectBaseHandle(returnedInput), args);
	
	return kTTErrNone;
}

/**	Create an input object for audio signal */
TTErr jamoma_input_create_audio(ObjectPtr x, TTObjectBasePtr *returnedInput)
{
	TTValue				args;
	TTObjectBasePtr			signalOutCallback = NULL;
	TTValuePtr			signalOutBaton;
	TTAudioSignalPtr	audioIn = NULL;
	TTAudioSignalPtr	audioOut = NULL;
	TTAudioSignalPtr	audioZero = NULL;
	
	// prepare arguments
	args.append(TTSymbol("audio"));
	
	TTObjectBaseInstantiate(TTSymbol("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(signalOutCallback);
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioIn, 1);
	args.append(audioIn);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioOut, 1);
	args.append(audioOut);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioZero, 1);
	args.append(audioZero);
	
	*returnedInput = NULL;
	TTObjectBaseInstantiate(kTTSym_Input, TTObjectBaseHandle(returnedInput), args);
	
	return kTTErrNone;
}

/**	Send any signal to an input object */
TTErr jamoma_input_send(TTInputPtr anInput, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	TTValue		v;
	
	if (anInput) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		anInput->sendMessage(kTTSym_Send, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTOutput
///////////////////////////////////////////////////////////////////////

/**	Create an output object for signal */
TTErr jamoma_output_create(ObjectPtr x, TTObjectBasePtr *returnedOutput)
{	
	TTValue			args;
	TTObjectBasePtr		signalOutCallback = NULL;
	TTValuePtr		signalOutBaton;
	
	// prepare arguments
	args.append(TTSymbol("control"));
	
	TTObjectBaseInstantiate(TTSymbol("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(signalOutCallback);
	
	*returnedOutput = NULL;
	TTObjectBaseInstantiate(kTTSym_Output, TTObjectBaseHandle(returnedOutput), args);
	
	return kTTErrNone;
}

/**	Create an output object for audio signal */
TTErr jamoma_output_create_audio(ObjectPtr x, TTObjectBasePtr *returnedOutput)
{
	TTValue				args;
	TTObjectBasePtr			signalOutCallback = NULL;
	TTValuePtr			signalOutBaton;
	TTObjectBasePtr			inputLinkCallback = NULL;
	TTValuePtr			inputLinkBaton;
	TTAudioSignalPtr	audioIn = NULL;
	TTAudioSignalPtr	audioOut = NULL;
	TTAudioSignalPtr	audioTemp = NULL;
	TTAudioSignalPtr	audioZero = NULL;
	TTObjectBasePtr			mixUnit = NULL;
	TTObjectBasePtr			gainUnit = NULL;
	TTObjectBasePtr			rampMixUnit = NULL;
	TTObjectBasePtr			rampGainUnit = NULL;
	
	// prepare arguments
	args.append(TTSymbol("audio"));
	
	signalOutCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &signalOutCallback, kTTValNONE);
	signalOutBaton = new TTValue(TTPtr(x));
	signalOutBaton->append(TTPtr(jps_return_signal));
	signalOutCallback->setAttributeValue(kTTSym_baton, TTPtr(signalOutBaton));
	signalOutCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(signalOutCallback);
	
	inputLinkCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &inputLinkCallback, kTTValNONE);
	inputLinkBaton = new TTValue(TTPtr(x));
	inputLinkBaton->append(TTPtr(gensym("return_link")));
	inputLinkCallback->setAttributeValue(kTTSym_baton, TTPtr(inputLinkBaton));
	inputLinkCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(inputLinkCallback);
	
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioIn, 1);
	args.append(audioIn);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioOut, 1);
	args.append(audioOut);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioTemp, 1);
	args.append(audioTemp);
	TTObjectBaseInstantiate(kTTSym_audiosignal, &audioZero, 1);
	args.append(audioZero);
	
	TTObjectBaseInstantiate(TTSymbol("crossfade"), &mixUnit, 1);
	mixUnit->setAttributeValue(TTSymbol("position"), 1.0);
	args.append(mixUnit);
	
	TTObjectBaseInstantiate(TTSymbol("gain"), &gainUnit, 1);
	gainUnit->setAttributeValue(TTSymbol("linearGain"), 1.0);
	args.append(gainUnit);
	
	TTObjectBaseInstantiate(TTSymbol("ramp"), &rampMixUnit, 1);
	args.append(rampMixUnit);
	TTObjectBaseInstantiate(TTSymbol("ramp"), &rampGainUnit, 1);
	args.append(rampGainUnit);
	
	*returnedOutput = NULL;
	TTObjectBaseInstantiate(kTTSym_Output, TTObjectBaseHandle(returnedOutput), args);
	
	return kTTErrNone;
}

/**	Send any signal to an output object */
TTErr jamoma_output_send(TTOutputPtr anOutput, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{	
	TTValue		v;
	
	if (anOutput) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		anOutput->sendMessage(kTTSym_Send, v, kTTValNONE);
		return kTTErrNone;
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTMapper
///////////////////////////////////////////////////////////////////////

/**	Create a mapper object */
TTErr jamoma_mapper_create(ObjectPtr x, TTObjectBasePtr *returnedMapper)
{
	TTValue			args;
	TTObjectBasePtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	*returnedMapper = NULL;
	TTObjectBaseInstantiate(kTTSym_Mapper, TTObjectBaseHandle(returnedMapper), args);
	
	return kTTErrNone;
}


// Method to deal with TTViewer
///////////////////////////////////////////////////////////////////////

/**	Create a viewer object */
TTErr jamoma_viewer_create(ObjectPtr x, TTObjectBasePtr *returnedViewer)
{
	TTValue			args;
	TTObjectBasePtr		returnValueCallback;
	TTValuePtr		returnValueBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value_typed));
	args.append(returnValueCallback);
	
	*returnedViewer = NULL;
	TTObjectBaseInstantiate(kTTSym_Viewer, TTObjectBaseHandle(returnedViewer), args);
	
	return kTTErrNone;
}

/**	Send Max data using a viewer object */
TTErr jamoma_viewer_send(TTViewerPtr aViewer, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	TTValue		v;
	
	if (aViewer) {
		
		jamoma_ttvalue_from_Atom(v, msg, argc, argv);
		
		return aViewer->sendMessage(kTTSym_Send, v, kTTValNONE);
	}
	
	return kTTErrGeneric;
}


// Method to deal with TTExplorer
///////////////////////////////////////////////////////////////////////

/**	Create an explorer object */
TTErr jamoma_explorer_create(ObjectPtr x, TTObjectBasePtr *returnedExplorer)
{
	TTValue			args;
	TTObjectBasePtr		returnValueCallback, returnSelectionCallback;
	TTValuePtr		returnValueBaton, returnSelectionBaton;
	
	// prepare arguments
	returnValueCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTPtr(x));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnValueCallback);
	
	args.append((TTPtr)jamoma_explorer_default_filter_bank());

	returnSelectionCallback = NULL;			// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnSelectionCallback, kTTValNONE);
	returnSelectionBaton = new TTValue(TTPtr(x));
	returnSelectionBaton->append((TTPtr)gensym("return_selection"));
	returnSelectionCallback->setAttributeValue(kTTSym_baton, TTPtr(returnSelectionBaton));
	returnSelectionCallback->setAttributeValue(kTTSym_function, TTPtr(&jamoma_callback_return_value));
	args.append(returnSelectionCallback);
	
	*returnedExplorer = NULL;
	TTObjectBaseInstantiate(kTTSym_Explorer, TTObjectBaseHandle(returnedExplorer), args);
	
	return kTTErrNone;
}

TTHashPtr jamoma_explorer_default_filter_bank(void)
{
	TTHashPtr		defaultFilterBank = new TTHash();
	TTDictionaryPtr aFilter;
	
	// Create some ready-made filters
	
	// to look for any data (parameter | message | return)
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Data);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("data"), (TTPtr)aFilter);
	
	// to look for jcom.parameter
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Data);
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_parameter);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("parameter"), (TTPtr)aFilter);
	
	// to look for jcom.message
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Data);
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_message);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("message"), (TTPtr)aFilter);
	
	// to look for jcom.return
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Data);
	aFilter->append(kTTSym_attribute, kTTSym_service);
	aFilter->append(kTTSym_value, kTTSym_return);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("return"), (TTPtr)aFilter);
	
	// to look for jcom.model
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Container);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_model);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("model"), (TTPtr)aFilter);
	
	// to look for jcom.view
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Container);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_view);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("view"), (TTPtr)aFilter);
	
	// to look for empty nodes
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, TTSymbol("none"));
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("none"), (TTPtr)aFilter);
	
	// to look for jcom.remote
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_object, kTTSym_Viewer);
	aFilter->append(kTTSym_mode, kTTSym_include);
	defaultFilterBank->append(TTSymbol("remote"), (TTPtr)aFilter);
	
	// to look for user-defined object
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_generic);
	aFilter->append(kTTSym_mode, kTTSym_exclude);
	defaultFilterBank->append(TTSymbol("noGenericTag"), (TTPtr)aFilter);
	
	// to look for generic tagged object
	aFilter = new TTDictionary;
	aFilter->setSchema(kTTSym_filter);
	aFilter->append(kTTSym_attribute, kTTSym_tag);
	aFilter->append(kTTSym_value, kTTSym_generic);
	aFilter->append(kTTSym_mode, kTTSym_restrict);
	defaultFilterBank->append(TTSymbol("genericTag"), (TTPtr)aFilter);
	
	return defaultFilterBank;
}

// Method to return data
///////////////////////////////////////////////////////////////////////

void jamoma_callback_return_address(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTSymbol	address;
	
	// unpack baton (a t_object* and the name of the method to call)
	b = (TTValuePtr)baton;
	x = ObjectPtr((TTPtr)b[0]);
	
	// unpack data (address)
	address = v[0];
	
	// send data to a data using the return_value method
	object_method(x, jps_return_address, SymbolGen(address.c_str()), 0, 0);
}

/** Return the value to a jcom. external as _sym_nothing, argc, argv */
void jamoma_callback_return_value(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	SymbolPtr	method;
	long		argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	x = ObjectPtr((TTPtr)b[0]);
	
	if (b->size() == 2) {
		method = SymbolPtr((TTPtr)(*b)[1]);
		if (method == NULL || method == _sym_nothing)
			return;
		}
	else
		method = jps_return_value;

	jamoma_ttvalue_to_Atom(v, &argc, &argv);
	
	// send data to an external
	object_method(x, method, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

/** Return the value to a jcom. external as msg, argc, argv */
void jamoma_callback_return_value_typed(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	SymbolPtr	msg, method;
	long		argc = 0;
	AtomPtr		argv = NULL;
	TTBoolean	shifted = false;
	
	// unpack baton (a t_object* and the name of the method to call (default : jps_return_value))
	b = (TTValuePtr)baton;
	x = ObjectPtr((TTPtr)b[0]);
	
	if (b->size() == 2) {
		method = SymbolPtr((TTPtr)(*b)[1]);
		if (method == NULL || method == _sym_nothing)
			return;
	}
	else
		method = jps_return_value;
	
	// convert TTValue into a typed atom array
	jamoma_ttvalue_to_typed_Atom(v, &msg, &argc, &argv, shifted);
	
	// send data to an external using the return_value method
	object_method(x, method, msg, argc, argv);
	
	if (shifted)
		argv--;
	sysmem_freeptr(argv);
}

/** Return any signal */
void jamoma_callback_return_signal(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	long		argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object*)
	b = (TTValuePtr)baton;
	x = ObjectPtr((TTPtr)b[0]);
	
	jamoma_ttvalue_to_Atom(v, &argc, &argv);
	
	// send signal using the return_signal method
	object_method(x, jps_return_signal, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

/** Return audio signal */
void jamoma_callback_return_signal_audio(TTPtr baton, TTValue& v)
{
	TTValuePtr	b;
	ObjectPtr	x;
	TTPtr		signal;
	long		i, argc = 0;
	AtomPtr		argv = NULL;
	
	// unpack baton (a t_object*)
	b = (TTValuePtr)baton;
	x = ObjectPtr((TTPtr)b[0]);
	
	// unpack data (signal)
	argc = v.size();
	argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * argc);
	for (i = 0; i < argc; i++) {
		signal = v[i];
		atom_setobj(argv+i, signal);
	}
	
	// send signal using the return_signal method
	object_method(x, jps_return_signal, _sym_nothing, argc, argv);
	
	sysmem_freeptr(argv);
}

// Method to deal with TTValue
/////////////////////////////////////////

/** Make a typed Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
void jamoma_ttvalue_to_typed_Atom(const TTValue& v, SymbolPtr *msg, AtomCount *argc, AtomPtr *argv, TTBoolean& shifted)
{
	AtomCount	i;
	TTFloat64	f;
	TTSymbol	s;
	TTInt32		t;
	
	*msg = _sym_nothing;
	*argc = v.size();
	
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * (*argc));
	
	if (*argc && !(v == kTTValNONE)) {
		
		for (i = 0; i < *argc; i++) {
			
			if(v[i].type() == kTypeFloat32 || v[i].type() == kTypeFloat64){
				f = v[i];
				atom_setfloat((*argv)+i, f);
				*msg = _sym_float;
			}
			else if(v[i].type() == kTypeSymbol){
				s = v[i];
				if (s == kTTSymEmpty || s == kTTAdrsEmpty)
					atom_setsym((*argv)+i, _sym_bang);
				else
					atom_setsym((*argv)+i, gensym((char*)s.c_str()));
				//*msg = _sym_symbol;
			}
			else{	// assume int
				t = v[i];
				atom_setlong((*argv)+i, t);
				*msg = _sym_int;
			}
		}
		
		if (i>0) {
			
			if (atom_gettype(*argv) == A_SYM) {
				
				*msg = atom_getsym(*argv);
				*argc = (*argc)-1;
				*argv = (*argv)+1;
				shifted = true;
			}
			else if (i>1)
				*msg = _sym_list;
		}
	}
	else {
		
		*msg = _sym_bang;
		*argc = 0;
		*argv = NULL;
	}
}

/** Make an Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
void jamoma_ttvalue_to_Atom(const TTValue& v, AtomCount *argc, AtomPtr *argv)
{
	AtomCount	i;
	TTFloat64	f;
	TTSymbol	s;
	TTInt32		t;
	
	*argc = v.size();
	
	if (*argc == 0 || v == kTTValNONE)
		return;
	
	if (!(*argv)) // otherwise use memory passed in
		*argv = (AtomPtr)sysmem_newptr(sizeof(t_atom) * (*argc));
	
	for (i = 0; i < *argc; i++) {
		
		if (v[i].type() == kTypeFloat32 || v[i].type() == kTypeFloat64){
			f = v[i];
			atom_setfloat((*argv)+i, f);
		}
		else if (v[i].type() == kTypeSymbol) {
			s = v[i];
            if (s == kTTSymEmpty)
                atom_setsym((*argv)+i, _sym_bang); // because empty symbol can't be filtered in Max
			else
                atom_setsym((*argv)+i, gensym((char*)s.c_str()));
		}
		else {	// assume int
			t = v[i];
			atom_setlong((*argv)+i, t);
		}
	}
}

/** Make a TTValue from Atom array */
void jamoma_ttvalue_from_Atom(TTValue& v, SymbolPtr msg, AtomCount argc, AtomPtr argv)
{
	AtomCount	i, start;
	
	if ((msg == _sym_bang || msg == _sym_nothing) && argc == 0)
		v = kTTValNONE;
	else {
		
		// add msg to the value
		if (msg != _sym_nothing && msg != _sym_int && msg != _sym_float && msg != _sym_symbol && msg != _sym_list) {
			v.resize(argc+1);
			v[0] = TTSymbol(msg->s_name);
			start = 1;
		}
		else {
			v.resize(argc);
			start = 0;
		}
			
		// convert Atom to TTValue
		for (i = 0; i < argc; i++) 
		{
			if (atom_gettype(argv+i) == A_LONG)
				v[i+start] = (int)atom_getlong(argv+i);
			else if (atom_gettype(argv+i) == A_FLOAT)
				v[i+start] = (TTFloat64)atom_getfloat(argv+i);
			else if (atom_gettype(argv+i) == A_SYM)
				v[i+start] = TTSymbol(atom_getsym(argv+i)->s_name);
		}
	}
}

/** Convert a TTSymbol "MyObjectMessage" into a SymbolPtr "my/object/message" 
 or return NULL if the TTSymbol doesn't begin by an uppercase letter */
SymbolPtr jamoma_TTName_To_MaxName(TTSymbol TTName)
{
    TTAddress   anAddress;
    TTErr       err;
    
    err = convertUpperCasedNameInAddress(TTName, anAddress);
	
	if (!err)
		return gensym((char*)anAddress.c_str());
	else
		return NULL;
}

/** Load an external for internal use. Returns true if successful */
TTBoolean jamoma_extern_load(SymbolPtr objectname, AtomCount argc, AtomPtr argv, ObjectPtr *object)
{
	t_class *c = NULL;
	t_object *p = NULL;
	
	c = class_findbyname(jps_box, objectname);
	if (!c) {
		p = (t_object *)newinstance(objectname, 0, NULL);
		if (p) {
			c = class_findbyname(jps_box, objectname);
			freeobject(p);
			p = NULL;
		}
		else {
			error("jamoma: could not load extern (%s) within the core", objectname->s_name);
			return false;
		}
	}
	
	if (*object != NULL) { // if there was an object set previously, free it first...
		object_free(*object);
		*object = NULL;
	}
	
	*object = (t_object *)object_new_typed(CLASS_BOX, objectname, argc, argv);
	return true;
}

/** Convenient method to get the patcher easily */
ObjectPtr jamoma_patcher_get(ObjectPtr obj)
{
	ObjectPtr patcher = NULL;
	object_obex_lookup(obj, SymbolGen("#P"), &patcher);
	
	// If obj is in a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(obj, _sym_parentpatcher);
	}
	
	return patcher;
}

// Don't pass memory in for this function!  It will allocate what it needs
// -- then the caller is responsible for freeing
long jamoma_patcher_get_args(ObjectPtr patcher, AtomCount *argc, AtomPtr *argv)
{
	SymbolPtr	hierarchy = jamoma_patcher_get_hierarchy(patcher);
	ObjectPtr	box = object_attr_getobj(patcher, _sym_box);
	ObjectPtr	textfield = NULL;
	ObjectPtr	assoc = NULL;
	char		*text = NULL;
	unsigned    long	textlen = 0;
	method		m = NULL;
	long		index = -1;
	
	if (hierarchy == _sym_bpatcher)
		object_attr_getvalueof(box, SymbolGen("args"), argc, argv);
	
	else if (hierarchy == _sym_subpatcher) {
		textfield = object_attr_getobj(box, SymbolGen("textfield"));
		object_method(textfield, SymbolGen("gettextptr"), &text, &textlen);
		atom_setparse(argc, argv, text);
	}
	else if (hierarchy == gensym("poly")){
	
		object_method(patcher, gensym("getassoc"), &assoc);
		if (assoc) {

			object_attr_getvalueof(assoc, SymbolGen("args"), argc, argv);
			
			// for poly, return the index to edit an instance
			// according to the voice number of the poly~ 
			// (see in jamoma_patcher_get_name)
			m = zgetfn(assoc, gensym("getindex"));
			if(m)
				return index = (long)(*m)(assoc, patcher);
		}
	}
	else {
		*argc = 0;
		*argv = NULL;
	}
	
	return 0;
}

/** Get the hierarchy of the patcher : bpatcher, subpatcher or top level one*/
SymbolPtr jamoma_patcher_get_hierarchy(ObjectPtr patcher)
{
	ObjectPtr box = object_attr_getobj(patcher, _sym_box);
	SymbolPtr objclass = NULL;
	
	if (box)
		objclass = object_classname(box);
	
	if (objclass == _sym_bpatcher)
		return objclass;
	
	else if (objclass == _sym_newobj)
		return _sym_subpatcher;
	
	else {
		
		if(object_attr_getobj(patcher, _sym_parentpatcher)) // a real topmost patcher shouldn't have parent
		   return gensym("poly"); // poly case
		
		return _sym_topmost;
		
	}
}

/** Get the context from the upper jcom model|view in the patcher or from patcher's name */
void jamoma_patcher_get_context(ObjectPtr *patcher, TTSymbol& returnedContext)
{
	SymbolPtr	hierarchy, _sym_jcommodel, _sym_jcomview, _sym_context;
	ObjectPtr	obj, upperPatcher;
	TTBoolean	found = NO;
	
	// Look for jcom model|view in the patcher
	obj = object_attr_getobj(*patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	
	while (obj) {
		
		_sym_context = object_attr_getsym(obj, _sym_maxclass);
		
		if (_sym_context == _sym_jcommodel) {
			
			returnedContext = kTTSym_model;
			found = YES;
			break;
			
		} else if (_sym_context == _sym_jcomview) {
			
			returnedContext = kTTSym_view;
			found = YES;
			break;
		}

		obj = object_attr_getobj(obj, _sym_nextobject);
	}
	
	// if no context
	if (!found) {
		
		/*	to -- don't get the context from the filename anymore because it make two ways to set it...
		SymbolPtr  patcherName;
         
		// try to get it from the patcher name
		patcherName = object_attr_getsym(*patcher, _sym_filename);
		if (patcherName != _sym_nothing) {
			// Is there a ".model.maxpat" string in the patcher name ?
			if (strstr(patcherName->s_name, ".model.maxpat")) {
				returnedContext = kTTSym_model;
				return;
			}
			// Is there a ".view.maxpat" string in the patcher name ?
			else if (strstr(patcherName->s_name, ".view.maxpat")) {
				returnedContext = kTTSym_view;
				return;
			}
		}
		 */
		
		// in subpatcher look upper
		hierarchy = jamoma_patcher_get_hierarchy(*patcher);
		if (hierarchy == _sym_subpatcher || hierarchy == _sym_bpatcher || hierarchy == SymbolGen("poly")) {
			
			// get the patcher where is the patcher to look for the context one step upper
			upperPatcher = jamoma_patcher_get(*patcher);
			
			jamoma_patcher_get_context(&upperPatcher, returnedContext);
			
			// if the context is still NULL and there is a jcom model|view at this level
			// the default case would be to set it as a model patcher by default
			if (returnedContext == kTTSymEmpty && found)
				returnedContext = kTTSym_model;
			// keep the upperPatcher if no jcom model|view around
			// because it is where the context is defined
			else if (!found)
				*patcher = upperPatcher;
		}
		// default case : a patcher has no type
		else if (hierarchy == _sym_topmost)
			returnedContext = kTTSymEmpty;
	}
}

/** Get the class of the patcher from the file name (removing .model and .view convention name if they exist) */
void jamoma_patcher_get_class(ObjectPtr patcher, TTSymbol context, TTSymbol& returnedClass)
{
	SymbolPtr	patcherName, hierarchy;
	ObjectPtr	upperPatcher;
	TTString	s_toParse;
	TTStringIter begin, end;
	
	// extract class from the file name
	patcherName =  object_attr_getsym(patcher, _sym_filename);
	
	if (patcherName != _sym_nothing) {
		
		s_toParse = patcherName->s_name;
	
		begin = s_toParse.begin();
		end = s_toParse.end();

		// parse jmod.
		if (!ttRegexForJmod->parse(begin, end)) {
			
			object_error(patcher, "jmod. prefix in %s is a 0.5 convention. Please use .module suffix instead", patcherName->s_name);
			
			s_toParse = TTString(ttRegexForJmod->end(), end);
			begin = s_toParse.begin();
			end = s_toParse.end();
		} 
		// parse jcom.
		else if (!ttRegexForJcom->parse(begin, end)) {
			
			s_toParse = TTString(ttRegexForJcom->end(), end);
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		
		// parse .module or if not parse context (model or view)
		if (!ttRegexForModule->parse(begin, end)) {
			s_toParse = TTString(begin, ttRegexForModule->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		else if (context == kTTSym_model) {
			
			if (!ttRegexForModel->parse(begin, end)) {
				s_toParse = TTString(begin, ttRegexForModel->begin());
				begin = s_toParse.begin();
				end = s_toParse.end();
			}
		}
		else if (context == kTTSym_view) {
			
			if (!ttRegexForView->parse(begin, end)) {
				s_toParse = TTString(begin, ttRegexForView->begin());
				begin = s_toParse.begin();
				end = s_toParse.end();
			}
		}
		
		// parse .maxpat
		if (!ttRegexForMaxpat->parse(begin, end)) {
			s_toParse = TTString(begin, ttRegexForMaxpat->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
		}
		// parse .maxhelp
		else if (!ttRegexForMaxhelp->parse(begin, end)) {
			s_toParse = TTString(begin, ttRegexForMaxhelp->begin());
			begin = s_toParse.begin();
			end = s_toParse.end();
            
            // append Maxhelp to the class to clarify the namespace
            s_toParse += "Maxhelp";
		}
		
		returnedClass = TTSymbol(s_toParse);	// TODO : replace each "." by the Uppercase of the letter after the "."
	}
	else {
		
		// in subpatcher look upper
		hierarchy = jamoma_patcher_get_hierarchy(patcher);
		if (hierarchy == _sym_subpatcher || hierarchy == _sym_bpatcher) {
			
			// get the patcher where is the patcher to look for the class one step upper
			upperPatcher = jamoma_patcher_get(patcher);
			
			jamoma_patcher_get_class(upperPatcher, context, returnedClass);
		}
		// default case : a patcher has no class
		else if (hierarchy == _sym_topmost)
			returnedClass = kTTSymEmpty;
	}
}

/** Get the name of the patcher from his arguments */
void jamoma_patcher_get_name(ObjectPtr patcher, TTSymbol context, TTSymbol& returnedName)
{
	AtomCount		ac = 0;
	AtomPtr			av = NULL;
	SymbolPtr		hierarchy, argName = _sym_nothing;
	TTString		voiceFormat;
	long			index;
	
	returnedName = kTTSymEmpty;
	
	// try to get context name from the patcher arguments
	hierarchy = jamoma_patcher_get_hierarchy(patcher);
	index = jamoma_patcher_get_args(patcher, &ac, &av);
	
	// ignore the first argument for subpatcher
	if (hierarchy == _sym_subpatcher) {
		av++;
		ac--;
	}
	
	if (ac && av) {
        
        // notice we have to test view case before model case 
        // because a jcom.view can be in subpatcher too
        
        // for view : the second argument is the name
		// (the first is reserved for the /model/address)
        if (context == kTTSym_view) {
            if (ac > 1)
                argName = atom_getsym(av+1);
		
		// for model : the first argument is the name
		} else if (context == kTTSym_model || hierarchy == _sym_subpatcher)
			argName = atom_getsym(av);
		
		// if the argname begin by a @ ignore it
		if (argName->s_name[0] == '@')
			argName = _sym_nothing;
		
		if (argName != _sym_nothing) {
			
			// in poly case, the index is used to edit an instance
			// according to the voice number of the poly~ 
			// (see in jamoma_patcher_get_args)
			if (index) {
				voiceFormat = argName->s_name;
				voiceFormat += ".%d";
				jamoma_edit_numeric_instance(voiceFormat, &argName, index);
			}
			
			returnedName = TTSymbol(jamoma_parse_dieze(patcher, argName)->s_name);
		}
	}
}

/** Get all context info from the root jcom model|view in the patcher */
void jamoma_patcher_share_info(ObjectPtr patcher, ObjectPtr *returnedPatcher, TTSymbol& returnedContext, TTSymbol& returnedClass,  TTSymbol& returnedName)
{
	TTValue		patcherInfo;
	ObjectPtr	obj;
	SymbolPtr	_sym_jcommodel, _sym_jcomview, _sym_jcomcontext, _sym_share;
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	_sym_share = gensym("share_patcher_info");
	while (obj) {
		_sym_jcomcontext = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_jcomcontext == _sym_jcommodel || _sym_jcomcontext == _sym_jcomview) {
		
			// ask it patcher info
			object_method(object_attr_getobj(obj, _sym_object), _sym_share, &patcherInfo);
			
			if (patcherInfo.size() == 4) {
				*returnedPatcher = ObjectPtr((TTPtr)patcherInfo[0]);
				returnedContext = patcherInfo[1];
				returnedClass = patcherInfo[2];
                returnedName = patcherInfo[3];
				break;
			}
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get the "aClass.model" external in the patcher */
void jamoma_patcher_get_model_patcher(ObjectPtr patcher, TTSymbol modelClass, ObjectPtr *returnedModelPatcher)
{
	ObjectPtr	obj;
	SymbolPtr	_sym_modelfilename, _sym_objmaxclass, _sym_objfilename;
	
	jamoma_edit_filename(*ModelPatcherFormat, modelClass, &_sym_modelfilename);
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	*returnedModelPatcher = NULL;
	
	while (obj) {
		
		// look for jpatcher
		_sym_objmaxclass = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_objmaxclass == _sym_jpatcher) {
			
			// look for _sym_modelfilename
			_sym_objfilename = object_attr_getsym(obj, _sym_filename);
			if (_sym_objfilename == _sym_modelfilename) {
			
				*returnedModelPatcher = object_attr_getobj(obj, _sym_object);
				break;
			}
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get patcher's node from the root jcom model|view in the patcher */
void jamoma_patcher_share_node(ObjectPtr patcher, TTNodePtr *patcherNode)
{
	ObjectPtr	obj;
	SymbolPtr	_sym_jcommodel, _sym_jcomview, _sym_jcomcontext, _sym_share;
	
	*patcherNode = NULL;
	
	obj = object_attr_getobj(patcher, _sym_firstobject);
	
	// TODO : cache those t_symbol else where ...
	_sym_jcommodel = gensym("jcom.model");
	_sym_jcomview = gensym("jcom.view");
	_sym_share = gensym("share_patcher_node");
	while (obj) {
		_sym_jcomcontext = object_attr_getsym(obj, _sym_maxclass);
		if (_sym_jcomcontext == _sym_jcommodel || _sym_jcomcontext == _sym_jcomview) {
			
			// ask it patcher info
			object_method(object_attr_getobj(obj, _sym_object), _sym_share, patcherNode);
			
			if (*patcherNode)
				break;
		}
		obj = object_attr_getobj(obj, _sym_nextobject);
	}
}

/** Get all context info from an object (his patcher and the context, the class and the name of his patcher) */
TTErr jamoma_patcher_get_info(ObjectPtr obj, ObjectPtr *returnedPatcher, TTSymbol& returnedContext, TTSymbol& returnedClass, TTSymbol& returnedName)
{
	TTBoolean	canShare;
	SymbolPtr	_sym_jcomcontext;
	TTString	viewName;
	ObjectPtr	patcher;
	ObjectPtr	sharedPatcher = NULL;
	TTSymbol	sharedContext;
	TTSymbol	sharedClass;
	TTSymbol	sharedName;
	
	*returnedPatcher = jamoma_patcher_get(obj);

	_sym_jcomcontext = object_classname(obj);
	canShare = _sym_jcomcontext == gensym("jcom.model") || _sym_jcomcontext == gensym("jcom.view");
	
	patcher = *returnedPatcher;

	// Get the context, the class and the name of the patcher
	if (*returnedPatcher) {
		
		// try to get them from a jcom model|view around to go faster (except for jcom model|view of course)
		if (!canShare) {
			
			jamoma_patcher_share_info(*returnedPatcher, &sharedPatcher, sharedContext, sharedClass, sharedName);
			
			if (sharedPatcher && sharedContext && sharedClass && sharedName) {

				*returnedPatcher = sharedPatcher;
				returnedContext = sharedContext;
				returnedClass = sharedClass;
				returnedName = sharedName;
				return kTTErrNone;
			}
		}
		
		// get the context looking for a jcom model|view in the patcher
		// it will also return a patcher above where a jcom model|view has been found
		jamoma_patcher_get_context(returnedPatcher, returnedContext);
		
		// if still no context : stop the subscription process
		if (returnedContext == kTTSymEmpty) {
            
			returnedName = S_SEPARATOR;
            returnedClass = kTTSymEmpty;
            
			// can't find any jcom model|view with a correct context attribute in the patcher
			// so this means the object have to be registered under the root
			return kTTErrGeneric;
		}
		
		// get the class from the patcher filename
		jamoma_patcher_get_class(*returnedPatcher, returnedContext, returnedClass);
		
		// if no class : set it as "Untitled" to continue the process
		if (returnedClass == kTTSymEmpty)
			returnedClass = TTSymbol("Untitled");
		
		// for jcom model|view object, use the patcher where it is to get the name
		if (canShare)
			jamoma_patcher_get_name(patcher, returnedContext, returnedName);
		// else get the name from the argument of the patcher
		else
			jamoma_patcher_get_name(*returnedPatcher, returnedContext, returnedName);
		
		// if no name
		if (returnedName == kTTSymEmpty) {
			
			// for model : used "class"
			if (returnedContext == kTTSym_model)
				returnedName = returnedClass;
			
			// for view : used "class(view)"
			else if (returnedContext == kTTSym_view) {
				viewName = returnedClass.c_str();
				viewName += "(view)";
				returnedName = TTSymbol(viewName.data());
			}
		}
	}
		// if no patcher : stop the subscription process
	else {
		object_error(obj, "Can't get the patcher. Subscription failed");
		return kTTErrGeneric;
	}

	return kTTErrNone;
}

/** returned the N inside "pp/xx.[N]/yyy" and a format string as "pp/xx.%d/yy" and a format string as "pp/xx.%s/yy" */
TTUInt32 jamoma_parse_bracket(SymbolPtr s, TTString& si_format, TTString& ss_format)
{
	long		number = 0;
	TTString	s_toParse = s->s_name;
	TTString	s_number;
	TTString	s_before;
	TTString	s_after;
	TTStringIter begin, end;
	TTStringIter beginNumber, endNumber;
	
	begin = s_toParse.begin();
	end = s_toParse.end();
	
	// parse braket
	if (!ttRegexForBracket->parse(begin, end))
	{
		beginNumber = ttRegexForBracket->begin();
		endNumber = ttRegexForBracket->end();
		
		s_before = TTString(begin, ttRegexForBracket->begin()-1);
		s_number = TTString(ttRegexForBracket->begin(), ttRegexForBracket->end());
		s_after = TTString(ttRegexForBracket->end()+1, end);
		
		sscanf(s_number.c_str(), "%ld", &number);
		
		si_format = s_before;
		si_format += "%d";
		si_format += s_after;
		
		ss_format = s_before;
		ss_format += "%s";
		ss_format += s_after;
	}
	else {
		si_format = "";
		ss_format = "";
	}
	
	return number;
}

/** edit a new instance of the given format address using interger */
void jamoma_edit_numeric_instance(TTString format, SymbolPtr *returnedName, long i)
{
	char *s_num;
	TTInt32 len;
	
	if (i > 0) {
		len = format.size() + (TTInt32)log10((TTFloat32)i); // note : %d (lenght = 2) is replaced by 1 character (0::9), 2 charecters (10 :: 99), 3 char...
		s_num = (char *)malloc(sizeof(char)*len);
		snprintf(s_num, len, format.c_str(), i);
		*returnedName = gensym(s_num);
		free(s_num);
	}
}

/** edit a new instance of the given format address using string */
void jamoma_edit_string_instance(TTString format, SymbolPtr *returnedName, TTString s)
{
    char *s_str;
	long len;
    
	len = format.size() + s.size();
	s_str = (char *)malloc(sizeof(char)*len);
	snprintf(s_str, len, format.c_str(), s.c_str());
	*returnedName = gensym(s_str);
	free(s_str);
}

/** edit a file name from a given file format and a class name */
void jamoma_edit_filename(TTString format, TTSymbol className, SymbolPtr *returnedFileName)
{
	char *s_str;
	long len;
	
	len = format.size() + className.string().size();
	s_str = (char *)malloc(sizeof(char)*len);
	snprintf(s_str, len, format.c_str(), className.c_str());
	*returnedFileName = gensym(s_str);
	free(s_str);
}

/** Parse #N inside address and replace them by parent patcher arguments if there are */
SymbolPtr jamoma_parse_dieze(ObjectPtr x, SymbolPtr address)
{
	TTString	diezeStr, argsStr, addressStr = address->s_name;
	SymbolPtr	hierarchy;
	ObjectPtr	patcher  = jamoma_patcher_get(x);
    /* TODO : use a TTRegex for this parsing
	char		dieze[5];
	char		args[64];
	size_t		found = 0;
	long		i, sd, sa;
     */
    long		i;
	AtomCount	ac = 0;
	AtomPtr		av = NULL;
	
	// If x is in a bpatcher, the patcher is NULL
	if (!patcher){
		patcher = object_attr_getobj(x, _sym_parentpatcher);
	}
	
	if (patcher) {
		
		hierarchy = jamoma_patcher_get_hierarchy(patcher);
		
		// Try to get the patcher arguments
		jamoma_patcher_get_args(patcher, &ac, &av);
		if (hierarchy == _sym_subpatcher) {
			av++;
			ac--;
		}
		
		// if there are arguments
		if (ac > 0 && av) {
			
			i = 1;
			
			//object_post(x, "in jamoma_parse_dieze : TODO : use a TTRegex for this parsing");
			/* TODO : use a TTRegex for this parsing
			do {
				
				// prepare to parse #i
				snprintf(dieze, sizeof(dieze), "#%li", i);
				found = addressStr.find(dieze);
				
				// if #i found
				if (found != string::npos) {
					
					// get av+i atom
					if (i-1 < ac) {
						
						if (atom_gettype(av+i-1) == A_LONG)
							snprintf(args, sizeof(args), "%li", atom_getlong(av+i-1));
						else if (atom_gettype(av+i-1) == A_SYM)
							snprintf(args, sizeof(args), "%s", atom_getsym(av+i-1)->s_name);
						else {
							i++;
							continue;
						}
						
						diezeStr = dieze;
						argsStr	= args;
						sd = diezeStr.size();
						sa = argsStr.size();
						addressStr.replace(found, sd, args, sa);
					}
				}
				i++;
				
			} while (i-1 < ac); // while there are argument
			 */
			
			return gensym((char*)addressStr.data());
		}
	}
	
	return address;
}


// Files
///////////////////////////////////////////////


/** Get BOOT style filepath from args or, if no args open a dialog to write a file */
TTSymbol jamoma_file_write(ObjectPtr x, AtomCount argc, AtomPtr argv, char* default_filename)
{
	char 			fullpath[MAX_PATH_CHARS];		// for storing the absolute path of the file
	short 			err, path;						// pathID#, error number
	t_filehandle	file_handle;					// a reference to our file (for opening it, closing it, etc.)
	long			filetype = 'TEXT', outtype;		// the file type that is actually true
	SymbolPtr		userpath;
	TTSymbol		result = kTTSymEmpty;
	
	// Give a path ...
	if (argc && argv) {
		if (atom_gettype(argv) == A_SYM) {
			userpath = atom_getsym(argv);
			
			if (userpath != _sym_nothing && userpath != _sym_bang) {
				// Use BOOT style path
				path = 0;
				path_nameconform(userpath->s_name, fullpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);// Copy symbol argument to a local string
				
				// Create a file using Max API
				path_createsysfile(fullpath, path, filetype, &file_handle);
				
				result = TTSymbol(fullpath);
			}
		}
	} 
	
	// ... or open a dialog
	if (result == kTTSymEmpty) {
		
		saveas_promptset("Save Preset...");												// Instructional Text in the dialog
		err = saveasdialog_extended(default_filename, &path, &outtype, &filetype, 1);	// Returns 0 if successful
		if (!err) { // User Cancelled
			char posixpath[MAX_PATH_CHARS];
			
			// Create a file using Max API
			path_createsysfile(default_filename, path, filetype, &file_handle);
			
			// Use BOOT style path
			path_topathname(path, default_filename, fullpath);
			path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
			
			result = TTSymbol(posixpath);
		}
	}
	
	return result;
}

/** Get BOOT style filepath grom args or, if no args open a dialog to read a file */
TTSymbol jamoma_file_read(ObjectPtr x, AtomCount argc, AtomPtr argv, long filetype)
{
	char 			filepath[MAX_FILENAME_CHARS];	// for storing the name of the file locally
	char 			fullpath[MAX_PATH_CHARS];		// path and name passed on to the xml parser
	short 			path;							// pathID#
	long			outtype;
	SymbolPtr		userpath;
	TTSymbol		result = kTTSymEmpty;
	
	// Give a path ...
	if (argc && argv) {
		if (atom_gettype(argv) == A_SYM) {
			userpath = atom_getsym(argv);
			
			if (userpath != _sym_nothing && userpath != _sym_bang) {
				// Use BOOT style path
				path = 0;
				path_nameconform(userpath->s_name, fullpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);// Copy symbol argument to a local string
				
				result = TTSymbol(fullpath);
			}
		}
	}
	
	// ... or open a dialog
	if (result == kTTSymEmpty)
		if (!open_dialog(filepath, &path, &outtype, &filetype, 1)) {	// Returns 0 if successful
			char posixpath[MAX_PATH_CHARS];
			
			path_topathname(path, filepath, fullpath);
			path_nameconform(fullpath, posixpath, PATH_STYLE_NATIVE, PATH_TYPE_BOOT);
			result = TTSymbol(posixpath);
		}
	
	return result;
}

