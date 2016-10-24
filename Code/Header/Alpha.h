/*This header file is responsible for including all required header files for the alpha library.
Alpha.h is the only header file that needs to be included in an alpha project.
This file includes all required files from the standard library, external libraries, and alpha library files*/

#ifndef NUM
#include "Num.h"
#define NUM
#endif

#ifndef CHAR
#include "Char.h"
#define CHAR
#endif

#ifndef BOOL
#include "Bool.h"
#define BOOL
#endif

#ifndef LIST
#include "List.h"
#define LIST
#endif

#ifndef SYSTEM
#include "System.h"
#define SYSTEM
#endif

#ifndef FUNCTION
#include "Function.h"
#define FUNCTION
#endif

#ifndef ERROR
#include "Error.h"
#define ERROR
#endif

#ifndef STDLIB
#include <stdlib.h>
#define STDLIB
#endif

#ifndef STDIO
#include <stdio.h>
#define STDIO
#endif

#ifndef STDINT
#include <stdint.h>
#define STDINT
#endif

#ifndef STRING
#include <string.h>
#define STRING
#endif
