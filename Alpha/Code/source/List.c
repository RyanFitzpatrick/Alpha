#ifndef LIST
#include "List.h"
#define LIST
#endif

List * CreateList()
{
    return NULL;
}

void FinalizeList(List * head, void (*Finalize)(void*))
{
    List * list = head;
    List * next;

    Num size = GetListLength(list);
    Num i;

    for(i = 0; i < size; i++)
    {
        (*Finalize)(list->data);
        next = list->next;
        free(list);
        list = next;
    } 
}

List * PrependToList(List * head, void * data)
{
    List * node = malloc(sizeof(List));

    node->data = data;
    node->next = head;
    node->size = GetListLength(head) + 1;

    return node;
}

List * AppendToList(List * head, void * data)
{
    List * node = malloc(sizeof(List));
    List * list = head;

    Num size = GetListLength(list);
    Num i;

    node->data = data;

    if(size != 0)
    {
        for(i = 1; i < size; i++)
        {
            list = list->next;
        }

        list->next = node;
        head->size++;

        return head;
    }
    else
    {
        node->next = list;
        node->size = 1;
        return node;
    }
}

/*
List * AddToList(List * head, void * data, Num position);

List * RemoveFirstFromList(List * head);

List * RemoveLastFromList(List * head);

List * RemoveFromList(List * head, Num position);
*/

Num GetListLength(List * head)
{
    if(head != NULL)
    {
        return head->size;
    }
    else
    {
        return 0;
    }
}
