/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTObject.h"
#include "TTEnvironment.h"


TTMessage::TTMessage(const TTSymbolPtr newName, TTMethod newMethod, TTMessageFlags newFlags) : 
	TTObject(kTTValNONE), 
	name(newName), 
	flags(newFlags),
	method(newMethod),
	hidden(NO)
{
	;
}


TTMessage::~TTMessage()
{
	;
}


TTErr TTMessage::sethidden(const TTValue& newHiddenFlag)
{
	hidden = newHiddenFlag;
	return kTTErrNone;
}

TTErr TTMessage::gethidden(TTValue& currentHiddenFlag)
{
	currentHiddenFlag = hidden;
	return kTTErrNone;
}


TTErr TTMessage::setdescription(const TTValue& newDescription)
{
	newDescription.get(0, &description);
	return kTTErrNone;
}

TTErr TTMessage::getdescription(TTValue& returnedDescription)
{
	returnedDescription = description;
	return kTTErrNone;
}
