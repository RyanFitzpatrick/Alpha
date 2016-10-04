/*This is the source file for the List type in alpha. List represents a singlely-linked list data structure
This file creates several functions that can be used with List variables*/

/*This file includes List.h for the prototypes and definitions*/
#ifndef LIST
#include "List.h"
#define LIST
#endif

/*This file includes System.h for the Nop function*/
#ifndef SYSTEM
#include "System.h"
#define SYSTEM
#endif

/*This file includes Error.h for the error type and error functions*/
#ifndef ERROR
#include "Error.h"
#define ERROR
#endif

/*Creates a new empty List
Returns: A newly allocated empty list*/
List * CreateList()
{
    List * list = malloc(sizeof(List));

    list->data = NULL;
    list->next = NULL;

    return list;
}

/*Frees all memory associated with a List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced with a nop*/
void FinalizeList(List * head, VoidFunction Finalize)
{
    List * list = head;
    List * next;

    /*Report an error and return in the event an unallocated List was finalized*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize NULL List, nothing will happen", 0, SEG_FAULT);
        return;
    }

    if(Finalize == NULL)
    {
        /*Replace NULL finalize functions with a nop*/
        Finalize = &Nop;
    }

    /*For each element in the list, free the data, and free the element itself*/
    while(list != NULL)
    {
        Finalize(list->data);
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
    List * node = NULL;

    /*Report an error and return NULL if the list to be added to is NULL*/
    if(head == NULL)
    {
        ReportError("Atempting to add to NULL List, please use CreateList() before adding data to a list", 0, SEG_FAULT);
        return NULL;
    }

    if(node->data != NULL)
    {
        node = malloc(sizeof(List));

        /*Report an error and return without adding the element if memory couldn't be allocated for it*/
        if(node == NULL)
        {
            ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
            return head;
        }

        /*Add the element and increment the List size if the List is not empty*/
        node->data = data;
        node->next = head;

        return node;
    }
    else
    {
        /*Add the data to the empty List and set the size to be 1*/
        head->data = data;
        head->next = NULL;

        return head;
    }
}

/*Adds an element to the end of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Returns: A pointer to the start of the updated List*/
List * AppendToList(List * head, void * data)
{
    List * list = head;
    List * node = NULL;

    /*Report an error and return NULL if the list to be added to is NULL*/
    if(head == NULL)
    {
        ReportError("Atempting to add to NULL List, please use CreateList() before adding data to a list", 0, SEG_FAULT);
        return NULL;
    }

    if(list->data != NULL)
    {
        node = malloc(sizeof(List));

        /*Report an error and return without adding the element if memory couldn't be allocated for it*/
        if(node == NULL)
        {
            ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
            return head;
        }

        /*If the list is not empty find the end*/
        while(list->next != NULL)
        {
            list = list->next;
        }

        /*Add the element and increment the list size*/
        list->next = node;
        node->data = data;
        node->next = NULL;

        return head;
    }
    else
    {
        /*If the list is empty simply add the element and return*/
        head->data = data;
        head->next = NULL;

        return head;;
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
    List * node = NULL;
    Num i;

    /*Report an error and return NULL if the list to be added to is NULL*/
    if(head == NULL)
    {
        ReportError("Atempting to add to NULL List, please use CreateList() before adding data to a list", 0, SEG_FAULT);
        return NULL;
    }

    /*Report an error and return without adding if the specified add position is less than zero*/
    if(position < 0)
    {
        ReportError("The specified position to add the new element is outside the bounds of the list, no element added", 0, SEG_FAULT);
        return head;
    }

    if(list->data != NULL)
    {
        /*Allocate the List node*/
        node = malloc(sizeof(List));

        /*Report an error and return without adding the element if memory couldn't be allocated for it*/
        if(node == NULL)
        {
            ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
            return head;
        }

        /*Add data to the list node*/
        node->data = data;

        if(position != 0)
        {
            /*Find the index in the List*/
            for(i = 1; i < position; i++)
            {
                /*Report an error and return without adding if the specified add position is outside the bounds of the List*/
                if(list == NULL)
                {
                    ReportError("The specified position to add the new element is outside the bounds of the list, no element added", 0, SEG_FAULT);
                    return head;
                }

                list = list->next;
            }

            /*Add the element at the required index*/
            node->next = list->next;
            list->next = node;

            return list;
        }
        else
        {
            /*Add the node to the front of the List*/
            node->next = head;
            return node;
        }
    }
    else
    {
        /*If the List is empty add the data to the List and set the size to 1*/
        head->data = data;
        head->next = NULL;

        return head;
    }
}

/*Frees the first element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced by a nop
Returns: A pointer to the start of the updated List*/
List * RemoveFirstFromList(List * head, VoidFunction Finalize)
{
    List * list;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize first element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        /*Replace NULL finalize functions with a nop*/
        Finalize = &Nop;
    }

    /*Remove the first element*/
    list = head->next;
    Finalize(head->data);
    free(head);

    return list;
}

/*Frees the last element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced by a nop
Returns: A pointer to the start of the updated List*/
List * RemoveLastFromList(List * head, VoidFunction Finalize)
{
    List * list;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize last element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        /*Replace NULL finalize functions with a nop*/
        Finalize = &Nop;
    }

    list = head;

    if(list->next == NULL)
    {
        /*If the list only has one element remove it and return an empty List (NULL)*/
        Finalize(head->data);
        free(head);
        return NULL;
    }
    else
    {
        /*Find the end of the List*/
        while(list->next->next != NULL)
        {
            list = list->next;
        }

        /*Remove the last element and decrement the size of the List*/
        Finalize(list->next->data);
        free(list->next);
        list->next = NULL;

        return head;
    }
}

/*Frees an element in the List at a specific index
Param head: A List pointer to the start of a List
Param position: The 0-based index of the data to be removed
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced by a nop
Returns: A pointer to the start of the updated List*/
List * RemoveFromList(List * head, Num position, VoidFunction Finalize)
{
    List * list;
    List * next;
    Num i;

    /*Report an error and return without freeng if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to finalize element in NULL list, nothing will happen", 1, SEG_FAULT);
        return head;
    }

    if(Finalize == NULL)
    {
        /*Replace NULL finalize functions with a nop*/
        Finalize = &Nop;
    }

    /*Report an error and return without freeing if the specified remove position is less than zero*/
    if(position < 0)
    {
        ReportError("The specified position to remove the element is outside the bounds of the list, no element removed", 0, SEG_FAULT);
        return head;
    }

    if(position == 0)
    {
        /*Finalize the data in the node*/
        Finalize(head->data);

        if(head->next != NULL)
        {
            /*If the list has more than one node then remove the node*/
            list = head->next;
            free(head);
            return list;
        }
        else
        {
            /*If the list only has one node return the empty list*/
            return head;
        }
    }
    else
    {
        /*Find the index in the List*/
        for(i = 0; i < position; i++)
        {
            /*Report an error and return without removing if the specified add position is outside the bounds of the List*/
            if(list->next == NULL)
            {
                ReportError("The specified position to remove the element is outside the bounds of the list, no element added", 0, SEG_FAULT);
                return head;
            }

            list = list->next;
        }

        /*Add the element at the required index*/
        next = list->next;
        list->next = next->next;
        Finalize(next->data);
        free(next);

        return head;
    }
}

/*Returns The number of elements in the list
Param head: A List pointer to the start of the List
Returns: The number of elements in the List*/
Num GetListLength(List * head)
{
    List * list;
    Num size = 0;

    if(head != NULL && head->data != NULL)
    {
        list = head;

        /*If the List is not empty then count all the nodes*/
        while(list != NULL)
        {
            list = list->next;
            size++;
        }

        /*Return the count*/
        return size;
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
    if(head != NULL && head->data != NULL)
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

/*Returns a boolean representing whether or not there are more List elements after the current node
Param list: The List node to check
Returns: True if there are more elements in the List and False if there are not or if the List pointer is NULL*/
Bool ListHasNext(List * list)
{
    if(list != NULL && list->next != NULL)
    {
        return TRUE;
    }
    else
    {
        return FALSE;
    }
}

/*Returns the List node succeeding the current node passed in
Param list: The List used to retrieve the next element in the List
Returns: The element following the node passed in*/
List * GetListNext(List * list)
{
    if(list == NULL)
    {
        ReportError("Attempting to get next element from NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        return list->next;
    }
}

/*Returns the data being stored in a List node
Param list: The List node used to retrieve the data
Returns: The data being stored by a given List node*/
void * GetListData(List * list)
{
    if(list == NULL)
    {
        ReportError("Attempting to get data from NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        return list->data;
    }
}
