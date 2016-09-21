#ifndef NUM
#include "Num.h"
#define NUM
#endif

#ifndef LIST
#include "List.h"
#define LIST
#endif

enum ErrorType
{
    ALLOCATION_FAIL = 0,
    SEG_FAULT = 1,
    FILE_ERROR = 2,
    OVERFLOW = 3,
    UNDERFLOW = 4,
    LOGIC_ERROR = 5
};

typedef enum ErrorType ErrorType;

struct Error
{
    const char * message;
    Num code;
    ErrorType type;
};

typedef struct Error Error;

static List * Errors = NULL;

void ReportError(const char * message, Num code, ErrorType type);
