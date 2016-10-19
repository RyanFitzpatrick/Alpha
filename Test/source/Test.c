#include "Alpha.h"

int main()
{
    List * list = NULL;
    List * temp = NULL;
    Num data[10];
    Num i = 0;
    Num * x = data;

    printf("START OF TESTS\n");

    printf("Executing CreateList Tests\n");
    list = CreateList();

    printf("CreateList NULL Test ");
    if(list != NULL)
    {
        printf("%sPASSED\n%s", "\x1B[32m", "\x1B[0m");
    }
    else
    {
        printf("%sFAILED\n%s", "\x1B[31m", "\x1B[0m");
    }

    for(i = 0; i < 10; i++)
    {
        data[i] = 10 - i;
        list = AddListNode(list, &data[i]);
    }

    temp = list;

    while(ListHasNext(temp))
    {
        x = GetListData(temp);
        printf("Data: %d\n", *x);
        temp = GetListNext(temp);
    }

    FinalizeList(list, NULL);

    printf("END OF TESTS\n");

    return 0;
}
