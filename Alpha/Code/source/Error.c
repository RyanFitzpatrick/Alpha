#ifndef ERROR
#include "Error.h"
#define ERROR
#endif

static List * Errors = NULL;

void ReportError(const char * message, Num code, ErrorType type)
{
    Error * error = malloc(sizeof(Error));

    error->message = message;
    error->code = code;
    error->type = type;

    Errors = PrependToList(Errors, error);
}
