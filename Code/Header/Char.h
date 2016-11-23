/*This is the header file for the Char type in alpha. Char is just a redefined form of a 16-bit integer meant to represent UTF-16 characters
This file type defines Char as an int16_t type, and defines several functions that can be used with Char variables (16 bit integers)*/

/*This file includes Bool.h for the alpha Bool type*/
#ifndef BOOL
#include "Bool.h"
#define BOOL
#endif

/*This file includes stdint.h for the int16_t type*/
#ifndef STDINT
#include <stdint.h>
#define STDINT
#endif

/*Define Char as an int16_t type*/
typedef int16_t Char;

/*Checks to see if a Char represents an Alphabetic character (A-Z, a-z)
Param c: The Char to be checked
Returns True if c an alphabetic character*/
Bool isCharAlphabetic(Char c);
