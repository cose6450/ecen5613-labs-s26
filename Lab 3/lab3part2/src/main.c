/*
 * Author Nalin Saxena & Colin Sergi
 * ECEN 5613 - Fall 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *
 * Necessary preconditions-
 * 1. Paulmon should be running first to make use of this code (Serial peripheral initialization is handled via paulmon2).
 * 2. Necessary hardware changes have to be made to use SRAM as external data storage device.
 *
 * Building and flashing instructions-
 *
 * 1. Simply run "make" on your cli and use flip to flash the resulting output.hex file on your board
 * 2. Use Paulmon2 to jump to location 2000
 *
 * The following test program/starter code introduces many important concepts with the SDCC compiler
 * We begin by testing our heap memory and malloc configuration, by allocating a fixed number
 * of elements (COUNT_ELEMENTS_MALLOC) and storing ascii character starting from 'a' and we echo it
 * back over serial.
 *
 * Error message is printed if malloc operation fails and the code flow jumps to the
 * timer isr test.
 *
 * For the timer ISR test section of this code, we utilize TIMER0 in Mode 1 and we generate a
 * base timer interrupt of approximately 50000μs. It is a good practice to keep ISR functions short and
 * hence this ISR just signals required operation to be done via global flags.The main function actually does the
 * job of "acting" on those flags if required.
 *
 * SDCC User Manual - https://sdcc.sourceforge.net/doc/sdccman.pdf
 * A guide to make files- https://www.youtube.com/watch?v=_r7i5X0rXJk&t=226s
 *
 * SDCC version - 4.2.0
 * make version- GNU Make version 3.77
   ---------------------------------------------------------------------------------*/

#include "my_serial.h"
#include <stdio.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdbool.h>
#include "input.h"
#include "string.h"
#include "heap.h"
/*
[Important Note] if you have made this change via paulmon2 you can comment this section

setting all 1024 of internal xram
*/
int _sdcc_external_startup()
{
    // AUXR |= 0X0C;
    return 0;
}

extern __xdata char __sdcc_heap[HEAP_SIZE];

#define USER_BUFFER_MIN (64)
#define USER_BUFFER_MAX (1024)
#define USER_BUFFER_ALIGNMENT (32)
#define BUFFER_COUNT (6)
#define MODULE_32(x) ((x) & (31))
#define MAX_STUDENT_NUMBER (99)
#define BUFFER_SZ_TOO_BIG ("\r\nBuffer Size too big, please pick a smaller buffer size")

typedef struct{
    __xdata char *buffer;
    size_t size;
} buffer_t; 

buffer_t buffers[BUFFER_COUNT];

#define NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ (4)
void free_all_buffers();
size_t get_user_buffer_sz(size_t max_sz);

void call_paulmon() {
   ((void (*)(void))0x0000)();
}



void main()
{
    int student_number = 0;
    while (true) 
    {
        printf("\r\nPlease enter the last two digits of your ID:");
        get_string();
        student_number = atoi(get_input_buffer());
        if (!(student_number < 0 || student_number > MAX_STUDENT_NUMBER))
        {
            break;
        }
    }

    size_t max_user_input = USER_BUFFER_MAX;

    size_t user_buffer_size = 0;

    memset(buffers, 0, BUFFER_COUNT * sizeof(char *));
    get_the_buffer_sz: 
    while(true)
    {
        user_buffer_size = get_user_buffer_sz(max_user_input);
        for(int i = 0; i < NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ; i++)
        {

            buffers[i].buffer = malloc(user_buffer_size);
            if(buffers[i].buffer == NULL)
            {
                free_all_buffers();
                printf(BUFFER_SZ_TOO_BIG);
                max_user_input = user_buffer_size-1;
                goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
            } else{
                buffers[i].size = (size_t) user_buffer_size;
            }
        }

        free(buffers[2].buffer);
        buffers[2].buffer = NULL; //make sure we don't accidentally double free
        buffers[2].size = 0; 


        buffers[4].size = (size_t) 10 * (student_number + 2);
        buffers[4].buffer = malloc(buffers[4].size);

        if (buffers[4].buffer == NULL)
        {
            free_all_buffers();
            printf(BUFFER_SZ_TOO_BIG);
            max_user_input = user_buffer_size-1;
            continue;
        }

        buffers[5].size = (size_t) 2 * user_buffer_size; 
        buffers[5].buffer = malloc(buffers[5].size);
        if (buffers[5].buffer == NULL)
        {
            free_all_buffers();
            printf(BUFFER_SZ_TOO_BIG);
            max_user_input = user_buffer_size-1;
            continue;
        }
        break;
    }
    
    printf("\r\nstudent_number: %d", student_number);
    printf("\r\nuser_buffer_size: %zu", user_buffer_size);

    size_t total_heap_sz = 0;
    for(int i = 0; i < BUFFER_COUNT; i++)
    {
        if(buffers[i].buffer != NULL) {
            printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, buffers[i].buffer, buffers[i].buffer + buffers[i].size, buffers[i].size);
            total_heap_sz += buffers[i].size; 
        }
    }
    printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);

    for(;;); //spin forever
}

size_t get_user_buffer_sz(size_t maximum_sz)
{
    size_t user_buffer_size = 0;
    do {
        printf("\r\nPlease enter a valid buffer size that is divisible by 32 [64,%zu]: ", maximum_sz);
        get_string();
        user_buffer_size = (size_t) atoi(get_input_buffer()); //TODO: replace with own implementation of atoi that respects the size_t
    } while ((user_buffer_size > maximum_sz)
            || (user_buffer_size < USER_BUFFER_MIN)
            || (MODULE_32(user_buffer_size) != 0));
    return user_buffer_size;
}


void free_all_buffers()
{
    for(int i = 0; i < BUFFER_COUNT; i++)
    {
        if (buffers[i].buffer != NULL)
        {
            free(buffers[i].buffer);
        }
        buffers[i].size = 0; 
    }
}