/** @file
 *
 * @brief Unit tests for the #TTMuteSolo object.
 *
 * @authors Trond Lossius
 *
 * @copyright Copyright © 2013, Tropnd Lossius @n
 * License: This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMuteSolo.h"


TTErr TTMuteSolo::test(TTValue& returnedTestInfo)
{
	// Preliminary setup
	
	int	errorCount = 0;
	int testAssertionCount = 0;
	
	TTTestLog("Testing Parameter value conversions");
	
	// Wrap up the test results to pass back to whoever called this test
	return TTTestFinish(testAssertionCount, errorCount, returnedTestInfo);
}
