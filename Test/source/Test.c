#include "Alpha.h"

int main()
{
    List * list = NULL;
    Num * numbers[10];
    Num i;

    for(i = 0; i < 10; i++)
    {
        numbers[i] = malloc(sizeof(int));
        *numbers[i] = i;
    }

    printf("START OF TESTS\n");

    list = CreateList();

    for(i = 0; i < 10; i++)
    {
        list = PrependToList(list, numbers[i]);
    }

    FinalizeList(list, &free);

    printf("END OF TESTS\n");

    return 0;
}
