/**
 * @author Colin Sergi
 * 
 * A structure and related functions to allocations
 */
#ifndef _ALLOCATION_H 
#define _ALLOCATION_H 1
#include <stddef.h>
typedef struct buffer_t{
    __xdata char *buffer;
    size_t alphabet_chars; 
    size_t size;
    size_t curr_available_char; 
    struct buffer_t *next;
} buffer_t; 
#endif