/* 
 * TTNodeDirectory
 * Copyright © 2008, Théo de la Hogue & Tim Place
 * 
 * License: This code is licensed under the terms of the "New BSD License"
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTNodeDirectory.h"

#define thisTTClass			TTNodeDirectory
#define thisTTClassName		"NodeDirectory"
#define thisTTClassTags		"node, tree, directory"


TT_OBJECT_CONSTRUCTOR,
	mRoot(NULL)
{
	TTBoolean nodeCreated = NO;
	
	// Set the name of the tree
	TT_ASSERT("Correct number of args to create TTNodeDirectory", arguments.getSize() == 1);
	mName = arguments;
	mDirectory = new TTHash();	// create a new directory

	addAttribute(Name, kTypeSymbol);
	
	addMessageWithArgument(dumpObservers);
	
	// create a lifeCycleObservers and protect it from multithreading access
	// why ? because observers could disappear when they know an address is destroyed
	this->mObservers = new TTHash();
	this->mObservers->setThreadProtection(true);
	
	mMutex = new TTMutex(true);

	// create a root (OSC style)
	TTNodeCreate(S_SEPARATOR, NULL, this, &mRoot, &nodeCreated);
}

TTNodeDirectory::~TTNodeDirectory()
{
	// This handles the reference counting and null checking (no need to worry about double freeing)
	TTObjectRelease(TTObjectHandle(&mRoot));
}


#if 0
#pragma mark -
#pragma mark Static Methods
#endif


#if THE_NON_TT_WAY_OF_DOING_THINGS
TTSymbolPtr	TTNodeDirectory::getName()
{
	return mName;
}

TTErr TTNodeDirectory::setName(TTSymbolPtr aName)
{
	mName = aName;
	return kTTErrNone;
}
#endif

TTNodePtr	TTNodeDirectory::getRoot()
{
	return mRoot;
}

TTHashPtr	TTNodeDirectory::getDirectory()
{
	return mDirectory;
}


TTErr TTNodeDirectory::getTTNodeForOSC(const char* oscAddress, TTNodePtr* returnedTTNode)
{
	return getTTNodeForOSC(TT((char*)oscAddress), returnedTTNode);
}

TTErr TTNodeDirectory::getTTNodeForOSC(TTSymbolPtr oscAddress, TTNodePtr* returnedTTNode)
{
	TTErr err;
	TTValue* found = new TTValue();
	
	if (mDirectory) {
		// look into the hashtab to check if the address exist in the tree
		err = mDirectory->lookup(oscAddress, *found);

		// if this address doesn't exist
		if (err == kTTErrValueNotFound) {
			return kTTErrGeneric;
		}
		else {
			found->get(0,(TTPtr*)returnedTTNode);
			return kTTErrNone;
		}
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::TTNodeCreate(TTSymbolPtr oscAddress, TTObjectPtr newObject, void *aContext, TTNodePtr *returnedTTNode, TTBoolean *newInstanceCreated)
{
	TTSymbolPtr		oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_property, newInstance, oscAddress_got;
	TTBoolean		parent_created;
	TTValue*		found;
	TTNodePtr		newTTNode = NULL;
	TTNodePtr		n_found = NULL;
	TTErr			err;
	TTValue			v, c;

	// Split the OSC address in /parent/name.instance:/property
	err = splitOSCAddress(oscAddress,&oscAddress_parent,&oscAddress_name, &oscAddress_instance, &oscAddress_property);

	// if no error in the parsing of the OSC address
	if (err == kTTErrNone) {

		// If there is a property part
		if(oscAddress_property != NO_ATTRIBUTE){

			// get the TTNode
			mergeOSCAddress(&oscAddress_got,oscAddress_parent,oscAddress_name,oscAddress_instance,NO_ATTRIBUTE);
			found = new TTValue();
			err = mDirectory->lookup(oscAddress_got, *found);

			// if the TTNode doesn't exist
			if (err == kTTErrValueNotFound)
				return kTTErrGeneric;

			else {
				// get the TTNode at this address
				found->get(0,(TTPtr*)&n_found);
				//n_found->addProperty(oscAddress_property, NULL, NULL);  // TODO : what todo in that case ?

				return kTTErrNone;
			}
		}

		// is there a TTNode with this address in the tree ?
		found = new TTValue();
		err = mDirectory->lookup(oscAddress, *found);

		// if it's the first at this address
		if (err == kTTErrValueNotFound) {
			// keep the instance found in the OSC address
			newInstance = oscAddress_instance;
			*newInstanceCreated = false;
		}
		else {
			// this address already exists
			// get the TTNode at this address
			found->get(0,(TTPtr*)&n_found);

			// Autogenerate a new instance
			n_found->getParent()->generateInstance(n_found->getName(), &newInstance);
			*newInstanceCreated = true;
		}

		// CREATION OF A NEW TTNode
		///////////////////////////

		// 1. Create a new TTNode
		v.setSize(5);
		v.set(0, oscAddress_name);
		v.set(1, newInstance);
		v.set(2, (TTPtr)newObject);
		v.set(3, aContext);
		v.set(4, TTObjectRef(*this));
		
		err = TTObjectInstantiate(TT("Node"), TTObjectHandle(&newTTNode), v);
		TT_ASSERT("new TTNode successful", !err);

		// 2. Ensure that the path to the new TTNode exists
		if (oscAddress_parent != NO_PARENT) {

			// set his parent
			parent_created = false;
			newTTNode->setParent(oscAddress_parent, &parent_created);

			// add the new TTNode as a children of his parent
			newTTNode->getParent()->setChild(newTTNode);
			
			// if the new TTNode have a NULL context, set the parent context
			if (!aContext) newTTNode->setContext(newTTNode->getParent()->getContext());
		}
		else
			// the new TTNode is the root : no parent
			;

		// 3. Add the effective address (with the generated instance) to the global hashtab
		newTTNode->getOscAddress(&oscAddress_got);
		mDirectory->append(oscAddress_got,TTValue(newTTNode));
		
		// 4. Notify observers that a node have been created AFTER the creation
		this->notifyObservers(oscAddress_got, newTTNode, kAddressCreated);

		// 5. returned the new TTNode
		*returnedTTNode = newTTNode;

		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::TTNodeRemove(TTSymbolPtr oscAddress)
{
	TTErr		err;
	TTNodePtr	oldNode, parentNode;
	TTList		childrenList;
	TTValue		v;
	TTObjectPtr	obj;
	TTSymbolPtr parentAddress;
	
	// can't destroy the root (use the TTNodeDirectory destructor)
	if (oscAddress != S_SEPARATOR) {
		
		// find the TTNode in the directory
		err = this->getTTNodeForOSC(oscAddress, &oldNode);
		
		if (!err) {
			
			// Notify observers that a node will be destroyed BEFORE the destruction
			this->notifyObservers(oscAddress, oldNode, kAddressDestroyed);
			
			// Remove his address
			err = mDirectory->remove(oscAddress);
			
			// Get parent node
			parentNode = oldNode->getParent();
			
			// Destroy the TTNode
			if (!err)
				err = TTObjectRelease(TTObjectHandle(&oldNode));
			
			// If parent node have no more child and refers to NULL object : destroy
			parentNode->getChildren(S_WILDCARD, S_WILDCARD, childrenList);
			parentNode->getAttributeValue(kTTSym_Object, v);
			v.get(0, (TTPtr*)&obj);
			
			if (childrenList.isEmpty() && !obj) {
				// find the TTNode in the directory
				parentNode->getOscAddress(&parentAddress);
				TTNodeRemove(parentAddress);
			}
		}
	}
	else
		return kTTErrGeneric;
		
	return err;
}

TTErr TTNodeDirectory::Lookup(TTSymbolPtr oscAddress, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTSymbolPtr oscAddress_parent, oscAddress_name, oscAddress_instance, oscAddress_property, oscAddress_noproperty;
	TTList lk_selection, lk_children;
	TTNodePtr n_r;
	TTErr err;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	if (oscAddress->getCString()[0]!= C_SEPARATOR)
		return kTTErrGeneric;
	
	// Split the address /parent/name.instance:property
	splitOSCAddress(oscAddress, &oscAddress_parent, &oscAddress_name, &oscAddress_instance, &oscAddress_property);

	// Is there a wild card ?
	if (strrchr(oscAddress->getCString(), C_WILDCARD)) {

		// Here is a recursive call to the TTNodeDirectory Lookup to get all TTNodes at upper levels
		err = Lookup(oscAddress_parent, returnedTTNodes, firstReturnedTTNode);
			
		// for each returned TTNodes at upper levels
		// select all corresponding "name.instance" TTNodes
		// among the TTNode list.
		
		if (!returnedTTNodes.isEmpty()) {
			
			// select all children of all parent nodes
			for (returnedTTNodes.begin(); returnedTTNodes.end(); returnedTTNodes.next()) {
				
				returnedTTNodes.current().get(0, (TTPtr*)&n_r);
				n_r->getChildren(oscAddress_name, oscAddress_instance, lk_children);
				
				if (!lk_children.isEmpty())
					lk_selection.merge(lk_children);
			}
			
			// return the selection
			returnedTTNodes.clear();
			
			if (!lk_selection.isEmpty()) {
				returnedTTNodes.merge(lk_selection);
				returnedTTNodes.getHead().get(0, (TTPtr*)firstReturnedTTNode);
			}
			else
				err = kTTErrGeneric;
		}
		
		return err;
	}
	// no wild card : do a lookup in the global hashtab 
	// with the /parent/node.instance part (no property)
	else {
		
		// be sure there is no property part
		if(oscAddress_property != NO_ATTRIBUTE)
			mergeOSCAddress(&oscAddress_noproperty, oscAddress_parent, oscAddress_name, oscAddress_instance, NO_ATTRIBUTE);
		else
			oscAddress_noproperty = oscAddress;
		
		// look into the hashtab
		err = getTTNodeForOSC(oscAddress_noproperty, &n_r);
		
		// if the node exists
		if (err == kTTErrNone) {
			returnedTTNodes.append(new TTValue((TTPtr)n_r));
			*firstReturnedTTNode = n_r;
		}
		
		return err;
	}
}

TTErr	TTNodeDirectory::LookFor(TTListPtr whereToSearch, TTBoolean(testFunction)(TTNodePtr node, TTPtr args), void *argument, TTList& returnedTTNodes, TTNodePtr *firstReturnedTTNode)
{
	TTList lk_children;
	TTNodePtr n_r, n_child, n_first;
	TTErr err;
	
	*firstReturnedTTNode = NULL;
	
	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {
		
		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {
			
			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);
			
			// if there are children
			if (!lk_children.isEmpty()) {
				
				// test each of them and add those which are ok
				n_first = NULL;
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {
					
					lk_children.current().get(0, (TTPtr*)&n_child);
					
					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						returnedTTNodes.append(new TTValue((TTPtr)n_child));
						
						if (!n_first)
							n_first = n_child;
					}
				}
				
				// continu the research below all children
				err = LookFor(&lk_children, testFunction, argument, returnedTTNodes, firstReturnedTTNode);
				
				if(!returnedTTNodes.isEmpty() && !n_first)
					returnedTTNodes.getHead().get(0, (TTPtr*)firstReturnedTTNode);
				else if (n_first)
					*firstReturnedTTNode = n_first;
				
				if (err != kTTErrNone)
					return err;
			}
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr	TTNodeDirectory::IsThere(TTListPtr whereToSearch, bool(testFunction)(TTNodePtr node, void*args), void *argument, bool *isThere, TTNodePtr *firstTTNode)
{
	TTList lk_children;
	TTNodePtr n_r, n_child;
	TTErr err, err_look;
	
	// if there are nodes from where to start
	if (!whereToSearch->isEmpty()) {
		
		// Launch a recursive research below each given nodes
		for (whereToSearch->begin(); whereToSearch->end(); whereToSearch->next()) {
			
			// get all children of the node
			whereToSearch->current().get(0, (TTPtr*)&n_r);
			err = n_r->getChildren(S_WILDCARD, S_WILDCARD, lk_children);
			
			// if there are children
			if (err == kTTErrNone) {
				
				// test each of them and add those which are ok
				for (lk_children.begin(); lk_children.end(); lk_children.next()) {
					
					lk_children.current().get(0, (TTPtr*)&n_child);
					
					// test the child and fill the returnedTTNodes
					if (testFunction(n_child, argument)) {
						(*isThere) = true;
						(*firstTTNode) = n_child;
						return kTTErrNone;
					}
					else
						(*isThere) = false;
				}
				
				// continu the research from all children
				err_look = IsThere(&lk_children, testFunction, argument, isThere, firstTTNode);
				
				if (err_look != kTTErrNone)
					return err_look;
				
				// if a node is found below, stop the research
				if ((*isThere))
					return kTTErrNone;
			}
			else
				(*isThere) = false;
		}
		return kTTErrNone;
	}
	return kTTErrGeneric;
}

TTErr TTNodeDirectory::addObserverForNotifications(TTSymbolPtr oscAddress, const TTObject&  observer)
{
	TTErr err;
	TTValue lk;
	TTValuePtr o = new TTValue(observer);
	TTListPtr lk_o;
	
	// enable observers protection
	mMutex->lock();
	
	// is the key already exists ?
	err = this->mObservers->lookup(oscAddress, lk);
	
	// create a new observers list for this address
	if(err == kTTErrValueNotFound){
		lk_o = new TTList();
		lk_o->appendUnique(o);
		
		this->mObservers->append(oscAddress, TTValue(lk_o));
	}
	// add it to the existing list
	else{
		lk.get(0,(TTPtr*)&lk_o);
		lk_o->appendUnique(o);
	}
	
	// disable observers protection
	mMutex->unlock();
	
	return kTTErrNone;
}

TTErr TTNodeDirectory::removeObserverForNotifications(TTSymbolPtr oscAddress, const TTObject&  observer)
{
	TTErr err;
	TTValue lk, o, v;
	TTListPtr lk_o;
	
	// enable observers protection
	mMutex->lock();
	
	// is the key exists ?
	err = this->mObservers->lookup(oscAddress, lk);
	
	if(err != kTTErrValueNotFound){
		// get the observers list
		lk.get(0,(TTPtr*)&lk_o);
		
		// is observer exists ?
		o = TTValue(observer);
		err = lk_o->findEquals(o, v);
		if(!err)
			lk_o->remove(v);
		
		// was it the last observer ?
		if(lk_o->getSize() == 0) {
			// remove the key
			this->mObservers->remove(oscAddress);
		}
	}
	
	// disable observers protection
	mMutex->unlock();

	return err;
}

TTErr TTNodeDirectory::notifyObservers(TTSymbolPtr oscAddress, TTNodePtr aNode, TTAddressNotificationFlag flag)
{
	unsigned int i;
	TTValue hk, lk, o, f, data;
	TTSymbolPtr key;
	TTAddressComparisonFlag comp;
	TTListPtr lk_o;
	TTCallbackPtr anObserver;
	bool foundObsv = false;
	
	// if there are observers
	if (!this->mObservers->isEmpty()) {
		
		// enable observers protection
		mMutex->lock();
		
		this->mObservers->getKeys(hk);

		// for each key of mObserver tab
		for (i=0; i<hk.getSize(); i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			
			// compare the key with the oscAddress
			comp = compareOSCAddress(oscAddress, key);
			
			if ((comp == kAddressEqual) || (comp == kAddressLower)){
				
				// get the Observers list
				this->mObservers->lookup(key, lk);
				lk.get(0,(TTPtr*)&lk_o);
				
				if (!lk_o->isEmpty()) {
					for (lk_o->begin(); lk_o->end(); lk_o->next()) 
					{
						anObserver = NULL;
						lk_o->current().get(0, TTObjectHandle(&anObserver));
						TT_ASSERT("TTNode observer list member is not NULL", anObserver);
						data.append(oscAddress);
						data.append((TTPtr*)aNode);
						data.append((TTInt8)flag);
						data.append((TTPtr*)anObserver);
						anObserver->notify(data);
					}
					
					foundObsv = true;
				}
			}
		}
		
		// disable observers protection
		mMutex->unlock();
		
		if (foundObsv)
			return kTTErrNone;
		else
			return kTTErrGeneric;
	}
	else
		return kTTErrGeneric;
}

TTErr TTNodeDirectory::dumpObservers(TTValue& value)
{
	unsigned int i, s;
	TTValue hk, lk, vo;
	TTValuePtr vk;
	TTSymbolPtr key, owner;
	TTString ownerptStr;
	TTListPtr lk_o;
	TTCallbackPtr anObserver;
	
	value.clear();
	
	// if there are observers in mObservers tab
	if (!this->mObservers->isEmpty()) {
		
		// enable observers protection
		mMutex->lock();
		
		this->mObservers->getKeys(hk);
		
		// for each key of mObserver tab
		s = hk.getSize();
		for (i=0; i<s; i++) {
			
			hk.get(i,(TTSymbolPtr*)&key);
			
			vk = new TTValue(key);
			
			// get the Observers list
			this->mObservers->lookup(key, lk);
			lk.get(0,(TTPtr*)&lk_o);
			
			if (!lk_o->isEmpty())
				for (lk_o->begin(); lk_o->end(); lk_o->next()) 
				{
					anObserver = NULL;
					lk_o->current().get(0, TTObjectHandle(&anObserver));
					TT_ASSERT("TTNode observer list member is not NULL", anObserver);
					
					anObserver->getAttributeValue(TT("Owner"), vo);
					vo.get(0, &owner);
					
					// edit a "owner (pointer)" string
					ownerptStr = owner->getCString();
					
					char buf[20];
					snprintf(buf, sizeof(char)*20, "( %p )", (TTPtr)anObserver);
					ownerptStr += buf;
					free(buf);
					
					vk->append(TT(ownerptStr.data()));
				}
			else
				vk->append(TT("<empty>"));
			
			value.append((TTPtr)vk);
		}
	}
	
	// disable observers protection
	mMutex->unlock();
	
	return kTTErrNone;
}


/***********************************************************************************
 *
 *		GLOBAL METHODS
 *
 ************************************************************************************/

TTErr splitAtOSCAddress(TTSymbolPtr oscAddress, int whereToSplit, TTSymbolPtr* returnedPart1, TTSymbolPtr* returnedPart2)
{
	TTErr err = kTTErrNone;
	long nb, pos, i;
	TTString part1, part2;
	
	i = 0;
	part1 = "";
	part2 = oscAddress->getCString();

	while(i <= whereToSplit)
	{
		nb = std::count(part2.begin(), part2.end(), C_SEPARATOR);
		
		if(nb)
		{
			pos = part2.find_first_of(C_SEPARATOR);
			part1 += part2.substr(0, pos+1);
			part2 = part2.substr(pos+1, part2.size());
		}
		else
		{
			part1 += part2;
			part2 = "";
			err = kTTErrGeneric;
			break;
		}
		
		i++;
	}
	
	*returnedPart1 = TT(part1);
	*returnedPart2 = TT(part2);
	
	return err;
}

TTErr splitOSCAddress(TTSymbolPtr oscAddress, TTSymbolPtr* returnedParentOscAdress, TTSymbolPtr* returnedTTNodeName, TTSymbolPtr* returnedTTNodeInstance, TTSymbolPtr* returnedTTNodeProperty)
{
	long len, pos;
	char *last_colon, *last_slash, *last_dot;
	char *property, *parent, *instance;
	char *to_split;

	// Make sure we are dealing with valid OSC input by looking for a leading slash
	//if(oscAddress->getCString()[0]!= C_SEPARATOR)
	//	return kTTErrGeneric;
	
	// TODO : replace all ".0" by ""

	to_split = (char *)malloc(sizeof(char)*(strlen(oscAddress->getCString())+1));
	strcpy(to_split,oscAddress->getCString());

	// find the last ':' in the OSCaddress
	// if exists, split the OSC address in an address part (to split) and an property part
	len = strlen(to_split);
	last_colon = strrchr(to_split, C_PROPERTY);
	pos = (long)last_colon - (long)to_split;

	if (last_colon) {
		property = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(property,to_split + pos+1);
		*returnedTTNodeProperty = TT(property);

		to_split[pos] = NULL;	// split to keep only the address part
	}
	else
		*returnedTTNodeProperty = NO_ATTRIBUTE;
	
	// find the last '/' in the address part
	// if exists, split the address part in a TTNode part (to split) and a parent part
	len = strlen(to_split);
	last_slash = strrchr(to_split, C_SEPARATOR);
	pos = (long)last_slash - (long)to_split;

	if (last_slash) {
		if (pos) { // In the root case pos == 0
			parent = (char *)malloc(sizeof(char)*(pos+1));
			strncpy(parent,to_split,pos);
			parent[pos] = NULL;
			*returnedParentOscAdress = TT(parent);
			to_split = last_slash+1;	// split to keep only the TTNode part
		}
		else {
			// Is it the root or a child of the root ?
			if (strlen(to_split) > 1) {
				*returnedParentOscAdress = S_SEPARATOR;
				to_split = last_slash+1;	// split to keep only the TTNode part
			}
			else
				*returnedParentOscAdress = NO_PARENT;
		}
	}
	else
		*returnedParentOscAdress = NO_PARENT;

	// find the last '.' in the TTNode part
	// if exists, split the TTNode part in a name part and an instance part
	len = strlen(to_split);
	last_dot = strrchr(to_split,C_INSTANCE);
	pos = (long)last_dot - (long)to_split;

	if (last_dot > 0) {
		instance = (char *)malloc(sizeof(char)*(len - (pos+1)));
		strcpy(instance,to_split + pos+1);
		*returnedTTNodeInstance = TT(instance);

		to_split[pos] = NULL;	// split to keep only the name part
	}
	else
		*returnedTTNodeInstance = NO_INSTANCE;

	// TODO : ??? (detect unusual characters in a TTNode name)
	if (strlen(to_split) > 0)
		*returnedTTNodeName = TT(to_split);
	else
		*returnedTTNodeName = NO_NAME;

	return kTTErrNone;
}

TTErr mergeOSCAddress(TTSymbolPtr *returnedOscAddress, TTSymbolPtr parent, TTSymbolPtr name, TTSymbolPtr instance, TTSymbolPtr property)
{
	TTString address;

	if (parent != NO_PARENT)
		address = parent->getCString();

	if(name != NO_NAME){
		if((name != S_SEPARATOR) && (parent != S_SEPARATOR))
			address += S_SEPARATOR->getCString();
		address += name->getCString();
	}

	if (instance != NO_INSTANCE) {
		address += S_INSTANCE->getCString();
		address += instance->getCString();
	}

	if(property != NO_ATTRIBUTE){
		address += S_PROPERTY->getCString();
		address += property->getCString();
	}

	*returnedOscAddress = TT(address);

	return kTTErrNone;
}

TTErr joinOSCAddress(TTSymbolPtr firstPart, TTSymbolPtr secondPart, TTSymbolPtr *returnedAddress)
{
	TTString tmp = "";
	
	if (firstPart != S_SEPARATOR) {
		if (firstPart->getCString()[0] != C_SEPARATOR) {
			tmp += C_SEPARATOR;
			tmp += firstPart->getCString();
		}
		else
			tmp += firstPart->getCString();
	}
	
	if (secondPart->getCString()[0] != C_SEPARATOR) {
		tmp += C_SEPARATOR;
		tmp += secondPart->getCString();
	}
	else
		tmp += secondPart->getCString();
	
	*returnedAddress = TT(tmp.data());
	
	return kTTErrNone;
}

TTAddressComparisonFlag compareOSCAddress(TTSymbolPtr oscAddress1, TTSymbolPtr oscAddress2)
{
	TTErr err1 = kTTErrNone;
	TTErr err2 = kTTErrNone;
	TTSymbolPtr top1, rest1, name1, instance1, attribute1;
	TTSymbolPtr top2, rest2, name2, instance2, attribute2;
	TTSymbolPtr p;
	TTString level1, level2;
	bool cName, cInstance, cAttribute;
	unsigned int pos1, pos2;
	
	if(oscAddress1 == oscAddress2)
		return kAddressEqual;
	else if(oscAddress1 == S_SEPARATOR)
		return kAddressUpper;
	else if(oscAddress2 == S_SEPARATOR)
		return kAddressLower;
	else{
		
		err1 = splitAtOSCAddress(oscAddress1, 0, &top1, &rest1);
		err2 = splitAtOSCAddress(oscAddress2, 0, &top2, &rest2);
		
		// compare each level until there is a difference
		while((top1 == top2) && (err1 == 0) && (err2 == 0))
		{
			err1 = splitAtOSCAddress(rest1, 0, &top1, &rest1);
			err2 = splitAtOSCAddress(rest2, 0, &top2, &rest2);
		}
		
		// what is the difference at this level ?
		
		// get each level part without any slash at the end
		// because a top part could ends with a slash (ex: "footop/")
		level1 = top1->getCString();
		level2 = top2->getCString();

		pos1 = level1.find_first_of(C_SEPARATOR);
		pos2 = level2.find_first_of(C_SEPARATOR);
		
		if((pos1 + 1) == level1.size())
			level1 = level1.substr(0, pos1);
		if((pos2 + 1) == level2.size())
			level2 = level2.substr(0, pos2);
		
		// split to know more about level : name.instance:attribute (it would have no parent)
		splitOSCAddress(TT(level1), &p, &name1, &instance1, &attribute1);			// name1.instance1:attribute1
		splitOSCAddress(TT(level2), &p, &name2, &instance2, &attribute2);			// name2.instance2:attribute2
		
		// compare names
		cName = (name1 == name2) || (name1 == S_WILDCARD) || (name2 == S_WILDCARD);
		
		// compare instances
		cInstance = (instance1 == instance2) || (instance1 == S_WILDCARD) || (instance2 == S_WILDCARD);
		
		// compare attributes
		cAttribute = attribute1 == attribute2;
		
		// if levels are equal
		// compare the rest of the address
		if(cName && cInstance && cAttribute){
			
				// look at returned error to know if there is a rest
				if(err1 && !err2)																// oscAddress1 is shorter than oscAddress2
					return kAddressUpper;
				else if(!err1 && err2)															// oscAddress2 is shorter than oscAddress1
					return kAddressLower;
				else																			// oscAddress1 ? oscAddress2
					return compareOSCAddress(rest1, rest2);
		}
	}
	
	return kAddressDifferent;
}

TTSymbolPtr convertPublicNameInAddress(TTSymbolPtr publicName)
{
	TTUInt32	publicNameSize = 0;
	TTCString	publicNameCString;
	TTUInt32	nbUpperCase = 0;
	TTUInt32	i;
	TTCString	addrNameCString = NULL;
	TTUInt32	addrNameSize = 0;
	TTSymbolPtr	addrNameSymbol;
	
	publicNameSize = strlen(publicName->getCString());
	publicNameCString = new char[publicNameSize+1];
	strncpy(publicNameCString, publicName->getCString(), publicNameSize+1);
	
	// only expose "PublicName" as "public/name" address (they begin with an upper-case letter)
	if (publicNameCString[0] > 64 && publicNameCString[0] < 91) {
		
		//  count how many upper-case letter there are in the TTName after the first letter
		for (i=1; i<publicNameSize; i++) {
			if (publicNameCString[i] > 64 && publicNameCString[i] < 91)
				nbUpperCase++;
		}
		
		// prepare the addrName
		addrNameSize = publicNameSize + nbUpperCase;
		addrNameCString = new char[addrNameSize+1];
		
		// convert first letter to lower-case
		addrNameCString[0] = publicNameCString[0] + 32;													
		
		// copy each letter while checking upper-case letter to replace them by a / + lower-case letter
		nbUpperCase = 0;
		for (i=1; i<publicNameSize; i++) {
			if (publicNameCString[i] > 64 && publicNameCString[i] < 91) {
				addrNameCString[i + nbUpperCase] = '/';
				addrNameCString[i + nbUpperCase + 1] = publicNameCString[i] + 32;
				nbUpperCase++; 
			}
			else
				addrNameCString[i + nbUpperCase] = publicNameCString[i];
		}
		
		// ends the CString with a NULL letter
		addrNameCString[addrNameSize] = NULL;
		
		addrNameSymbol = TT(addrNameCString);
	}
	else 
		addrNameSymbol = NULL;
	
	delete publicNameCString;
	publicNameCString = NULL;
	delete addrNameCString;
	addrNameCString = NULL;
	
	return addrNameSymbol;
}

unsigned int countSeparator(TTSymbolPtr oscAddress)
{
	TTString toCount = oscAddress->getCString();

	return count(toCount.begin(), toCount.end(), C_SEPARATOR);
}

TTBoolean testNodeObjectType(TTNodePtr n, TTPtr args)
{
	TTObjectPtr o;
	
	o = n->getObject();
	
	if (o)
		return o->getName() == (TTSymbolPtr)args;
	else
		return NO;
}

TTBoolean testNodeContext(TTNodePtr n, TTPtr args)
{
	TTPtr		c;
	
	c = n->getContext();
	
	if (c)
		return c == args;
	else
		return NO;
}

TTBoolean testNodeUsingCallback(TTNodePtr n, TTPtr args)
{
	TTValue			v = TTValue((TTPtr)n);
	TTCallbackPtr	aCallback = (TTCallbackPtr)args;
	
	aCallback->notify(v);
	
	return v == kTTVal1;
}

TTBoolean testNodeUsingCriteria(TTNodePtr n, TTPtr args)
{
	TTHashPtr		objectCriteria = (TTHashPtr)args;
	TTHashPtr		attributeCriteria;
	TTObjectPtr		o;
	TTValue			v, keys, valueCriteria;
	TTSymbolPtr		k;
	TTBoolean		test = true;
	
	// if there is an object
	if (o = n->getObject()) {
		
		// if objectCriteria table is empty return YES
		// else
		if (!objectCriteria->isEmpty()) {
			
			// if his type exists into the objectCriteria table
			if (!objectCriteria->lookup(o->getName(), v)) {
				
				// get attributeCriteria table
				v.get(0, (TTPtr*)&attributeCriteria);
				
				// if attributeCriteria table is empty return YES
				// else
				if (!attributeCriteria->isEmpty()) {
					
					// for each attribute name : test the value
					attributeCriteria->getKeys(keys);
					for (TTUInt16 i=0; i<keys.getSize(); i++) {
						
						keys.get(i, &k);
						attributeCriteria->lookup(k, valueCriteria);
						
						if (!o->getAttributeValue(k, v))
							test &= (v == valueCriteria) || (valueCriteria == kTTValNONE);
						else
							test = NO;
						
						if (!test) break;
					}
				}
				
				return test;
			}
			else
				return NO;
		}
		else
			return YES;
	}
	
	return NO;
}

