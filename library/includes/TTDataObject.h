/** @file
 * @ingroup foundation
 *
 * @brief TTDataObject is the base class for all data generating and processing objects.
 *
 * @details It still has knowledge and support for sample-rates, but not channel counts or vector processing.
 *
 * @authors Timothy Place, Trond Lossius
 *
 * @copyright This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#ifndef __TT_DATA_OBJECT_H__
#define __TT_DATA_OBJECT_H__

#include "TTObject.h"
#include "TTSymbol.h"
#include "TTValue.h"

// Forward declaration of TTAudioObject for the typedef that follows...
class TTDataObject;
class TTMatrixArray;

/**	A type that can be used to store a pointer to a calculate method (which calculates an array of matrices).
 @ingroup typedefs
 */
typedef TTErr (TTDataObject::*TTMatrixCalculateMethod)(const TTMatrixArray* inputMatrices, TTMatrixArray* outputMatrices);

#define setMatrixCalculateMethod(methodName)	setMatrixCalculate((TTMatrixCalculateMethod)& thisTTClass ::methodName )


/****************************************************************************************************/
// Class Specification

/**	TTDataObject is the base class for all data generating and processing objects.
	It still has knowledge and support for sample-rates, but not channel counts or vector processing.
 */
class TTFOUNDATION_EXPORT TTDataObject : public TTObject {
protected:
	TTMatrixCalculateMethod		mMatrixCalculateMethod;			///< This function pointer points to the active (non-bypass) calculate routine.
	TTMatrixCalculateMethod		mCurrentMatrixCalculateMethod;	///< This function pointer always points to the current calculate routine.
	TTBoolean					mBypass;						///< Are we bypassing the matrix calculation?
	TTMatrixArray*				mInputArray;					///< If the calculate method is passed a matrix, rather than an array of matrices, we wrap it in this array.
	TTMatrixArray*				mOutputArray;					///< If the calculate method is passed a matrix, rather than an array of matrices, we wrap it in this array.
	TTFloat64					mStartProcessingTime;			///< The time at which this object's process method was last invoked (for benchmarking)
	TTFloat64					mAccumulatedProcessingTime;		///< The amount of time spent in this object's process method (for benchmarking)
	TTFloat64					mAccumulatedProcessingCalls;	///< The number of times the process method has been called (for benchmarking)
	TTPtrSizedInt				mReserved1;						///< Reserved -- May be used for something in the future without changing the size of the struct.
	TTPtrSizedInt				mReserved2;						///< Reserved -- May be used for something in the future without changing the size of the struct.

protected:
	/** Object constructor.
	@param arguments			Arguments to the constructor method.
	*/
	TTDataObject(TTValue& arguments);

	
	/** Object destructor. */
	virtual ~TTDataObject();	

	
	/** Set the sample calculate routine to point to a method that is defined as an arg to this function.
	 @param newMatrixCalculateMethod	The new matrix calculation method to use.
	 @return							#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setMatrixCalculate(TTMatrixCalculateMethod newMatrixCalculateMethod);
	
	
	/** Bypass the audio processing routine and copy all input samples to the output unchanged.
	 @param value				Set bypass property for the object, controling whether matrix calculation will be bypassed.
	 @return					#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr setBypass(const TTValue& value);

	
	/** Built-in method to be used when calculation is to bypassed. It simply copied input to output.
	 @param input					Input the calculation routine.
	 @param output					Output from the calculation routine.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	*/
	TTErr bypassMatrixCalculate(const TTMatrixArray* inputs, TTMatrixArray* outputs);
	
	
	/** The default calculation method to use.
	 @param input					Input the calculation routine.
	 @param output					Output from the calculation routine.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr defaultMatrixCalculateMethod(const TTMatrixArray* inputs, TTMatrixArray* outputs);

	
	/** Reset internal values used when benchmarking performance.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr resetBenchmarking();
	
	
	/** Do performance benchmarking.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr getProcessingBenchmark(TTValueRef v);
	
	
public:
	/**
	 @param input					Input the calculation routine.
	 @param output					Output from the calculation routine.
	 @return						#TTErr error code if the method fails to execute, else #kTTErrNone.
	 */
	TTErr calculate(const TTMatrixArray* inputs, TTMatrixArray* outputs);
	TTErr calculate(const TTMatrix& x, TTMatrix& y);
	TTErr calculate(const TTMatrix* x, TTMatrix* y)
	{
		return calculate(*x, *y);
	}

};

/** Pointer to a #TTDataObject.
 @ingroup typedefs
 */
typedef TTDataObject* TTDataObjectPtr;

#endif // __TT_DATA_OBJECT_H__
