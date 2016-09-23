/*This is the header file for the Error type in alpha. An Error represents a specific problem that occured in an application
This file type defines the Error type structure and an ErrorType enumeration, and defines several functions that can be used with Error variables*/

/*This file includes Num.h for the alpha Num type*/
#ifndef NUM
#include "Num.h"
#define NUM
#endif

/*This is the Error Type enum that defines enumerated constants for common types of errors*/
enum ErrorType
{
    ALLOCATION_FAIL = 0,
    SEG_FAULT = 1,
    FILE_ERROR = 2,
    OVERFLOW = 3,
    UNDERFLOW = 4,
    LOGIC_ERROR = 5
};

/*Type define enum ErrorType as just ErrorType*/
typedef enum ErrorType ErrorType;

/*This is the definition of the Error type structure
Const Char * message represents the message describing the Error
Num code represents an exact numeric code for the Error
ErrorType type is the Type of Error that occured*/
struct Error
{
    const char * message;
    Num code;
    ErrorType type;
};

/*Type define struct Error as just Error*/
typedef struct Error Error;

/*Adds an Error to the global Error List
Param message: The message string describing the Error
Param code: The numeric code that corresponds to the Error
Param type: The type of Error*/
void ReportError(const char * message, Num code, ErrorType type);
