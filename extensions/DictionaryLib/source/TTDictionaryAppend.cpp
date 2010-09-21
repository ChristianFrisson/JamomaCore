/* 
 * TTMatrix Object
 * Copyright © 2010, Timothy Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTDictionaryAppend.h"

#define thisTTClass			TTDictionaryAppend
#define thisTTClassName		"dictionary.append"
#define thisTTClassTags		"dictionary, graph"


TT_OBJECT_CONSTRUCTOR,
	mKey(kTTSymEmpty),
	mValue(NULL)
{
	mValue = new TTValue(0);
	
	addAttribute(Key, kTypeSymbol);
	addAttributeWithGetterAndSetter(Value, kTypeSymbol); // TODO: make this a generic TTValue
	addMessageWithArgument(Dictionary);
}


// Destructor
TTDictionaryAppend::~TTDictionaryAppend()
{
	;
}


TTErr TTDictionaryAppend::Dictionary(TTValue& input)
{
	TTDictionaryPtr d = NULL;
	
	input.get(0, (TTPtr*)&d);
	if (d) {
		d->remove(mKey);
		d->append(mKey, *mValue);
		return kTTErrNone;
	}
	return kTTErrInvalidValue;
}


TTErr TTDictionaryAppend::getValue(TTValue& newValue)
{
	newValue = (*mValue);
	return kTTErrNone;
}


TTErr TTDictionaryAppend::setValue(const TTValue& newValue)
{
	(*mValue) = newValue;
	return kTTErrNone;
}
