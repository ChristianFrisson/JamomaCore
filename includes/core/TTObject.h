/* 
 * TTBlue Object Base Class
 * Copyright © 2008, Timothy Place
 * 
 * License: This code is licensed under the terms of the GNU LGPL
 * http://www.gnu.org/licenses/lgpl.html 
 */

#ifndef __TT_OBJECT_H__
#define __TT_OBJECT_H__

#include "TTElement.h"
#include "TTList.h"
#include "TTHash.h"
#include "TTSymbol.h"
#include "TTSymbolTable.h"
#include "TTSymbolCache.h"
#include "TTValue.h"
#include "TTValueCache.h"
#include "TTSymbolCache.h"


// forward declarations needed by the compiler
class TTAttribute;
class TTMessage;
class TTObject;

typedef TTAttribute*	TTAttributePtr;
typedef TTMessage*		TTMessagePtr;
typedef TTObject*		TTObjectPtr;


/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTMethod)(const TTSymbol* methodName, TTValue& value);

/** A type that can be used to call a message for an object that does not declare the name argument. */
typedef TTErr (TTObject::*TTMethodValue)(TTValue& value);

/** A type that can be used to call a message for an object that does not declare the name argument. */
typedef TTErr (TTObject::*TTMethodConstValue)(const TTValue& value);

/** A type that can be used to call a message for an object that does not declare any arguments. */
typedef TTErr (TTObject::*TTMethodNone)();


/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTGetterMethod)(const TTAttribute& attribute, TTValue& value);

/** A type that can be used to store a pointer to a message for an object */
typedef TTErr (TTObject::*TTSetterMethod)(const TTAttribute& attribute, const TTValue& value);


/** Flags that determine the behavior of messages. */
typedef enum TTMessageFlags {
	kTTMessageDefaultFlags = 0,		///< The default set of flags will be used if this is specified.  At this time the default is #kTTMethodPassValue.
	kTTMessagePassNone = 1,			///< Set this flag if the method you are binding to this message is prototyped to accept no arguments.
	kTTMessagePassValue = 2,		///< Set this flag if the method you are binding to this message is prototyped with a single #TTValue& argument.
	kTTMessagePassNameAndValue = 4	///< Set this flag if the method you are binding to this message is prototyped with two arguments: a const #TTSymbol& and a #TTValue&.
};
	
/** Flags that determine the behavior of messages. */
typedef enum TTAttributeFlags {
	kTTAttrDefaultFlags = 0,		///< The default set of flags will be used if this is specified. At this time the default is #kTTAttrPassValueOnly.
	kTTAttrPassValueOnly = 1,		///< Attribute accessors will only be passed a reference to the attribute's value.
	kTTAttrPassObject = 2			///< Attribute accessors will first be passed a reference to the #TTAttribute object, then it will be passed  a reference to the attribute's value.
};


/****************************************************************************************************/
// Class Specifications

/**
	Base class for all first-class TTBlue objects.
*/
class TTEXPORT TTObject : public TTElement {
private:
	friend class TTEnvironment;

	TTSymbolPtr			objectName;			///< The class name of this object -- can't be static because it needs to be different for every subclass
	TTHash*				messages;			///< The collection of all messages for this object, keyed on the message name.
	TTHash*				attributes;			///< The collection of all attributes for this object, keyed on the attribute name.
protected:
	TTList*				observers;			///< List of all objects watching this object for life-cycle and other changes.
private:
	TTList*				messageObservers;	///< List of all objects watching this object for messages sent to it.
	TTList*				attributeObservers;	///< List of all objects watching this object for changes to attribute values.
	TTUInt8				locked;				///< Is there a lock placed on this object using lock() or unlock()?
	TTUInt16			referenceCount;		///< Reference count for this instance.
public:
	TTBoolean			valid;				///< If the object isn't completely built, or is in the process of freeing, this will be false.
private:
	TTPtrSizedInt		reserved1;			///< Reserved -- May be used for something in the future without changing the size of the struct.
	TTPtrSizedInt		reserved2;			///< Reserved -- May be used for something in the future without changing the size of the struct.

protected:
	TTObject(const TTSymbolPtr name, TTValue& arguments);
public:
	virtual ~TTObject();
	
	/**
		The theory on attributes is that the subclass calls registerAttribute()
		and the base class manages a list of all registered attributes.
		
		The the end-user calls setAttribute() on the object (which is defined in 
		the base class only) and it dispatches the message as appropriate.
	*/
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTSetterMethod setter);
	TTErr registerAttribute(const TTSymbolPtr name, TTDataType type, void* address, TTGetterMethod getter, TTSetterMethod setter);
	
	TTErr findAttribute(const TTSymbolPtr name, TTAttribute** attr);

	/**	Set an attribute value for an object
		@param	name	The name of the attribute to set.
		@param	value	The value to use for setting the attribute.  
						This value can be changed(!), for example if the value is out of range for the attribute.
						Hence, it is not declared const.
		@return			An error code.
	 */
	TTErr setAttributeValue(const TTSymbolPtr name, TTValue& value);
	TTErr getAttributeValue(const TTSymbolPtr name, TTValue& value);

	template <class T>
	TTErr setAttributeValue(const TTSymbolPtr name, const T& value)
	{
		TTValue	v(value);
		return setAttributeValue(name, v);
	}
	
	template <class T>
	TTErr getAttributeValue(const TTSymbolPtr name, T& value)
	{
		TTValue	v;
		TTErr error = getAttributeValue(name, v);
		value = v;
		return error;
	}
	
	TTErr getAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeGetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr getAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);
	TTErr setAttributeSetterFlags(const TTSymbolPtr name, TTAttributeFlags& value);

	TTErr registerAttributeProperty(const TTSymbolPtr attributeName, const TTSymbolPtr propertyName, const TTValue& initialValue, TTGetterMethod getter, TTSetterMethod setter);



	/** return a list of names of the available attributes */
	void getAttributeNames(TTValue& attributeNameList);
	
	/** return a list of names of the available messages */
	void getMessageNames(TTValue& messageNameList);
	
	/** return the name of this class */
	TTSymbol* getName() const;

	
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method);
	TTErr registerMessage(const TTSymbolPtr name, TTMethod method, TTMessageFlags flags);
	TTErr findMessage(const TTSymbolPtr name, TTMessage** message);
	TTErr sendMessage(const TTSymbolPtr name);
	TTErr sendMessage(const TTSymbolPtr name, TTValue& value);

// TODO:
//	TTErr registerMessageProperty(const TTSymbolPtr messageName, const TTSymbolPtr propertyName, const TTValue& initialValue);
	
	TTErr registerObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr registerObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr registerObserverForNotifications(const TTObject& observingObject);
	TTErr unregisterObserverForMessage(const TTObject& observingObject, const TTSymbolPtr messageName);
	TTErr unregisterObserverForAttribute(const TTObject& observingObject, const TTSymbolPtr attributeName);
	TTErr unregisterObserverForNotifications(const TTObject& observingObject);
	
	
	/**	Log messages scoped to this object instance. */
	TTErr logMessage(char* fmtstring, ...);
	TTErr logWarning(char* fmtstring, ...);
	TTErr logError(char* fmtstring, ...);
	
	/**	Log messages (scoped to this object instance) to output only if the basic debugging flag is enabled in the environment.  */
	TTErr logDebug(char* fmtstring, ...);
	
	
	inline TTErr lock()
	{
		locked++;
		return kTTErrNone;
	}
	
	inline TTErr unlock()
	{
		locked--;
		return kTTErrNone;
	}
	
	inline TTBoolean getlock()
	{
		return locked > 0;
	}
	
};


#include "TTAttribute.h"
#include "TTMessage.h"


#endif // __TT_OBJECT_H__

