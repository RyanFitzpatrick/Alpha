/*This is the header file for the Num type in alpha. Num is just a redefined form of a 32-bit integer
This file type defines Num as an int32_t type, and defines several functions that can be used with Num variables (32 bit integers)*/

/*This file includes Bool.h for the alpha Bool type*/
#ifndef BOOL
#include "Bool.h"
#define BOOL
#endif

/*This file includes stdint.h for the int32_t type*/
#ifndef STDINT
#include <stdint.h>
#define STDINT
#endif

/*Define Num as an int32_t type*/
typedef int32_t Num;

/*Increments the value of a Num
Param x: the number to be incremented
Returns: 1 plus the current value of x*/
Num IncrementNum(Num x);

/*Decrements the value of a Num
Param x: the number to be decremented
Returns: 1 minus the current value of x*/
Num DecrementNum(Num x);

/*Add 2 Nums together
Param augend: the first number in the sum
Param addend: the second number in the sum
Returns: the sum of the augend and addend*/
Num AddNum(Num augend, Num addend);

/*Subtracts 1 Num from another
Param minuend: the number to be subtracted
Param subtrahend: the number being subtracted from the minuend
Returns: the difference of the minuend and subtrahend*/
Num SubtractNum(Num minuend, Num subtrahend);

/*Multiplies 2 Nums together
Param multiplier: the first number in the product
Param multiplicand: the second number in the product
Returns: the product of the multiplier and multiplicand*/
Num MultiplyNum(Num multiplier, Num multiplicand);

/*Divides 1 Num from another
Param dividend: the number to be divided
Param divisor: the number being divided from the dividend
Returns: the quotient of the dividend and divisor*/
Num DivideNum(Num dividend, Num divisor);

/*Bitwise AND of 1 Num and another
Param x: the first number in the AND
Param y: the second number in the AND
Returns: the result of the bitwise AND of x and y*/
Num AndNum(Num x, Num y);

/*Bitwise OR of 1 Num and another
Param x: the first number in the OR
Param y: the second number in the OR
Returns: the result of the bitwise OR of x and y*/
Num OrNum(Num x, Num y);

/*Bitwise XOR of 1 Num and another
Param x: the first number in the XOR
Param y: the second number in the XOR
Returns: the result of the bitwise XOR of x and y*/
Num XorNum(Num x, Num y);

/*Takes the negative of a Num
Param x: the number to be negated
Returns: the negative of x*/
Num NegativeNum(Num x);

/*Takes the NOT of a Num
Param x: the number the NOT operation acts on
Returns: the result of the NOT of x*/
Num NotNum(Num x);

/*Takes the logical NOT of a Num
Param x: the number the logical NOT operation acts on
Returns: the result of the logical NOT of x*/
Num LogicalNotNum(Num x);

/*Left Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the left
Returns: the result of shifting x to the left by y bits*/
Num LeftShiftNum(Num x, Num y);

/*Right Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the right
Returns: the result of shifting x to the right by y bits*/
Num RightShiftNum(Num x, Num y);

/*Logically Right Shifts a number a certain number of times
Param x: the number to be shifted
Param y: the amount of times to shift x to the right logically
Returns: the result of shifting x to the right logically by y bits*/
Num LogicalRightShiftNum(Num x, Num y);

/*Left Rotates a number a certain number of times
Param x: the number to be rotated
Param y: the amount of times to rotate x to the left
Returns: the result of rotating x to the left by y bits*/
Num LeftRotateNum(Num x, Num y);

/*Right Rotates a number a certain number of times
Param x: the number to be rotated
Param y: the amount of times to rotate x to the right
Returns: the result of rotating x to the right by y bits*/
Num RightRotateNum(Num x, Num y);

/*Checks to see if 2 numbers are equivalent
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x and y are equal, 0 otherwise*/
Bool IsEqual(Num x, Num y);

/*Checks to see if 2 numbers are not equivalent
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x and y are not equal, 0 otherwise*/
Bool IsNotEqual(Num x, Num y);

/*Checks to see if 1 number is greater than another
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x is greater than y, 0 otherwise*/
Bool IsGreater(Num x, Num y);

/*Checks to see if 1 number is less than or equal to another
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x is less than or equal to y, 0 otherwise*/
Bool IsNotGreater(Num x, Num y);

/*Checks to see if 1 number is less than another
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x is less than y, 0 otherwise*/
Bool IsLess(Num x, Num y);

/*Checks to see if 1 number is greater than or equal to another
Param x: the number being comapred to y
Param y: the number being compared to x
Returns: 1 if x is greater than or equal to y, 0 otherwise*/
Bool IsNotLess(Num x, Num y);
