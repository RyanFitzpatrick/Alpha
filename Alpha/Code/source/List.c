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
        node->next = NULL;
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

List * RemoveFirstFromList(List * head, void (*Finalize)(void*))
{
    List * list;
    Num size;

    if(head == NULL)
    {
        ReportError("Attempting to finalize first element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    list = head->next;
    size = head->size;
    (*Finalize)(head->data);
    free(head);

    if(list != NULL)
    {
        list->size = size - 1;
    }

    return list;
}

List * RemoveLastFromList(List * head, void (*Finalize)(void*))
{
    List * list;
    Num size = GetListLength(head);
    Num i;

    if(head == NULL)
    {
        ReportError("Attempting to finalize last element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    if(size == 1)
    {
        (*Finalize)(head->data);
        free(head);
        return NULL;
    }
    else
    {
        list = head;

        for(i = 2; i < size; i++)
        {
            list = list->next;
        }

        (*Finalize)(list->next->data);
        free(list->next);
        list->next = NULL;
        head->size--;

        return head;
    }
}

List * RemoveFromList(List * head, Num position, void (*Finalize)(void*))
{
    List * list;
    List * next;
    Num size = GetListLength(head);
    Num i;

    if(head == NULL)
    {
        ReportError("Attempting to finalize element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    if(position >= size || position < 0)
    {
        ReportError("The specified position to remove the element is outside the bounds of the list, no element removed", 0, SEG_FAULT);
        return head;
    }

    if(position == 0)
    {
        list = head->next;
        size = head->size;
        (*Finalize)(head->data);
        free(head);

        if(list != NULL)
        {
            list->size = size - 1;
        }

        return list;
    }
    else
    {
        list = head;

        for(i = 1; i < size; i++)
        {
            list = list->next;
        }

        next = list->next->next;
        (*Finalize)(list->next);
        free(list->next);
        list->next = next;
        head->size--;

        return head;
    }
}

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
