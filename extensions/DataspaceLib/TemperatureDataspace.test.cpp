/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TemperatureDataspace.h"

TTErr TemperatureDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to temperature
    TTObjectPtr         myDataspace;
    TTErr err;
    err = TTObjectInstantiate(TT("dataspace"), (TTObjectPtr*)&myDataspace, kTTValNONE);
	myDataspace->setAttributeValue(TT("dataspace"), TT("temperature"));
    
    TTValue v;
    TTValue expected;
    
        
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // Kelvin => Kelvin
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Kelvin"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Kelvin"));    

    v = TTValue(256.);
    expected = TTValue(256.);
    
    myDataspace->sendMessage(TT("convert"), v);
        
    TTTestAssertion("Kelvin to Kelvin", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    
    
    // Celsius => Kelvin
    // Expected value according to Google search: "0 Celsius to Kelvin"
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Celsius"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Kelvin"));
    
    v = TTValue(0.);
    expected = TTValue(273.15);
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("Celsius to Kelvin", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Fahrenheit => Kelvin
    // Expected value according to Google search: "32 Farhenheit to Kelvin"
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Fahrenheit"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Kelvin"));    
    
    v = TTValue(32.);
    expected = TTValue(273.15);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Fahrenheit to Kelvin", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);

    
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
       
    // Kelvin => Celsius
    // Expected value according to Google search: "0 Celsius to Kelvin"
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Kelvin"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Celsius"));
    
    v = TTValue(273.15);
    expected = TTValue(0.0);
    
    myDataspace->sendMessage(TT("convert"), v);
    
    TTTestAssertion("Kelvin to Celsius", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    // Fahrenheit => Kelvin
    // Expected value according to Google search: "32 Farhenheit to Kelvin"
    
    myDataspace->setAttributeValue(TT("inputUnit"), TT("Kelvin"));
    myDataspace->setAttributeValue(TT("outputUnit"), TT("Fahrenheit"));    
    
    v = TTValue(273.15);
    expected = TTValue(32.0);
    
    myDataspace->sendMessage(TT("convert"), v);    
    
    TTTestAssertion("Kelvin to Fahrenheit", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
