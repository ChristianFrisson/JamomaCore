/** @file
 *
 * @ingroup foundationLibrary
 *
 * @brief Create Jamoma object instances.
 *
 * @authors Timothy Place
 *
 * @copyright Copyright © 2014, Timothy Place @n
 * This code is licensed under the terms of the "New BSD License" @n
 * http://creativecommons.org/licenses/BSD/
 */

#include "TTMatrix.h"
#include "TTMatrixBase.h"


void TTMatrix::clear()
{
	instance()->clear();
}
