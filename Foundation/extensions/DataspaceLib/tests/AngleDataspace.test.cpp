/* 
 * Jamoma DataspaceLib: AngleDataspace unit test
 * Copyright © 2011 Trond Lossius
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "AngleDataspace.h"


TTErr AngleDataspace::test(TTValue& returnedTestInfo)
{
    int					errorCount = 0;
	int					testAssertionCount = 0;
    
    // Create dataspace object and set to angle
    TTObject         myDataspace("dataspace");
	
	myDataspace.set(TT("dataspace"), TT("angle"));
    
    TTValue v;
    TTValue expected;
    
    
    /************************************************/
    /*                                              */
    /* Test conversions to neutral unit             */
    /*                                              */
    /************************************************/
    
    
    // Radian => Radian
    
    myDataspace.set(TT("inputUnit"), TT("radian"));
    myDataspace.set(TT("outputUnit"), TT("radian"));
    
    v = TTValue(kTTPi);
    expected = TTValue(kTTPi);
    
    myDataspace.send(TT("convert"), v, v);
    
    TTTestAssertion("Radian to Radian", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    
    // Degree => Radian
    
    myDataspace.set(TT("inputUnit"), TT("degree"));
    myDataspace.set(TT("outputUnit"), TT("radian"));
    
    v = TTValue(180.);
    expected = TTValue(kTTPi);
    
    myDataspace.send(TT("convert"), v, v);
    
    TTTestAssertion("Degree to Radian", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    /************************************************/
    /*                                              */
    /* Test conversions from neutral unit           */
    /*                                              */
    /************************************************/
    
    // Radian => Degree
    // Expected value according to Google search: "0 Celsius to Kelvin"
    
    myDataspace.set(TT("inputUnit"), TT("radian"));
    myDataspace.set(TT("outputUnit"), TT("degree"));
    
    v = TTValue(kTTPi);
    expected = TTValue(180.0);
    
    myDataspace.send(TT("convert"), v, v);
    
    TTTestAssertion("Radian to Degree", 
					TTTestFloatEquivalence(TTFloat64(v), TTFloat64(expected)),
					testAssertionCount, 
					errorCount);
    
    
    return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
