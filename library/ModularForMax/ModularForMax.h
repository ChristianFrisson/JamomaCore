/* 
 * Jamoma Tree
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "Jamoma.h"
#include "TTNode.h"
#include "TTNodeDirectory.h"
#include "TTModular.h"
#include "TTSubscriber.h"

extern TTSymbolPtr			kTTSym_Jamoma;
extern TTApplicationPtr		JamomaApplication;

#ifdef __cplusplus
extern "C" {
#endif
	
	// Method to deal with the jamoma application
	/////////////////////////////////////////
	
	TTErr jamoma_application_dump_conversion(void);

	// Method to deal with the jamoma directory
	/////////////////////////////////////////

	/** Dump all the OSC address of the directory in the max window */
	TTErr			jamoma_directory_dump_observers(void);
	
	
	// Method to deal with TTSubscriber
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a subscriber object and register an object to the tree */
	TTErr			jamoma_subscriber_create(ObjectPtr x, TTObjectPtr aTTObject, SymbolPtr relativeAddress,  TTSymbolPtr contextType, TTSubscriberPtr *returnedSubscriber);
	
	/** Share the context node between subscribed object
		To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_share_context_node(TTPtr p_baton, TTValue& data);
	
	/** Get the context list above a subscribed object
	 To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_get_context_list(TTPtr p_baton, TTValue& data);
	
	/** Look recursively for every jmod.contextPatcher above an object in order to know his place in the tree
	 note : a contextPatcher is a patcher named [jmod.something otherName] 
	 return a <formatedContextName, patcher> list 
	 To understand how this method have to work see in TTSubscriber.h and .cpp */
	void			jamoma_subscriber_get_context_list_method(ObjectPtr z, TTSymbolPtr contextType, TTListPtr aContextList, long *nbLevel);
	
	
	// Method to deal with TTContainer
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a container object */
	TTErr			jamoma_container_create(ObjectPtr x, TTObjectPtr *returnedContainer);
	
	/**	Send Max data using a container object */
	TTErr			jamoma_container_send(TTContainerPtr aContainer, SymbolPtr relativeAddressAndAttribute, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTData
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a data object */
	TTErr			jamoma_data_create(ObjectPtr x, TTObjectPtr *returnedData, TTSymbolPtr service);
	
	/**	Send Max data command */
	TTErr			jamoma_data_command(TTDataPtr aData, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTSender
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a sender object */
	TTErr			jamoma_sender_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedSender);
	
	/**	Send Max data using a sender object */
	TTErr			jamoma_sender_send(TTSenderPtr aSender, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTReceiver
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a receiver object */
	TTErr			jamoma_receiver_create(ObjectPtr x, SymbolPtr addressAndAttribute, TTObjectPtr *returnedReceiver);
	
	
	// Method to deal with TTPresetManager
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a container object */
	TTErr			jamoma_presetManager_create(ObjectPtr x, TTObjectPtr *returnedPresetManager);
	
	/** Return kTTErrNone if the node have to be part of a preset */
	void			jamoma_presetManager_test_object_callback(TTPtr p_baton, TTValue& data);
	
	
	// Method to deal with TTInput
	///////////////////////////////////////////////////////////////////////
	
	/**	Create an input object for signal */
	TTErr			jamoma_input_create(ObjectPtr x, TTObjectPtr *returnedInput, long number);
	
	/**	Create an input object for audio signal */
	TTErr			jamoma_input_create_audio(ObjectPtr x, TTObjectPtr *returnedInput, long number);
	
	/**	Send any signal to an input object */
	TTErr			jamoma_input_send(TTInputPtr anInput, SymbolPtr msg, AtomCount argc, AtomPtr argv);

	
	// Method to deal with TTOutput
	///////////////////////////////////////////////////////////////////////
	
	/**	Create an output object for signal */
	TTErr			jamoma_output_create(ObjectPtr x, TTObjectPtr *returnedOutput, long number);
	
	/**	Create an output object for audio signal */
	TTErr			jamoma_output_create_audio(ObjectPtr x, TTObjectPtr *returnedOutput, long number);
	
	/**	Send any signal to an output object */
	TTErr			jamoma_output_send(TTOutputPtr anOutput, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	
	// Method to deal with TTMapper
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a mapper object */
	TTErr			jamoma_mapper_create(ObjectPtr x, TTObjectPtr *returnedMapper);
	
	
	// Method to deal with TTViewer
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a viewer object */
	TTErr			jamoma_viewer_create(ObjectPtr x, TTObjectPtr *returnedViewer);

	
	// Method to deal with TTExplorer
	///////////////////////////////////////////////////////////////////////
	
	/**	Create an explorer object */
	TTErr			jamoma_explorer_create(ObjectPtr x, TTObjectPtr *returnedExplorer);

	
	// Method to deal with TTDeviceManager
	///////////////////////////////////////////////////////////////////////
	
	/**	Create a deviceManager object */
	TTErr			jamoma_deviceManager_create(ObjectPtr x, SymbolPtr name, TTObjectPtr *returnedDeviceManager);
	
	
	// Method to return data
	///////////////////////////////////////////////////////////////////////
	
	/** Return an address to a jcom. external */
	void			jamoma_callback_return_address(TTPtr baton, TTValue& data);
	
	/** Return the value to a jcom. external */
	void			jamoma_callback_return_value(TTPtr baton, TTValue& data);
	
	/** Return any signal */
	void			jamoma_callback_return_signal(TTPtr baton, TTValue& data);
	
	/** Return audio signal */
	void			jamoma_callback_return_signal_audio(TTPtr baton, TTValue& data);
	
	
	// Tools
	///////////////////////////////////////////////
	
	/** Make a Atom array from a TTValue (!!! this method allocate memory for the Atom array ! free it after ! */
	void			jamoma_ttvalue_to_Atom(const TTValue& v, SymbolPtr *msg, AtomCount *argc, AtomPtr *argv);
	
	/** Make a TTValue from Atom array */
	void			jamoma_ttvalue_from_Atom(TTValue& v, SymbolPtr msg, AtomCount argc, AtomPtr argv);
	
	/** Convert a TTSymbolPtr "MyObjectMessage" into a SymbolPtr "my/object/message" 
		or return NULL if the TTSymbolPtr doesn't begin by an uppercase letter */
	SymbolPtr		jamoma_TTName_To_MaxName(TTSymbolPtr TTName);
	
	/** Get the Context Node relative to a jcom.external  if it is possible (else return the root)
		This method have to be defered low while the Context is not registered in the namespace.
		see jcom.init to get an example */
	TTNodePtr		jamoma_context_get_node(ObjectPtr x, TTSymbolPtr contextType);
	
	/** Get the context type and class from a jcom.external looking at the patcher */
	void			jamoma_patcher_type_and_class(ObjectPtr z, TTSymbolPtr *returnedContextType, TTSymbolPtr *returnedClass);
	
	/** returned the N inside "pp/xx[N]/yyy" and a format string as "pp/xx.%d/yy" and a format string as "pp/xx.%s/yy" */
	long			jamoma_parse_bracket(t_symbol *s, char **si_format, char **ss_format);
	
	/** edit a new instance of the given format address using interger */
	void			jamoma_edit_numeric_instance(char* format, t_symbol **returnedName, long i);
	
	/** edit a new instance of the given format address using string */
	void			jamoma_edit_string_instance(char* format, t_symbol **returnedName,  char* s);
	
#ifdef __cplusplus
}
#endif



