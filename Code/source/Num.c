/*This is the source file for the Num type in alpha. Num is just a redefined form of a 32-bit integer
This file creates several functions that can be used with Num variables (32 bit integers)*/

/*This file includes Num.h for the prototypes and definitions*/
#ifndef NUM
#include "Num.h"
#define NUM
#endif

/*Increments the value of a Num
Param x: the number to be incremented
Returns: The current value of x plus 1*/
Num IncrementNum(Num x)
{
    return ++x;
}

/*Decrements the value of a Num
Param x: the number to be decremented
Returns: The current value of x minus 1*/
Num DecrementNum(Num x)
{
    return --x;
}

/*Add 2 Nums together
Param augend: the first number in the sum
Param addend: the second number in the sum
Returns: the sum of the augend and addend*/
Num AddNum(Num augend, Num addend)
{
    return augend + addend;
}

/*Subtracts 1 Num from another
Param minuend: the number to be subtracted
Param subtrahend: the number being subtracted from the minuend
Returns: the difference of the minuend and subtrahend*/
Num SubtractNum(Num minuend, Num subtrahend)
{
    return minuend - subtrahend;
}

/*Multiplies 2 Nums together
Param multiplier: the first number in the product
Param multiplicand: the second number in the product
Returns: the product of the multiplier and multiplicand*/
Num MultiplyNum(Num multiplier, Num multiplicand)
{
    return multiplier * multiplicand;
}

/*Divides 1 Num from another
Param dividend: the number to be divided   
Param divisor: the number being divided from the dividend
Returns: the quotient of the dividend and divisor*/
Num DivideNum(Num dividend, Num divisor)
{
    return dividend / divisor;
}

/*Returns the remainder after dividing the divdend by the divisor
Param dividend: The number to be divided
Param divisor: The number being divided from the dividend
Returns: The remainder after dividing dividend and divisor (dividend mod divisor)*/
Num ModNum(Num dividend, Num divisor)
{
    return dividend % divisor;
}

/*Bitwise AND of 1 Num and another
Param x: the first number in the AND
Param y: the second number in the AND
Returns: the result of the bitwise AND of x and y*/
Num AndNum(Num x, Num y)
{
    return x & y;
}

/*Bitwise OR of 1 Num and another
Param x: the first number in the OR
Param y: the second number in the OR
Returns: the result of the bitwise OR of x and y*/
Num OrNum(Num x, Num y)
{
    return x | y;
}

/*Bitwise XOR of 1 Num and another
Param x: the first number in the XOR
Param y: the second number in the XOR
Returns: the result of the bitwise XOR of x and y*/
Num XorNum(Num x, Num y)
{
    return x ^ y;
}

/*Takes the negative of a Num
Param x: the number to be negated
Returns: the negative of x*/
Num NegativeNum(Num x)
{
    return -x;
}

/*Takes the NOT of a Num
Param x: the number the NOT operation acts on
Returns: the result of the NOT of x*/
Num NotNum(Num x)
{
    return ~x;
}

/*Takes the logical NOT of a Num
Param x: the number the logical NOT operation acts on
Returns: the result of the logical NOT of x*/
Num LogicalNotNum(Num x)
{
    return !x;
}

/*Left Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the left
Returns: the result of shifting x to the left by y bits*/
Num LeftShiftNum(Num x, Num y)
{
    return x << y;
}

/*Right Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the right
Returns: the result of shifting x to the right by y bits*/
Num RightShiftNum(Num x, Num y)
{
    return x >> y;
}

/*Logically Right Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the right logically
Returns: the result of shifting x to the right logically by y bits*/
Num LogicalRightShiftNum(Num x, Num y)
{
    return (x >> y) & ~(((0x1 << 31) >> y) << 1);
}

/*Left Rotates a number a certain number of times
Param x: the number to be rotated
Param y: the amount of times to rotate x to the left
Returns: the result of rotating x to the left by y bits*/
Num LeftRotateNum(Num x, Num y)
{
    return (x << y) | (x >> (-y & 31));
}

/*Right Rotates a number a certain number of times
Param x: the number to be rotated
Param y: the amount of times to rotate x to the right
Returns: the result of rotating x to the right by y bits*/
Num RightRotateNum(Num x, Num y)
{
    return (x >> y) | (x << (-y & 31));
}

/*Checks to see if 2 numbers are equivalent       
Param x: the number being compared to y 
Param y: the number being compared to x      
Returns: 1 if x and y are equal, 0 otherwise*/
Bool IsNumEqual(Num x, Num y)
{
    return x == y;
}

/*Checks to see if 2 numbers are not equivalent
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x and y are not equal, 0 otherwise*/
Bool IsNumNotEqual(Num x, Num y)
{
    return x != y;
}

/*Checks to see if 1 number is greater than another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is greater than y, 0 otherwise*/
Bool IsNumGreater(Num x, Num y)
{
    return x > y;
}

/*Checks to see if 1 number is less than or equal to another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is less than or equal to y, 0 otherwise*/
Bool IsNumNotGreater(Num x, Num y)
{
    return x <= y;
}

/*Checks to see if 1 number is less than another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is less than y, 0 otherwise*/
Bool IsNumLess(Num x, Num y)
{
    return x < y;
}

/*Checks to see if 1 number is greater than or equal to another
Param x: the number being compared to y
Param y: the number being compared to x
Returns: 1 if x is greater than or equal to y, 0 otherwise*/
Bool IsNumNotLess(Num x, Num y)
{
    return x >= y;
}
