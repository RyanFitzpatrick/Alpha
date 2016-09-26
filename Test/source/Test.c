#include "Alpha.h"

int main()
{
    List * list = NULL;
    Num ** numbers = NULL;
    Num i;

    numbers = malloc(sizeof(int*) * 10);
    for(i = 0; i < 10; i++)
    {
        numbers[i] = malloc(sizeof(int));
        *numbers[i] = i;
    }

    printf("START OF TESTS\n");

    list = CreateList(list, numbers[0]);

    for(i = 1; i < 10; i++)
    {
        list = PrependToList(list, numbers[i]);
    }

    FinalizeList(list, &free);

    printf("END OF TESTS\n");
    free(numbers);

    return 0;
}
