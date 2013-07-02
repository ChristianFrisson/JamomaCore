/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief TTModular Library
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright Copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTModular.h"
#include "TTInput.h"
#include "TTInputAudio.h"
#include "TTOutput.h"
#include "TTOutputAudio.h"

// file system needed to retreive the path of JamomaModular.dylib
#ifdef TT_PLATFORM_MAC
#include <dlfcn.h>
#include <sys/types.h>
#include <dirent.h>
#elif TT_PLATFORM_LINUX
#include <dlfcn.h>
#elif TT_PLATFORM_WIN
#include <ShlObj.h>
#endif

// Statics and Globals
static bool TTModularHasInitialized = false;

TTApplicationManagerPtr	TTModularApplications = NULL;

TTHashPtr TTModularNamespaces = NULL;

/****************************************************************************************************/

TTString TTModularInit()
{
    TTString    path;
    
	// Initialized Foundation framework
	TTFoundationInit();
    
//#define TO_DEBUG
#ifdef TO_DEBUG

	TTObjectBasePtr test = NULL;
	TTValue v;
    
	TTObjectBaseInstantiate(TTSymbol("dictionary.test"), TTObjectBaseHandle(&test), kTTValNONE);
	test->sendMessage("test", v, kTTValNONE);

#endif // TO_DEBUG
	
	if (!TTModularHasInitialized) {
		
		TTModularHasInitialized = true;
		
		// register classes -- both internal and external
		TTApplication::registerClass();
		TTApplicationManager::registerClass();
		TTContainer::registerClass();
		TTCue::registerClass();
		TTCueManager::registerClass();
		TTData::registerClass();
		TTExplorer::registerClass();
		TTInput::registerClass();
		TTInputAudio::registerClass();
		TTMapper::registerClass();
		TTMapperManager::registerClass();
		TTMirror::registerClass();
		TTOutput::registerClass();
		TTOutputAudio::registerClass();
		TTPreset::registerClass();
		TTPresetManager::registerClass();
        TTRamp::registerClass();
		TTReceiver::registerClass();
		TTSender::registerClass();
		TTScript::registerClass();
		TTSubscriber::registerClass();
		TTTextHandler::registerClass();
		TTViewer::registerClass();
		TTXmlHandler::registerClass();
		
		//TTModularValueCacheInit();
		
		// to - this a very strange bug : the two first toString() parsing on number failed !?!
		// so here are two parsing to avoid this strange bug for instant ...
		TTString s;
		TTValue v;
		
		s = "0.001";
		v = s;
		v.fromString();
		
		v.clear();
		s = "1";
		v = s;
		v.fromString();
		
		// Create the Modular application manager with no application inside
		TTObjectBaseInstantiate(kTTSym_ApplicationManager, TTObjectBaseHandle(&TTModularApplications), kTTValNONE);
		
		// Create a hash table to manage namespace selections
		TTModularNamespaces = new TTHash();
		
#ifdef TT_DEBUG
		TTLogMessage("Modular -- Version %s -- Debugging Enabled\n", TTMODULAR_VERSION_STRING);
#else
		TTLogMessage("Modular -- Version %s\n", TTMODULAR_VERSION_STRING);
#endif
        
        
        // Return where is the JamomaModular.dylib
        // to : this could be return by the TTFoundationInit method (?)
        Dl_info     info;
        char		temp[4096];
        char*       c = 0;
        
        if (dladdr((const void*)TTModularInit, &info)) {
            
            // chop the "/JamomaModular.dylib off of the path
            strncpy(temp, info.dli_fname, 4096);
            c = strrchr(temp, '/');
            if (c)
                *c = 0;
            
            path = temp;
        }
	}
    
    return path;
}

void TTModularCreateLocalApplication(TTString applicationStr, TTString xmlConfigFilePath)
{
	TTValue				args;
	TTApplicationPtr	anApplication = NULL;
	
	if (TTModularApplications) {
		
		// if the local application doesn't exist yet
		if (!getLocalApplication) {
			
			// create the application
			args = TTValue(TTSymbol(applicationStr));
			TTObjectBaseInstantiate(kTTSym_Application, TTObjectBaseHandle(&anApplication), args);
			
			// set it as local application
			args = TTValue(anApplication);
			TTModularApplications->setAttributeValue(TTSymbol("localApplication"), args);
			
			// Read xml configuration file
			TTXmlHandlerPtr anXmlHandler = NULL;
			TTObjectBaseInstantiate(kTTSym_XmlHandler, TTObjectBaseHandle(&anXmlHandler), kTTValNONE);
			
			anXmlHandler->setAttributeValue(kTTSym_object, args);
			
			args = TTValue(TTSymbol(xmlConfigFilePath));
			anXmlHandler->sendMessage(kTTSym_Read, args, kTTValNONE);
		}
		else
			TTLogMessage("Modular -- \"%s\" application already exists", getLocalApplicationName.c_str());
	}
}

TTAddressItemPtr	TTModularNamespacesLookup(TTSymbol namespaceName)
{
	TTAddressItemPtr	aNamespace = NULL;
	TTValue				v;
	
	if (namespaceName != kTTSymEmpty && namespaceName != kTTSym_none) {
		
		if (!TTModularNamespaces->lookup(namespaceName, v))
			aNamespace = TTAddressItemPtr((TTPtr)v[0]);
		
		else {
			aNamespace = new TTAddressItem();
			
			v = TTValue((TTPtr)aNamespace);
			TTModularNamespaces->append(namespaceName, v);
		}
	}

	return aNamespace;
}

#ifdef TT_PLATFORM_LINUX
int main(void)
{
	// TODO: should we call TTModularInit() here?
	return 0;
}
#endif