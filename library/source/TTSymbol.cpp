/* 
 * TTBlue Class for representing Symbols
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTSymbol.h"
#include "TTSymbolTable.h"


/****************************************************************************************************/

TTSymbol::TTSymbol(const TTString& newString, TTInt32 newId)
{
	init(newString, newId);
}


TTSymbol::~TTSymbol()
{
	;
}


// Copy Constructor
TTSymbol::TTSymbol(const TTSymbol& oldSymbol)
{
	id = oldSymbol.id;
	theString = oldSymbol.theString;
}


void TTSymbol::init(const TTString& newString, TTInt32 newId)
{
	theString = newString;
	id = newId;
}


const TTString TTSymbol::getString()
{
	return theString;
}


const char* TTSymbol::getCString()
{
	return theString.c_str();
}


const TTUInt32 TTSymbol::getId()
{
	return id;
}
