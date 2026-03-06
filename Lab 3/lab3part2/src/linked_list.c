#include "linked_list.h"
#include <stdlib.h>
#include <stdio.h>

bool append_to_buffer_list(buffer_list_t *list, buffer_t *buffer)
{
    if (list->head == NULL) 
    {
        list->head = buffer; 
    } 
    else
    {
        buffer_t *tail = list->head;
        while(tail->next != NULL)
        {
            tail = tail->next;
        }
        tail->next = buffer;
    }
    buffer->next = NULL; 
    return true;
}


bool remove_from_buffer_list(buffer_list_t *list, size_t idx)
{
    if (list == NULL) return false;
    if (list->head == NULL) return false;

    buffer_t *to_free = NULL;
    if (idx == 0)
    {
        
        to_free = list->head;
        list->head = list->head->next;  
    }
    else
    {
        buffer_t *prev = list->head;
        idx--;
        while(idx > 0 && prev->next != NULL)
        {
            prev = prev->next;
            idx--;
        }

        if (idx != 0) return false;
        to_free = prev->next;
        prev->next = to_free->next;
    }

    if (to_free == NULL) return false; 
    if (to_free->buffer != NULL) 
    {
        free(to_free->buffer);
    }
    free(to_free);
    return true; 
}

void free_all_elems_from_list(buffer_list_t *list)
{
    buffer_t *buffer_to_free = list->head;
    while(list->head != NULL)
    {
        list->head = list->head->next;
        if (buffer_to_free->buffer != NULL)
        {
            free(buffer_to_free->buffer);
        }
        free(buffer_to_free);
        buffer_to_free = list->head;
    }
}