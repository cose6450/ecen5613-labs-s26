/**
 * @author Colin Sergi
 * 
 * An API for a linked list of buffers
 */

#ifndef _LINKED_LIST_H
#define _LINKED_LIST_H 1
#include "allocation.h"
#include <stddef.h>
#include <stdbool.h>

typedef struct {
    buffer_t* head;
} buffer_list_t;

/**
 * append_to_buffer_list - append a buffer to a buffer list 
 * 
 * buffer_list_t *list - list to operate on
 * buffer_t *buffer - buffer to add
 * 
 * return - bool - whether or not the buffer was successfully added
 */
bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer);

/**
 * remove_from_buffer_list - remove and free a buffer from a buffer list
 * 
 * buffer_list_t *list - list to operate on
 * size_t idx - what idx to remove
 * 
 * 
 * return - bool - whether or not the buffer was successfully remove
 */
bool remove_from_buffer_list(buffer_list_t *list, size_t idx);

/**
 * free_all_elems_from_list - free all elements from a list
 * buffer_list_t *list - list to operate on
 * 
 * return - void - returns nothing
 */
void free_all_elems_from_list(buffer_list_t *list);

/**
 * ll_length - return the length of the linked list
 * buffer_list_t *list - list to operate on
 * return - size_t - the length of the list
 */
size_t ll_length(buffer_list_t *list);

/**
 * ll_get_elem - return the length of the element
 * 
 * buffer_list_t *list - list to operate on
 * size_t elem_num - what element to return
 * 
 * return - buffer_t* - the buffer in the list
 * 
 */
buffer_t* ll_get_elem(buffer_list_t *list, size_t elem_num);
#endif