/*This is the source file for the Error type in alpha. An Error represents a specific problem that occured in an application
This file declares an empty static global List of Errors, and creates several functions that can be used with Error variables*/

/*This file includes Error.h for the prototypes and definitions*/
#ifndef ERROR
#include "Error.h"
#define ERROR
#endif

/*This file includes List.h for the alpha List type*/
#ifndef LIST
#include "List.h"
#define LIST
#endif

/*Define an empty static global List of Errors*/
static List * Errors = NULL;

/*Adds an Error to the global Error List
Param message: The message string describing the Error
Param code: The numeric code that corresponds to the Error
Param type: The type of Error*/
void ReportError(const char * message, Num code, ErrorType type)
{
    Error * error = malloc(sizeof(Error));

    error->message = message;
    error->code = code;
    error->type = type;

    Errors = PrependToList(Errors, error);
}
