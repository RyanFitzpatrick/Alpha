#ifndef LIST
#include "List.h"
#define LIST
#endif

#ifndef ERROR
#include "Error.h"
#define ERROR
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

    if(Finalize == NULL)
    {
        ReportError("Attempting to free list elements with NULL finalizing function, please specify a Finalize function for the data in the list. The list will not be freed", 1, SEG_FAULT);
        return;
    }

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

    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

    node->data = data;
    node->next = head;
    node->size = GetListLength(head) + 1;

    return node;
}

List * AppendToList(List * head, void * data)
{
    List * list = head;
    List * node = malloc(sizeof(List));

    Num size = GetListLength(list);
    Num i;

    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

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

List * AddToList(List * head, void * data, Num position)
{
    List * list = head;
    List * node = malloc(sizeof(List));

    Num size = GetListLength(list);
    Num i;

    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

    if(position > size || position < 0)
    {
        ReportError("The specified position to add the new element is outside the bounds of the list, no element added", 0, SEG_FAULT);
        return head;
    }

    node->data = data;

    if(position == 0)
    {
        node->next = head;
        node->size = size + 1;
        return node;
    }
    else
    {
        for(i = 1; i < position; i++)
        {
            list = list->next;
        }

        node->next = list->next;
        list->next = node;
        return head;
    }
}

/*
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

Bool ListHasElements(List * head)
{
    if(head != NULL)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}
