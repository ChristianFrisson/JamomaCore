/** @file
 *
 * @ingroup modularLibrary
 *
 * @brief A Mapper Object
 *
 * @details
 *
 * @authors Théo de la Hogue
 *
 * @copyright © 2010, Théo de la Hogue @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */


#include "TTMapper.h"

#define thisTTClass			TTMapper
#define thisTTClassName		"Mapper"
#define thisTTClassTags		"mapper"

TT_MODULAR_CONSTRUCTOR,
mInput(kTTAdrsEmpty),
mOutput(kTTAdrsEmpty),
mInputMin(0.),
mInputMax(1.),
mOutputMin(0.),
mOutputMax(1.),
mActive(YES),
mInverse(NO),
#ifndef TT_NO_DSP
mFunctionLibrary(kTTValNONE),
mFunction(kTTSymEmpty),
mFunctionParameters(kTTValNONE),
mFunctionSamples(kTTValNONE),
#endif
mRamp(0),
mReceiver(NULL),
mSender(NULL),
mInputObserver(NULL),
mOutputObserver(NULL),
mInputRangeObserver(NULL),
mOutputRangeObserver(NULL),
mObserveInputRange(true),
mObserveOutputRange(true),
mReturnValueCallback(NULL)
#ifndef TT_NO_DSP
,
mFunctionUnit(NULL),
mValid(NO)
#endif
{	
	if(arguments.size() == 1)
		mReturnValueCallback = TTCallbackPtr((TTObjectBasePtr)arguments[0]);
	
	addAttributeWithSetter(Input, kTypeSymbol);
	addAttributeWithSetter(Output, kTypeSymbol);
	
	addAttributeWithSetter(InputMin, kTypeFloat64);
	addAttributeWithSetter(InputMax, kTypeFloat64);
	addAttributeWithSetter(OutputMin, kTypeFloat64);
	addAttributeWithSetter(OutputMax, kTypeFloat64);
	
	addAttributeWithSetter(Active, kTypeBoolean);
	
	addAttribute(Inverse, kTypeBoolean);
#ifndef TT_NO_DSP	
	addAttributeWithGetter(FunctionLibrary, kTypeLocalValue);
	addAttributeProperty(FunctionLibrary, readOnly, YES);
	
	addAttributeWithSetter(Function, kTypeSymbol);
	
	addAttribute(FunctionParameters, kTypeLocalValue);
	addAttributeProperty(FunctionParameters, readOnly, YES);
	
	addAttributeWithGetter(FunctionSamples, kTypeLocalValue);
	addAttributeProperty(FunctionSamples, readOnly, YES);
#endif
    addAttribute(Ramp, kTypeUInt32);
	
	addMessageWithArguments(Map);
	addMessageProperty(Map, hidden, YES);
	
	scaleInput();
	scaleOutput();
}

TTMapper::~TTMapper() // TODO : delete things...
{
	TTSymbol	aName;
#ifndef TT_NO_DSP
	long		n;
    
	if (mFunctionUnit) {
		
		// Remove former datas
		n = mFunctionParameters.size();
		for (int i = 0; i < n; i++) {
			aName = mFunctionParameters[i];
			this->removeAttribute(aName);
		}
		
		TTObjectBaseRelease(TTObjectBaseHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
#endif
	
	if (mReturnValueCallback) {
		delete (TTValuePtr)mReturnValueCallback->getBaton();
		TTObjectBaseRelease(TTObjectBaseHandle(&mReturnValueCallback));
	}
	
	if (mSender)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSender));
	
	if (mReceiver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mReceiver));
	
	if (mInputObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputObserver));
	
	if (mOutputObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputObserver));
	
	if (mInputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputRangeObserver));
	
	if (mOutputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputRangeObserver));
}

TTErr TTMapper::Map(TTValue& inputValue, TTValue& outputValue)
{
	if (mActive) {
		
		processMapping(inputValue, outputValue);
		
		// return value
		if (mSender)
			mSender->sendMessage(kTTSym_Send, outputValue, kTTValNONE);
		
		if (mReturnValueCallback)
			mReturnValueCallback->notify(outputValue, kTTValNONE);
	}
	
	return kTTErrNone;
}
#ifndef TT_NO_DSP
TTErr TTMapper::getFunctionLibrary(TTValue& value)
{
    TTGetRegisteredClassNamesForTags(mFunctionLibrary, kTTSym_function);
	
	value = mFunctionLibrary;
	return kTTErrNone;
}

TTErr TTMapper::getFunctionSamples(TTValue& value)
{
	TTValue		inputSamples;
	TTFloat64	s, resolution;
	
	resolution = (mInputMax - mInputMin) / 100; // TODO : add an attribute for the number of samples (default : 100)
	
	for (s = mInputMin; s < mInputMax; s += resolution)
		inputSamples.append(s);
	
	processMapping(inputSamples, value);
	
	return kTTErrNone;
}
#endif
TTErr TTMapper::setInput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectBasePtr	returnValueCallback, anObject;
	TTValuePtr		returnValueBaton;
	TTErr			err;
	
	if (mReceiver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mReceiver));
	
	mInput = value[0];
	
	mObserveInputRange = true;
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnValueCallback = NULL;				// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnValueCallback, kTTValNONE);
	returnValueBaton = new TTValue(TTObjectBasePtr(this));
	returnValueCallback->setAttributeValue(kTTSym_baton, TTPtr(returnValueBaton));
	returnValueCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperReceiveValueCallback));
	args.append(returnValueCallback);
	
	mReceiver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(&mReceiver), args);
	
	mReceiver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper was created before we observe the input address
	if (getDirectoryFrom(mInput)) {
		err = getDirectoryFrom(mInput)->getTTNode(mInput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject) {
                
				if (anObject->getName() == kTTSym_Data) {
					
					anObject->getAttributeValue(kTTSym_rangeBounds, v);
					
					mInputMin = TTFloat64(v[0]);
					mInputMax = TTFloat64(v[1]);
					scaleInput();
					
					observeInputRange();
				}
            }
            return kTTErrNone;
		}
	}
    
    return observeInput();
}

TTErr TTMapper::observeInput()
{
	TTValue			args;
	TTObjectBasePtr		returnInputCreationCallback;
	TTValuePtr		returnInputCreationBaton;
	
	if (mInputObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputObserver));
	
	// Make a TTReceiver object
	returnInputCreationCallback = NULL;				// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnInputCreationCallback, kTTValNONE);
	returnInputCreationBaton = new TTValue(TTObjectBasePtr(this));
	returnInputCreationCallback->setAttributeValue(kTTSym_baton, TTPtr(returnInputCreationBaton));
	returnInputCreationCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperInputCreationCallback));
	args.append(returnInputCreationCallback);
	
	args.append(NULL);
	
	mInputObserver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(&mInputObserver), args);
	
	mInputObserver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_created));

	return kTTErrNone;
}

TTErr TTMapper::observeInputRange()
{
	TTValue			args;
	TTObjectBasePtr		returnInputRangeCallback;
	TTValuePtr		returnInputRangeBaton;
	
	if (mInputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputRangeObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnInputRangeCallback = NULL;				// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnInputRangeCallback, kTTValNONE);
	returnInputRangeBaton = new TTValue(TTObjectBasePtr(this));
	returnInputRangeCallback->setAttributeValue(kTTSym_baton, TTPtr(returnInputRangeBaton));
	returnInputRangeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperInputRangeCallback));
	args.append(returnInputRangeCallback);
	
	mInputRangeObserver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(&mInputRangeObserver), args);
	
	mInputRangeObserver->setAttributeValue(kTTSym_address, mInput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}

TTErr TTMapper::setOutput(const TTValue& value)
{
	TTValue			args, v, min, max;
	TTNodePtr		aNode;
	TTObjectBasePtr	anObject;
	TTErr			err;
	
	if (mSender)
		TTObjectBaseRelease(TTObjectBaseHandle(&mSender));
	
	mOutput = value[0];
	
	mObserveOutputRange = true;
		
	// Make a TTSender object
	mSender = NULL;
	TTObjectBaseInstantiate(kTTSym_Sender, TTObjectBaseHandle(&mSender), kTTValNONE);
	
	mSender->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_value));
	
	// Trying to get the Data at this address 
	// and get some infos about range bounds 
	// and if the mapper created before we observe the output address
	if (getDirectoryFrom(mOutput)) {
		err = getDirectoryFrom(mOutput)->getTTNode(mOutput, &aNode);
		
		if (!err) {
			
			anObject = aNode->getObject();
			if (anObject) {
                
				if (anObject->getName() == kTTSym_Data) {
					
					anObject->getAttributeValue(kTTSym_rangeBounds, v);
					
                    mOutputMin = TTFloat64(v[0]);
                    mOutputMax = TTFloat64(v[1]);

					scaleOutput();
					
					observeOutputRange();
				}
            }
            return kTTErrNone;
		}
	}
    
    return observeOutput();
}

TTErr TTMapper::observeOutput()
{
	TTValue			args;
	TTObjectBasePtr	returnOutputCreationCallback;
	TTValuePtr		returnOutputCreationBaton;
	
	if (mOutputObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputObserver));
	
	// Make a TTReceiver object
	returnOutputCreationCallback = NULL;				// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnOutputCreationCallback, kTTValNONE);
	returnOutputCreationBaton = new TTValue(TTObjectBasePtr(this));
	returnOutputCreationCallback->setAttributeValue(kTTSym_baton, TTPtr(returnOutputCreationBaton));
	returnOutputCreationCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperOutputCreationCallback));
	args.append(returnOutputCreationCallback);
	
	args.append(NULL);
	
	mOutputObserver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(&mOutputObserver), args);
	
	mOutputObserver->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_created));
	
	return kTTErrNone;
}

TTErr TTMapper::observeOutputRange()
{
	TTValue			args;
	TTObjectBasePtr		returnOutputRangeCallback;
	TTValuePtr		returnOutputRangeBaton;
	
	if (mOutputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputRangeObserver));
	
	// Make a TTReceiver object
	args.append(NULL);
	
	returnOutputRangeCallback = NULL;				// without this, TTObjectBaseInstantiate try to release an oldObject that doesn't exist ... Is it good ?
	TTObjectBaseInstantiate(TTSymbol("callback"), &returnOutputRangeCallback, kTTValNONE);
	returnOutputRangeBaton = new TTValue(TTObjectBasePtr(this));
	returnOutputRangeCallback->setAttributeValue(kTTSym_baton, TTPtr(returnOutputRangeBaton));
	returnOutputRangeCallback->setAttributeValue(kTTSym_function, TTPtr(&TTMapperOutputRangeCallback));
	args.append(returnOutputRangeCallback);
	
	mOutputRangeObserver = NULL;
	TTObjectBaseInstantiate(kTTSym_Receiver, TTObjectBaseHandle(&mOutputRangeObserver), args);
	
	mOutputRangeObserver->setAttributeValue(kTTSym_address, mOutput.appendAttribute(kTTSym_rangeBounds));
	
	return kTTErrNone;
}
#ifndef TT_NO_DSP
TTErr TTMapper::setFunction(const TTValue& value)
{
	long		n;
	TTValue		names;
	TTSymbol	aName;
	
	if (mFunctionUnit) {

		// Remove former datas
		n = mFunctionParameters.size();
		for (int i = 0; i < n; i++) {
			aName = mFunctionParameters[i];
			this->removeAttribute(aName);
		}
		
		TTObjectBaseRelease(TTObjectBaseHandle(&mFunctionUnit));
		mFunctionUnit = NULL;
		mFunction = kTTSymEmpty;
		mFunctionParameters.clear();
	}
	
	// Create a new function unit
	mValid = false;
	mFunction = value;
    TTObjectBaseInstantiate(mFunction, TTObjectBaseHandle(&mFunctionUnit), 1);
	
	// Extend function unit attributes as attributes of this mapper
	// and set mFunctionParameters attribute
	if (mFunctionUnit) {

		mFunctionUnit->getAttributeNames(names);
		n = names.size();
		
		if (n) {
			for (int i = 0; i < n; i++) {
				
				aName = names[i];
				
				// don't publish these datas
				if (aName == kTTSym_bypass || aName == kTTSym_mute || aName == kTTSym_maxNumChannels || aName == kTTSym_sampleRate)
					continue;
				
				// extend attribute with the same name
				this->extendAttribute(aName, mFunctionUnit, aName);
				mFunctionParameters.append(aName);
			}
		}
		else
			mFunctionParameters.append(kTTSym_none);
		
		mValid = true;
		notifyObservers(kTTSym_function, value);
		notifyObservers(TTSymbol("functionParameters"), mFunctionParameters);
		return kTTErrNone;
	}

	return kTTErrGeneric;
}
#endif

TTErr TTMapper::setInputMin(const TTValue& value)
{
	mInputMin = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputRangeObserver));
	
	notifyObservers(TTSymbol("inputMin"), value);
	return scaleInput();
}

TTErr TTMapper::setInputMax(const TTValue& value)
{
	mInputMax = value;
	
	// stop input range observation
	mObserveInputRange = false;
	
	if (mInputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mInputRangeObserver));
	
	notifyObservers(TTSymbol("inputMax"), value);
	return scaleInput();
}

TTErr TTMapper::setOutputMin(const TTValue& value)
{
	mOutputMin = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputRangeObserver));
	
	notifyObservers(TTSymbol("outputMin"), value);
	return scaleOutput();
}

TTErr TTMapper::setOutputMax(const TTValue& value)
{
	mOutputMax = value;
	
	// stop output range observation
	mObserveOutputRange = false;
	
	if (mOutputRangeObserver)
		TTObjectBaseRelease(TTObjectBaseHandle(&mOutputRangeObserver));
	
	notifyObservers(TTSymbol("outputMax"), value);
	return scaleOutput();
}

TTErr TTMapper::setActive(const TTValue& value)
{
	mActive = value;
	
	notifyObservers(kTTSym_active, value);
	return kTTErrNone;
}

// Recalculate values to use for scaling of input values
TTErr TTMapper::scaleInput()
{
	// Prevent dividing by 0
	if (mInputMin == mInputMax)
		mA = 1;
	else
		mA = 1./(mInputMax - mInputMin);
	mB = -1 * mA * mInputMin;
	
	return kTTErrNone;
}

// Recalculate values to use for scaling of output values
TTErr TTMapper::scaleOutput()
{
	mC = mOutputMax - mOutputMin;
	mD = mOutputMin;
	return kTTErrNone;
}

TTErr TTMapper::processMapping(TTValue& inputValue, TTValue& outputValue)
{
	TTValue		in, out;
	TTFloat64	f;
	TTInt32		i, size;
	
	size = inputValue.size();
	
	// clip input value
	inputValue.clip(mInputMin, mInputMax);
	
	// scale input value
	for (i = 0; i < size; i++) {
		f = inputValue[i];
		in.append(mA * f + mB);
	}

#ifndef TT_NO_DSP
	// process function
	if (mFunctionUnit)
		mFunctionUnit->calculate(in, out);
	else
#endif		
		out = in;
	
	// scale output value
	for (i = 0; i < size; i++) {
		f = out[i];
		
		if (!mInverse)
			outputValue.append(mC * f + mD);
		else
			outputValue.append(mC * (mOutputMax - f) + mD);
	}
	
	// clip output value
	outputValue.clip(mOutputMin, mOutputMax);
	
	return kTTErrNone;
}

TTErr TTMapper::notifyObservers(TTSymbol attrName, const TTValue& value)
{
	TTAttributePtr	anAttribute = NULL;
	TTErr			err;
	
	err = this->findAttribute(attrName, &anAttribute);
	
	if (!err)
		anAttribute->sendNotification(kTTSym_notify, value);	// we use kTTSym_notify because we know that observers are TTCallback
	
	return kTTErrNone;
}

#if 0
#pragma mark -
#pragma mark Some Methods
#endif

TTErr TTMapperInputCreationCallback(TTPtr baton, TTValue& data)
{	
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		v;
	TTAddress   address;
	TTNodePtr	aNode;
	TTObjectBasePtr anObject;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	aMapper = TTMapperPtr((TTObjectBasePtr)(*b)[0]);
	
	// unpack data (an address)
	address = data[0];
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = getDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		anObject = aNode->getObject();
		if (anObject) {
            
			if (anObject->getName() == kTTSym_Data || anObject->getName() == kTTSym_Mirror) {
				
				anObject->getAttributeValue(kTTSym_rangeBounds, v);
				
                if (v.size() == 2) {
                    
                    // if inputMin isn't a specific value or observation is active
                    if (aMapper->mInputMin == 0. || aMapper->mObserveInputRange)
                        aMapper->mInputMin = TTFloat64(v[0]);
                    
                    // if inputMax isn't a specific value or observation is active
                    if (aMapper->mInputMax == 1. || aMapper->mObserveInputRange)
                        aMapper->mInputMax = TTFloat64(v[1]);
                    
                    aMapper->scaleInput();
                }
                
                aMapper->observeInputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperOutputCreationCallback(TTPtr baton, TTValue& data)
{	
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		v;
	TTAddress   address;
	TTNodePtr	aNode;
	TTObjectBasePtr anObject;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	aMapper = TTMapperPtr((TTObjectBasePtr)(*b)[0]);
	
	// unpack data (an address)
	address = data[0];
	
	// get the Data at this address 
	// and get some infos about range bounds 
	TTErr err = getDirectoryFrom(address)->getTTNode(address, &aNode);
	
	if (!err) {
		
		anObject = aNode->getObject();
		if (anObject) {
            
			if (anObject->getName() == kTTSym_Data || anObject->getName() == kTTSym_Mirror) {
				
				anObject->getAttributeValue(kTTSym_rangeBounds, v);
                
                if (v.size() == 2) {
                    
                    // if outputMin isn't a specific value or observation is active
                    if (aMapper->mOutputMin == 0. || aMapper->mObserveOutputRange)
                        aMapper->mOutputMin = TTFloat64(v[0]);
                    
                    // if outputMax isn't a specific value or observation is active
                    if (aMapper->mOutputMax == 1. || aMapper->mObserveOutputRange)
                        aMapper->mOutputMax = TTFloat64(v[1]);
                    
                    aMapper->scaleOutput();
                }
                
                aMapper->observeOutputRange();
			}
		}
	}
	
	return err;
}

TTErr TTMapperInputRangeCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;

	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	aMapper = TTMapperPtr((TTObjectBasePtr)(*b)[0]);
	
	if (aMapper->mObserveInputRange) {
		// unpack data (min, max)
		aMapper->mInputMin = data[0];
		aMapper->mInputMax = data[1];
		
		aMapper->scaleInput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperOutputRangeCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	aMapper = TTMapperPtr((TTObjectBasePtr)(*b)[0]);
	
	if (aMapper->mObserveOutputRange) {
		// unpack data (min, max)
		aMapper->mOutputMin = data[0];
		aMapper->mOutputMax = data[1];
	
		aMapper->scaleOutput();
	}
	
	return kTTErrNone;
}

TTErr TTMapperReceiveValueCallback(TTPtr baton, TTValue& data)
{
	TTMapperPtr aMapper;
	TTValuePtr	b;
	TTValue		mappedValue;
	
	// unpack baton (a TTMapper)
	b = (TTValuePtr)baton;
	aMapper = TTMapperPtr((TTObjectBasePtr)(*b)[0]);
	
	if (aMapper->mActive) {
		
		// process the mapping
		aMapper->processMapping(data, mappedValue);
        
        // if there is a ramp value, edit the command here
        if (aMapper->mRamp > 0) {
            TTDictionaryPtr	command = new TTDictionary();
            command->setSchema(kTTSym_command);
            command->setValue(mappedValue);
            command->append(kTTSym_ramp, aMapper->mRamp);
            
            mappedValue = TTValue((TTPtr)command);
        }
		
		// return value
		if (aMapper->mSender)
			aMapper->mSender->sendMessage(kTTSym_Send, mappedValue, kTTValNONE);
		
		if (aMapper->mReturnValueCallback)
			aMapper->mReturnValueCallback->notify(mappedValue, kTTValNONE);
	}
	
	return kTTErrNone;
}

