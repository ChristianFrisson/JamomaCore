/* 
 * Jamoma FunctionLib: LinearFunction
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __POWERFUNCTION_H__
#define __POWERFUNCTION_H__

#include "FunctionLib.h"


/****************************************************************************************************/
// Class Specification


// Specification of our base class
class PowerFunction : FunctionLib{
	public:
		PowerFunction();					///< constructor
		~PowerFunction();					///< destructor - free memory, etc.
		
		// ATTRIBUTES
		double mapValue(double x);			///< map x to y
		// double lookupValue(double x);	///< map x to y using lookup table

		JamomaError setParameter(t_symbol *parameterName, double value);
		JamomaError getParameter(t_symbol *parameterName, double &value);
		
	private:
		
		double powerValue;					///< Parameter for function: y pow(x,pow(2,powerValue))	
		double k;							///< k = pow(2,powerValue)	
};


#endif // __POWERFUNCTION_H__
