#ifndef _LINKED_LIST_H
#define _LINKED_LIST_H 1
#include "allocation.h"
#include <stddef.h>
#include <stdbool.h>

typedef struct {
    buffer_t* head;
} buffer_list_t;

bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer);

bool remove_from_buffer_list(buffer_list_t *list, size_t idx);

void free_all_elems_from_list(buffer_list_t *list);
#endif