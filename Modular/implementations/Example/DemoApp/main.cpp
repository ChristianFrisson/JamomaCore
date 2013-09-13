#include "TTModular.h"

#include <iostream>
using namespace std;

#define APP_NAME		"DemoApp"

static TTApplicationPtr	mDemoApp = NULL;
static TTSymbol			kTTSym_DemoApp;

void	init();
//TTErr	instantiate_Data(TTDataPtr *returnedData);
//void	myData_return_value_callback(TTPtr baton, TTValue& v);

int 
main(int argc, char **argv) 
{
	TTValue	v;
	
	// Initialize Jamoma environment
	/////////////////////////////////////////////////////////
	TTLogMessage("\n*** Starting my DemoApp application *** \n");
	
	init();

	//test();

	//createData();

	TTLogMessage("\n*** Ending my DemoApp application *** \n");

	return EXIT_SUCCESS;
}

void init()
{
    TTString JamomaConfigurationFilePath;
    TTValue  v, args;
    char     name[4096];
	
	// Init the Modular library
	TTModularInit();
    
    // Edit the path to the JamomaConfiguration.xml file
    strncpy_zero(name, TTFoundationBinaryPath.data(), TTFoundationBinaryPath.size()-6);
    JamomaConfigurationFilePath = name;
    JamomaConfigurationFilePath += "misc/JamomaConfiguration.xml";
    
    // Create a local application named DemoApp and get it
    TTModularCreateLocalApplication(APP_NAME, JamomaConfigurationFilePath);
    mDemoApp = getLocalApplication;
	kTTSym_DemoApp = TTSymbol(APP_NAME);
}

//void test()
//{
//	// TEST TTDictionary
//	TTDictionaryPtr aDictionary = new TTDictionary;
//	
//	aDictionary->setSchema(TTSymbol("aSchema"));
//	aDictionary->append(TTSymbol("name"), TTSymbol("toto"));
//	aDictionary->append(TTSymbol("type"), TTSymbol("gars"));
//	aDictionary->append(TTSymbol("tag"), TTSymbol("blague"));
//	 
//	// RUN TEST
//	TTObjectPtr testNodeLib = NULL;
//	TTValue	args;
//	TTObjectInstantiate(TTSymbol("nodelib.test"), &testNodeLib, args);
//	
//	testNodeLib->sendMessage(TTSymbol("test"), args);
//}
//
//void createData()
//{
//	// Create a TTData object an use it
//	/////////////////////////////////////////////////////////
//	TTLogMessage("\n*** Instantiate myData as a TTData object ***\n");
//	
//	TTDataPtr myData = NULL;
//	
//	instantiate_Data(&myData);
//
//	// set TTData object attributes
//	myData->setAttributeValue(kTTSym_type, kTTSym_decimal);
//	myData->setAttributeValue(kTTSym_valueDefault, 0);
//	myData->setAttributeValue(kTTSym_description, TTSymbol("a data for the demo"));
//
//	
//	// Register a TTObject into the DemoApp directory
//	/////////////////////////////////////////////////////////
//	TTLogMessage("\n*** Register myData into the DemoApp directory ***\n");
//	TTNodePtr		returnedNode;
//	TTBoolean		newInstanceCreated;
//
//	getDirectoryFrom(kTTAdrsRoot)->TTNodeCreate(TTADRS("/mydata"), myData, NULL, &returnedNode, &newInstanceCreated);
//
//	// 
//	// Use a TTData object
//	/////////////////////////////////////////////////////////
//
//	
//	// set the value
//	do {
//		TTString s;
//		
//		cout << "Set /myData value : ";
//		cin >> s;
//		
//		if (s == "exit")
//			break;
//		
//		v.clear();
//		v = s;
//		v.fromString();
//		myData->sendMessage(kTTSym_Command, v);
//	} while (true);
//
//
//	// Delete every TTObject and TTValuePtr
//	//////////////////////////////////////////////////////////////////
//	TTObjectRelease(TTObjectHandle(&myData));
//
//}
//
//TTErr instantiate_Data(TTDataPtr *returnedData)
//{
//	TTValue			args;
//	TTCallbackPtr	p_returnValueCallback = NULL;
//	TTValuePtr		p_returnValueBaton;
//	
//	// prepare arguments : see TTData.h to know which args are needed
//	TTObjectInstantiate(TTSymbol("callback"), TTObjectHandle(&p_returnValueCallback), kTTValNONE);
//	p_returnValueBaton = new TTValue(NULL);
//	p_returnValueCallback->setAttributeValue(TTSymbol("baton"), TTPtr(p_returnValueBaton));
//	p_returnValueCallback->setAttributeValue(TTSymbol("function"), TTPtr(myData_return_value_callback));
//	args.append(p_returnValueCallback);
//	
//	// create an instance of a TTData object
//	return TTObjectInstantiate(TTSymbol("Data"), TTObjectHandle(returnedData), args);
//}
//
//void myData_return_value_callback(TTPtr baton, TTValue& v)
//{
//	TTValuePtr	b;
//	TTPtr		x;
//	TTString	s;	
//
//	// unpack baton
//	b = (TTValuePtr)baton;
//	b->get(0, (TTPtr*)&x);
//
//	// print the returned value
//	v.toString();
//	v.get(0, s);
//	TTLogMessage("myData has been updated to %s \n", s.data());
//}