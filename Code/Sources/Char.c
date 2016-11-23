#include "Char.h"

/*Checks to see if a Char represents an Alphabetic character (A-Z, a-z)
Param c: The Char to be checked
Returns True if c an alphabetic character*/
Bool isCharAlphabetic(Char c)
{
    return (c >= 65 && c <= 90) || (c >= 97 && c <= 122);
}
