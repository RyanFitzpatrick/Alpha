/*This is the header file for the Function and VoidFunction types in alpha. These types are just type defines for function pointers that return Num and void respectively
This file type defines a pointer to a function that returns a Num as Function, and defines a pointer to a function that returns nothing as VoidFunction*/

/*This file includes Num.h for the alpha Num type*/
#ifndef NUM
#include "Num.h"
#define NUM
#endif

/*Type defines a pointer to a function that returns a Num variable as just Function*/
typedef Num (*Function)();

/*Type defines a pointer to a function that returns nothing as just VoidFunction*/
typedef void (*VoidFunction)();
