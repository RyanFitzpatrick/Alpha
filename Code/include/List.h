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
struct List * next represents the next element in the List
Num size is the number of elements in the list, it is only valid on the head of the list*/
struct List
{
    void * data;
    struct List * next;
    Num size;
};

/*Type define struct List as just List*/
typedef struct List List;

/*Creates a new empty List
Returns: A newly allocated empty list*/
List * CreateList();

/*Frees all memory associated with a List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL*/
void FinalizeList(List * head, VoidFunction Finalize);

/*Adds an element to the start of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Returns: A pointer to the start of the updated List*/
List * PrependToList(List * head, void * data);

/*Adds an element to the end of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Returns: A pointer to the start of the updated List*/
List * AppendToList(List * head, void * data);

/*Adds an element to specific position of a list
Param head: A List pointer to the start of a List
Param data: The data to add to the list
Param position: The 0-based index where the new data should be inserted
Returns: A pointer to the start of the updated List*/
List * AddToList(List * head, void * data, Num position);

/*Frees the first element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveFirstFromList(List * head, VoidFunction Finalize);

/*Frees the last element in the List
Param head: A List pointer to the start of a List
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveLastFromList(List * head, VoidFunction Finalize);

/*Frees an element in the List at a specific index
Param head: A List pointer to the start of a List
Param position: The 0-based index of the data to be removed
Param Finalize: A pointer to a function that returns nothing (void) and takes a void pointer as a parameter, this function is responsible for freeing the data in the List, it can not be NULL
Returns: A pointer to the start of the updated List*/
List * RemoveFromList(List * head, Num position, VoidFunction Finalize);

/*Returns The number of elements in the list
Param head: A List pointer to the start of the List
Returns: The number of elements in the List*/
Num GetListLength(List * head);

/*Returns a boolean representing whether or not the list is empty or not
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
List * GetListNext(List * list);

/*Returns the data being stored in a List node
Param list: The List node used to retrieve the data
Returns: The data being stored by a given List node*/
void * GetListData(List * list);
