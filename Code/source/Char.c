#include "Char.h"
#include <stdio.h>

void PrintChar(Char c)
{
    if(c <= 127)
    {
        printf("%c", (char)c);
    }
}
