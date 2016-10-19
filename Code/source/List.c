/*This is the source file for the List type in alpha. List represents a singlely-linked List data structure
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

/*Adds an element to the start of a List
Param head: A List pointer to the start of a List
Param data: The data to add to the List
Returns: A pointer to the start of the updated List*/
List * AddListNode(List * head, void * data)
{
    List * node = NULL;

    /*Report an error and return NULL if the list to be added to is NULL*/
    if(head == NULL)
    {
        ReportError("Attempting to add to NULL List, please use CreateList() before adding data to a list", 0, SEG_FAULT);
        return NULL;
    }

    if(head->data != NULL)
    {
        node = malloc(sizeof(List));

        /*Report an error and return without adding the element if memory couldn't be allocated for it*/
        if(node == NULL)
        {
            ReportError("Could not allocate space for new list element, no element added", 0, ALLOCATION_FAIL);
            return head;
        }

        /*Add the element if the List is not empty*/
        node->data = data;
        node->next = head;

        return node;
    }
    else
    {
        /*Add the data to the empty List*/
        head->data = data;
        head->next = NULL;

        return head;
    }
}

/*Frees a List node and its associated data
Param list: A pointer to the List node to be deleted
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced by a nop*/
void DestroyListNode(List * node, VoidFunction Finalize)
{
    /*Report an error and return without freeing if the List is empty (NULL)*/
    if(node == NULL)
    {
        ReportError("Attempting to finalize NULL List node, nothing will happen", 0, SEG_FAULT);
        return;
    }

    if(Finalize == NULL)
    {
        /*Replace NULL finalize functions with a nop*/
        Finalize = &Nop;
    }

    /*Free all memory associated with the List node*/
    Finalize(node->data);
    free(node);
    node = NULL;
}

/*Gets a List node at a specific position in the List
Param head: A pointer to the start of a List
Param Position: The index of the node to be retrieved
Returns: A pointer to the List node at index position in the List*/
List * GetListNode(List * head, Num position)
{
    List * list = head;
    Num size;
    Num i;

    /*Report an error and return if the List is empty (NULL)*/
    if(head == NULL)
    {
        ReportError("Attempting to get node from NULL List", 0, SEG_FAULT);
        return head;
    }

    /*Report an error and return NULL if position is less than zero*/
    if(position < 0)
    {
        ReportError("Position cannot be less than zero when getting List node, position must be greater than zero and less than the size of the List", 0, SEG_FAULT);
        return NULL;
    }

    /*Get the number of elements in the list*/
    size = GetListLength(list);

    /*Report an error and reurn NULL if position is greater than or equal to the size of the List*/
    if(position >= size)
    {
        ReportError("Position cannot be greater than or equal to List length when getting List node, position must be greater than zero and less than the size of the List", 0, SEG_FAULT);
        return NULL;
    }

    for(i = 0; i < position; i++)
    {
        /*Find the node at the specified index*/
        list = list->next;
    }

    return list;
}

/*Returns The number of elements in the List
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

/*Returns a boolean representing whether or not the List is empty
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
        /*Return True if the List is not NULL and has data*/
        return TRUE;
    }
    else
    {
        /*Return False if the List is NULL or empty*/
        return FALSE;
    }
}

/*Returns the List node succeeding the current node passed in
Param list: The List used to retrieve the next element in the List
Returns: The element following the node passed in*/
List * GetListNext(List * node)
{
    if(node == NULL)
    {
        /*Report an error and return NULL if the List node is NULL*/
        ReportError("Attempting to get next element from NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        /*Return the proceeding List node*/
        return node->next;
    }
}

/*Sets the element proceeding the current List node passed in
Param node: The List node whose proceeding node will be set
Param next: The new proceeding node
Returns: A pointer to the updated List node*/
List * SetListNext(List * node, List * next)
{
    if(node == NULL)
    {
        /*Report an error and return NULL if the List node is NULL*/
        ReportError("Attempting to set next element of a NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        /*Update the proceeding List node*/
        node->next = next;
        return node;
    }
}

/*Returns the data being stored in a List node
Param list: The List node used to retrieve the data
Returns: The data being stored by a given List node*/
void * GetListData(List * node)
{
    if(node == NULL)
    {
        /*Report an error and return NULL if the List node is NULL*/
        ReportError("Attempting to get data from NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        /*Return the List node data*/
        return node->data;
    }
}

/*Sets the data contained in the current List node passed in
Param node: The List node whose data will be updated
Param data: The new data for the List node*/
List * SetListData(List * node, void * data)
{
    if(node == NULL)
    {
        /*Report an error and return NULL if the List node is NULL*/
        ReportError("Attempting to set data of a NULL List Pointer, NULL returned", 0, SEG_FAULT);
        return NULL;
    }
    else
    {
        /*Update the List Node*/
        node->data = data;
        return node;
    }
}
