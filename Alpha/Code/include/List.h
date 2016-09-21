#ifndef NUM
#include "Num.h"
#define NUM
#endif

#ifndef STDLIB
#include <stdlib.h>
#define STDLIB
#endif

struct List
{
    void * data;
    struct List * next;
    Num size;
};

typedef struct List List;

List * CreateList();

void FinalizeList(List * head, void (*Finalize)(void*));

List * PrependToList(List * head, void * data);

List * AppendToList(List * head, void * data);

/*
List * AddToList(List * head, void * data, Num position);

List * RemoveFirstFromList(List * head);

List * RemoveLastFromList(List * head);

List * RemoveFromList(List * head, Num position);
*/

Num GetListLength(List * head);
