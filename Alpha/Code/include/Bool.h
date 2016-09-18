/*This is the header file for the Bool type in alpha. Bool is just a redefined form of a 8-bit integer
This file type defines Bool as an int8_t type, and defines several functions that can be used with Bool variables (8 bit integers)
This header also defines macro constants for TRUE (1) and FALSE (0)*/

/*This file includes stdint.h for the int8_t type*/
#ifndef STDINT
#include <stdint.h>
#define STDINT
#endif

#undef TRUE
#define TRUE 1

#undef FALSE
#define FALSE 0

/*Define Bool as an int8_t type*/
typedef int8_t Bool;
