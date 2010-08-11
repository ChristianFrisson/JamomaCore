/* 
 * Jamoma DataspaceLib: TemperatureDataspace
 * Copyright © 2007
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TEMPERATUREDATASPACE_H__
#define __TEMPERATUREDATASPACE_H__

#include "DataspaceLib.h"


/****************************************************************************************************/
// Class Specifications

class CelsiusUnit : DataspaceUnit{
	public:
		CelsiusUnit();
		~CelsiusUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class FahrenheitUnit : DataspaceUnit{
	public:
		FahrenheitUnit();
		~FahrenheitUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};

class KelvinUnit : DataspaceUnit{
	public:
		KelvinUnit();
		~KelvinUnit();
		
		void convertToNeutral(const TTValue& inValue, TTValue& neutralValue);
		void convertFromNeutral(TTValue& neutralValue, TTValue& outValue);
};


// Specification of our base class
class TemperatureDataspace : DataspaceLib{
	public:
		TemperatureDataspace();
		~TemperatureDataspace();
};


#endif // __TEMPERATUREDATASPACE_H__
