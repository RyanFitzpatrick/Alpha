/*This is the source file for the List type in alpha. List represents a singlely-linked list data structure
This file creates several functions that can be used with List variables*/

/*This file includes List.h for the prototypes and definitions*/
#ifndef LIST
#include "List.h"
#define LIST
#endif

/*This file includes Error.h for the error type and error functions*/
#ifndef ERROR
#include "Error.h"
#define ERROR
#endif

/*Creates an empty (NULL) List
Returns: An empty List (NULL)*/
List * CreateList()
{
    return NULL;
}

/*Frees all memory associated with a List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL*/
void FinalizeList(List * head, void (*Finalize)(void*))
{
    List * list = head;
    List * next;

    Num size = GetListLength(list);
    Num i;

    /*Report an error and return if the finalize function is NULL*/
    if(Finalize == NULL)
    {
        ReportError("Attempting to free list elements with NULL finalizing function, please specify a Finalize function for the data in the list. The list will not be freed", 1, SEG_FAULT);
        return;
    }

    /*For each element in the list, free the data, and free the element itself*/
    for(i = 0; i < size; i++)
    {
        (*Finalize)(list->data);
        next = list->next;
        free(list);
        list = next;
    } 
}

/*Adds an element to the start of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Returns: A pointer to the start of the updated List*/
List * PrependToList(List * head, void * data)
{
    List * node = malloc(sizeof(List));

    /*Report an error and return without adding the element if memory couldn't be allocated for it*/
    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

    /*Add the element and increment the list size*/
    node->data = data;
    node->next = head;
    node->size = GetListLength(head) + 1;

    return node;
}

/*Adds an element to the end of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Returns: A pointer to the start of the updated List*/
List * AppendToList(List * head, void * data)
{
    List * list = head;
    List * node = malloc(sizeof(List));

    Num size = GetListLength(list);
    Num i;

    /*Report an error and return without adding the element if memory couldn't be allocated for it*/
    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

    node->data = data;

    if(size != 0)
    {
        /*If the list is not empty find the end*/
        for(i = 1; i < size; i++)
        {
            list = list->next;
        }

        /*Add the element and increment the list size*/
        list->next = node;
        node->next = NULL;
        head->size++;

        return head;
    }
    else
    {
        /*If the list is empty simply add the element and return*/
        node->next = list;
        node->size = 1;
        return node;
    }
}

/*Adds an element to specific position of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Param position: The 0-based index where the new data should be inserted
Returns: A pointer to the start of the updated List*/
List * AddToList(List * head, void * data, Num position)
{
    List * list = head;
    List * node = malloc(sizeof(List));

    Num size = GetListLength(list);
    Num i;

    /*Report an error and return without adding the element if memory couldn't be allocated for it*/
    if(node == NULL)
    {
        ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
        return head;
    }

    /*Report an error and return without adding if the specified add position is less than zero or greather than the size of the list*/
    if(position > size || position < 0)
    {
        ReportError("The specified position to add the new element is outside the bounds of the list, no element added", 0, SEG_FAULT);
        return head;
    }

    node->data = data;

    if(position == 0)
    {
        /*If position is zero add the element to the start and return*/
        node->next = head;
        node->size = size + 1;
        return node;
    }
    else
    {
        /*Find the index in the List*/
        for(i = 1; i < position; i++)
        {
            list = list->next;
        }

        /*Add the element at the required index*/
        node->next = list->next;
        list->next = node;
        return head;
    }
}

/*Frees the first element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveFirstFromList(List * head, void (*Finalize)(void*))
{
    List * list;
    Num size;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize first element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    /*Report an error and return if the finalize function is NULL*/
    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    /*Remove the first element*/
    list = head->next;
    size = head->size;
    (*Finalize)(head->data);
    free(head);

    /*Decrement the size of the list if it is not empty (NULL)*/
    if(list != NULL)
    {
        list->size = size - 1;
    }

    return list;
}

/*Frees the last element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveLastFromList(List * head, void (*Finalize)(void*))
{
    List * list;
    Num size = GetListLength(head);
    Num i;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize last element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    /*Report an error and return if the finalize function is NULL*/
    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    if(size == 1)
    {
        /*If the list only has one element remove it and return an empty List (NULL)*/
        (*Finalize)(head->data);
        free(head);
        return NULL;
    }
    else
    {
        list = head;

        /*Find the end of the List*/
        for(i = 2; i < size; i++)
        {
            list = list->next;
        }

        /*Remove the last element and decrement the size of the List*/
        (*Finalize)(list->next->data);
        free(list->next);
        list->next = NULL;
        head->size--;

        return head;
    }
}

/*Frees an element in the List at a specific index
Param head: A List pointer to the start of a List
Param position: The 0-based index of the data to be removed
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveFromList(List * head, Num position, void (*Finalize)(void*))
{
    List * list;
    List * next;
    Num size = GetListLength(head);
    Num i;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    /*Report an error and return if the finalize function is NULL*/
    if(Finalize == NULL)
    {
        ReportError("Attempting to finalize list element with NULL finalizing function, please specify a Finalize function for the data in the list. The list element will not be freed", 1, SEG_FAULT);
        return head;
    }

    /*Report an error and return without freeing if the specified remove position is less than zero or greather than the size of the list*/
    if(position >= size || position < 0)
    {
        ReportError("The specified position to remove the element is outside the bounds of the list, no element removed", 0, SEG_FAULT);
        return head;
    }

    if(position == 0)
    {
        /*If the start of the list is specified remove the first element*/
        list = head->next;
        size = head->size;
        (*Finalize)(head->data);
        free(head);

        /*If the list is not empty (NULL) decrement the size*/
        if(list != NULL)
        {
            list->size = size - 1;
        }

        return list;
    }
    else
    {
        list = head;

        /*Find the specified index in the List*/
        for(i = 1; i < size; i++)
        {
            list = list->next;
        }

        /*Remove the element at the specified position and decrement the size of the List*/
        next = list->next->next;
        (*Finalize)(list->next);
        free(list->next);
        list->next = next;
        head->size--;

        return head;
    }
}

/*Returns The number of elements in the list
Param head: A List pointer to the start of the List
Returns: The number of elements in the List*/
Num GetListLength(List * head)
{
    if(head != NULL)
    {
        /*If the List is not empty return it's size value*/
        return head->size;
    }
    else
    {
        /*A NULL List is empty and has zero elements*/
        return 0;
    }
}

/*Returns a boolean reprsenting whether or not the list is empty or not
Param head: A List pointer to the start of the List
Returns: True if the list is not empty (NULL) false otherwise*/
Bool ListHasElements(List * head)
{
    if(head != NULL)
    {
        /*If the List is not NULL then it is not empty and has elements*/
        return TRUE;
    }
    else
    {
        /*If the List is NULL then it is empty and has no elements*/
        return FALSE;
    }
}
