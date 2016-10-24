/*This is the header file for the List type in alpha. List represents a singlely-linked list data structure
This file type defines the List structure type, and defines several functions that can be used with List variables*/

/*This file includes Num.h for the alpha Num type*/
#ifndef NUM
#include "Num.h"
#define NUM
#endif

/*This file includes Bool.h for the alpha Bool type*/
#ifndef BOOL
#include "Bool.h"
#define BOOL
#endif

/*This file includes Function.h for the alpha VoidFunction type*/
#ifndef FUNCTION
#include "Function.h"
#define FUNCTION
#endif

/*This file includes stdlib.h for memory allocation and deallocation functions*/
#ifndef STDLIB
#include <stdlib.h>
#define STDLIB
#endif

/*This is the definition of the List type structure
void * data represents the data stored in the List element
struct List * next represents the next element in the List*/
struct List
{
    void * data;
    struct List * next;
};

/*Type define struct List as just List*/
typedef struct List List;

/*Creates a new empty List
Returns: A newly allocated empty list*/
List * CreateList();

/*Frees all memory associated with a List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced with a nop*/
void FinalizeList(List * head, VoidFunction Finalize);

/*Adds an element to the start of a List
Param head: A List pointer to the start of a List
Param data: The data to add to the List
Returns: A pointer to the start of the updated List*/
List * AddListNode(List * head, void * data);

/*Frees a List node and its associated data
Param list: A pointer to the List node to be deleted
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, a NULL function will be replaced by a nop*/
void DestroyListNode(List * list, VoidFunction Finalize);

/*Gets a List node at a specific position in the List
Param head: A pointer to the start of a List
Param Position: The index of the node to be retrieved
Returns: A pointer to the List node at index position in the List*/
List * GetListNode(List * head, Num position);

/*Returns The number of elements in the List
Param head: A List pointer to the start of the List
Returns: The number of elements in the List*/
Num GetListLength(List * head);

/*Returns a boolean representing whether or not the List is empty
Param head: A List pointer to the start of the List
Returns: True if the list is not empty (NULL) false otherwise*/
Bool ListHasElements(List * head);

/*Returns a boolean representing whether or not there are more List elements after the current node
Param list: The List node to check
Returns: True if there are more elements in the List and False if there are not or if the List pointer is NULL*/
Bool ListHasNext(List * list);

/*Returns the List node succeeding the current node passed in
Param list: The List used to retrieve the next element in the List
Returns: The element following the node passed in*/
List * GetListNext(List * node);

/*Sets the element proceeding the current List node passed in
Param node: The List node whose proceeding node will be set
Param next: The new proceeding node
Returns: A pointer to the updated List node*/
List * SetListNext(List * node, List * next);

/*Returns the data being stored in a List node
Param list: The List node used to retrieve the data
Returns: The data being stored by a given List node*/
void * GetListData(List * node);

/*Sets the data contained in the current List node passed in
Param node: The List node whose data will be updated
Param data: The new data for the List node*/
List * SetListData(List * node, void * data);
