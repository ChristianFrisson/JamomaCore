/* 
 * TTModular Library
 * Copyright © 2010, Théo de la Hogue
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModular.h"

// Statics and Globals
static bool TTModularHasInitialized = false;

TTHashPtr	TTModularApplications = NULL;

void		TTModularRegisterInternalClasses();


/****************************************************************************************************/

void TTModularInit(TTString applicationStr)
{
	TTValue				v;
	TTSymbolPtr			applicationName;
	TTApplicationPtr	anApplication;
	
	// Initialized Foundation framework
	TTFoundationInit();
	
	applicationName = TT(applicationStr.data());
	
	if (!TTModularHasInitialized) {
		
		TTModularHasInitialized = true;
		
		// register classes -- both internal and external
		TTApplication::registerClass();
		TTContainer::registerClass();
		TTData::registerClass();
		TTDeviceManager::registerClass();
		TTExplorer::registerClass();
		TTInput::registerClass();
		TTMapper::registerClass();
		TTMapperManager::registerClass();
		TTOutput::registerClass();
		TTPreset::registerClass();
		TTPresetManager::registerClass();
		TTReceiver::registerClass();
		TTSender::registerClass();
		TTSubscriber::registerClass();
		TTTextHandler::registerClass();
		TTViewer::registerClass();
		TTXmlHandler::registerClass();
		
		TTModularRegisterInternalClasses();
				
		// TODO: someday implement these so that we have project-scoped caches and don't stuff everything into the foundation?
		TTModularSymbolCacheInit();
		//TTModularValueCacheInit();
		
		// Create a hash table to store each Modular application
		TTModularApplications = new TTHash();
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif

	}
	
	// if this application doesn't exist yet
	if (TTModularApplications)
		if (TTModularApplications->lookup(applicationName, v)) {
			
			// Create the application giving a name and the version
			v = TTValue(applicationName);
			v.append(TT(TTMODULAR_VERSION_STRING));
			anApplication = NULL;
			TTObjectInstantiate(TT("Application"), TTObjectHandle(&anApplication), v);
			
			// Store it in the TTModularApplications hash table
			TTModularApplications->append(applicationName, TTPtr(anApplication));
		}
		else
			TTLogMessage("Modular -- \"%s\" application already exists", applicationName->getCString()); 
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif


/****************************************************************************************************/

// Core

void TTModularRegisterInternalClasses()
{
}

/****************************************************************************************************/

TTObjectPtr TTModularGetApplication(TTSymbolPtr applicationName)
{
	TTValue v;
	TTApplicationPtr anApplication;
	
	if (!TTModularApplications->lookup(applicationName, v)) {
		v.get(0, (TTPtr*)&anApplication);
		return anApplication;
	}
	
	return NULL;
}
