/*This is the source file for the Real type in alpha. Real is just a redefined form of a double precision (64-bit) floating point number
This file creates several functions that can be used with Real variables (64 bit floating point number)*/

/*This file includes Real.h for the prototypes and definitions*/
#ifndef REAL
#include "Real.h"
#define REAL
#endif

/*Increments the value of a Real
Param x: the number to be incremented
Returns: The current value of x plus 1*/
Real IncrementReal(Real x)
{
    return ++x;
}

/*Decrements the value of a Real
Param x: the number to be decremented
Returns: The current value of x minus 1*/
Real DecrementReal(Real x)
{
    return --x;
}

/*Add 2 Reals together
Param augend: the first number in the sum
Param addend: the second number in the sum
Returns: the sum of the augend and addend*/
Real AddReal(Real augend, Real addend)
{
    return augend + addend;
}

/*Subtracts 1 Real from another
Param minuend: the number to be subtracted
Param subtrahend: the number being subtracted from the minuend
Returns: the difference of the minuend and subtrahend*/
Real SubtractReal(Real minuend, Real subtrahend)
{
    return minuend - subtrahend;
}

/*Multiplies 2 Reals together
Param multiplier: the first number in the product
Param multiplicand: the second number in the product
Returns: the product of the multiplier and multiplicand*/
Real MultiplyReal(Real multiplier, Real multiplicand)
{
    return multiplier * multiplicand;
}

/*Divides 1 Real from another
Param dividend: the number to be divided   
Param divisor: the number being divided from the dividend
Returns: the quotient of the dividend and divisor*/
Real DivideReal(Real dividend, Real divisor)
{
    return dividend / divisor;
}

/*Takes the negative of a Real
Param x: the number to be negated
Returns: the negative of x*/
Real NegativeReal(Real x)
{
    return -x;
}

/*Takes the logical NOT of a Real
Param x: the number the logical NOT operation acts on
Returns: the result of the logical NOT of x*/
Num LogicalNotReal(Real x)
{
    return !x;
}

/*Checks to see if 2 Reals are equivalent       
Param x: the number being compared to y 
Param y: the number being compared to x      
Returns: 1 if x and y are equal, 0 otherwise*/
Bool IsRealEqual(Real x, Real y)
{
    return x == y;
}

/*Checks to see if 2 Reals are not equivalent
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x and y are not equal, 0 otherwise*/
Bool IsRealNotEqual(Real x, Real y)
{
    return x != y;
}

/*Checks to see if 1 Real is greater than another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is greater than y, 0 otherwise*/
Bool IsRealGreater(Real x, Real y)
{
    return x > y;
}

/*Checks to see if 1 Real is less than or equal to another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is less than or equal to y, 0 otherwise*/
Bool IsRealNotGreater(Real x, Real y)
{
    return x <= y;
}

/*Checks to see if 1 Real is less than another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is less than y, 0 otherwise*/
Bool IsRealLess(Real x, Real y)
{
    return x < y;
}

/*Checks to see if 1 Real is greater than or equal to another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is greater than or equal to y, 0 otherwise*/
Bool IsRealNotLess(Real x, Real y)
{
    return x >= y;
}
