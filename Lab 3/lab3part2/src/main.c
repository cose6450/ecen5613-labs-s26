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
#include "linked_list.h"
#include "allocation.h"
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
#define BUFFER_ALWAYS_HELD_COUNT (2)
#define INTIAL_DYNAMIC_BUFFER_COUNT (4)
#define MODULE_32(x) ((x) & (31))
#define MAX_STUDENT_NUMBER (99)
#define BUFFER_SZ_TOO_BIG ("\r\nBuffer Size too big, please pick a smaller buffer size")
#define LOWER_CASE_MASK (0x20)
#define ON (true)
#define OFF (false)
#define MAX_USER_DETERMINED_BUFFER_SZ (600)
#define MIN_USER_DETERMINED_BUFFER_SZ (200)






buffer_t static_buffers[BUFFER_ALWAYS_HELD_COUNT];
buffer_list_t dynamic_buffers_list = {NULL};

#define NUM_BUFFERS_TO_BE_ALLOCATED_TO_USER_SZ (4)
void free_all_buffers();
size_t get_user_buffer_sz(size_t max_sz);

bool is_alphabet_char(char c)
{
    return (c <= 'Z' && c >= 'A')
            || (c <= 'z' && c >= 'a');
}

void initialize_default_elements(buffer_t *buffer)
{
    buffer->alphabet_chars = 0;
    buffer->curr_available_char = 0;
    buffer->next = NULL;

    memset(buffer->buffer, 0x00, buffer->size);
}

buffer_t *alloc_new_buffer(size_t size)
{
    buffer_t *header = malloc(sizeof(buffer_t));
    if (header == NULL)
    {
        return NULL;
    }
    header->size = size;
    header->buffer = malloc(size);
    if (header->buffer == NULL)
    {
        free(header);
        return NULL;
    }
    initialize_default_elements(header);
    return header; 
}


void initialize_buffers()
{
    dynamic_buffers_list.head = NULL;
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

    memset(static_buffers, 0, BUFFER_ALWAYS_HELD_COUNT * sizeof(buffer_t));
    while(true)
    {
        user_buffer_size = get_user_buffer_sz(max_user_input);
        for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
        {

            static_buffers[i].buffer = malloc(user_buffer_size);
            
            printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
            if(static_buffers[i].buffer == NULL)
            {
                free_all_buffers();
                printf(BUFFER_SZ_TOO_BIG);
                max_user_input = user_buffer_size-1;
                goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
            } else{
                static_buffers[i].size = (size_t) user_buffer_size;
                initialize_default_elements(&static_buffers[i]);
                printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
            }
        }


        for(int i = 0; i < INTIAL_DYNAMIC_BUFFER_COUNT; i++) 
        {
            buffer_t *new_buffer = alloc_new_buffer(user_buffer_size);
            if (new_buffer == NULL)
            {
                free_all_buffers();
                printf(BUFFER_SZ_TOO_BIG);
                max_user_input = user_buffer_size-1;
                goto get_the_buffer_sz; //TODO: find way that involves not using a goto to do this
            }
            else
            {
                append_to_buffer_list(&dynamic_buffers_list, new_buffer);
            }
        }
        
        buffer_t *buffer_4 = alloc_new_buffer((size_t) 10 * (student_number + 2));

        if (buffer_4 == NULL)
        {
            free_all_buffers();
            printf(BUFFER_SZ_TOO_BIG);
            max_user_input = user_buffer_size-1;
            continue;
        }

        buffer_t *buffer_5 = alloc_new_buffer((size_t) 2 * user_buffer_size);
        if (buffer_5 == NULL)
        {
            free_all_buffers();
            printf(BUFFER_SZ_TOO_BIG);
            max_user_input = user_buffer_size-1;
            continue;
        }
        break;
        get_the_buffer_sz:;
    }
    
    printf("\r\nstudent_number: %d", student_number);
    printf("\r\nuser_buffer_size: %zu", user_buffer_size);

    size_t total_heap_sz = 0;
    int i = 0;
    for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
    {
        printf("\r\n static_buffers[%d].buffer %p", i, static_buffers[i].buffer);
        if(static_buffers[i].buffer != NULL) {
            printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, static_buffers[i].buffer, static_buffers[i].buffer + static_buffers[i].size, static_buffers[i].size);
            total_heap_sz += static_buffers[i].size; 
        }
    }

    buffer_t *curr = dynamic_buffers_list.head;

    while(curr != NULL) {
        if(curr->buffer != NULL) {
            printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu", i, curr->buffer, curr->buffer + curr->size, curr->size);
            total_heap_sz += curr->size; 
        }
        i++; 
        curr = curr->next;
    }
    printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
}

void store_in_buffer(buffer_t *buffer, char c)
{
    if (buffer->curr_available_char < buffer->size)
    {
        buffer->buffer[buffer->curr_available_char] = c;
        buffer->curr_available_char++;
        if (is_alphabet_char(c))
        {
            buffer->alphabet_chars++;
        }
    }
}

void command_header(char *command_string)
{
    printf("\r\n        %s", command_string);
    printf("\r\n------------------------------");   
}



void heap_report()
{
    command_header("HEAP REPORT");
    size_t total_heap_sz = 0;
    int i = 0; 
    for(i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
    {
        if(static_buffers[i].buffer != NULL) {
            printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
                    i, 
                    static_buffers[i].buffer, 
                    static_buffers[i].buffer + static_buffers[i].size, 
                    static_buffers[i].size,
                    static_buffers[i].alphabet_chars,
                    static_buffers[i].size - static_buffers[i].curr_available_char);
            total_heap_sz += static_buffers[i].size; 
        }
    }

    buffer_t *curr = dynamic_buffers_list.head;
    while(curr != NULL) {
        if(curr->buffer != NULL) {
            printf("\r\nbuffer_%d starts @ %p, ends @%p, size %zu, contains %zu alphabet chars, has %zu chars remaining", 
                    i, 
                    curr->buffer, 
                    curr->buffer + curr->size, 
                    curr->size,
                    curr->alphabet_chars,
                    curr->size - curr->alphabet_chars);
            total_heap_sz += curr->size; 
        }
        i++;
        curr->next;
    }
    printf("\r\nHeap starts @ %p, ends @ %p, size: %zu", __sdcc_heap, __sdcc_heap + HEAP_SIZE, total_heap_sz);
    printf("\r\n");
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
    printf("\r\n Freeing ALL BUFFERS");
    for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
    {
        if(static_buffers[i].buffer != NULL)
        {
            free(static_buffers[i].buffer);
        }
        static_buffers[i].buffer = NULL;
        static_buffers[i].size = 0; 
    }
    free_all_elems_from_list(&dynamic_buffers_list); 
}



void qmark_command_handler()
{
    heap_report();
    size_t chars_received_since_last_qmark = get_char_count();
    reset_char_count();
    printf("\r\n Received %zu chars since last invocation of ?", chars_received_since_last_qmark);
    size_t curr_output_char = 0;
    
    for(int i = 0; i < 2; i++)
    {
        size_t curr_buffer_char = 0;
        char curr_char = static_buffers[i].buffer[0];
        while(curr_char != '\0')
        {
            if (MODULE_32(curr_output_char) == 0)
            {
                printf("\r\n");
            }
            printf("%c", curr_char);
            curr_output_char++;
            curr_buffer_char++;
            curr_char = static_buffers[i].buffer[curr_buffer_char];
        }

        memset(static_buffers[i].buffer, '\0', static_buffers[i].size);
        static_buffers[i].alphabet_chars = 0;
        static_buffers[i].curr_available_char = 0;
    }

    printf("\r\n");
    printf("\r\n");
}

void enter_command_handler()
{
    command_header("Dump Admin Buffers");
    for(int i = 0; i < 2; i++)
    {
        printf("\r\n Buffer %d ", i);
        printf("\r\n----------");
        for(char *address = static_buffers[i].buffer; address < (static_buffers[i].buffer + static_buffers[i].size); address += 16)
        {
            printf("\r\n%04X:", (unsigned int) address);
            for(int j = 0; j < 16; j++)
            {
                printf(" %02hhX", (unsigned char) *(address+j));
            }
        }
        printf("\r\n");
    }
}

void percent_command_handler()
{
    command_header("Clear Buffers");
    for(int i = 0; i < BUFFER_ALWAYS_HELD_COUNT; i++)
    {
        if (static_buffers[i].buffer != NULL) 
        {
            memset(static_buffers[i].buffer, 0x00, static_buffers[i].size);
            static_buffers[i].curr_available_char = 0;
            static_buffers[i].alphabet_chars = 0; 
        }
    }

    buffer_t *curr = dynamic_buffers_list.head;
    if (curr != NULL)
    {
        memset(curr->buffer, 0x00, curr->size);
        curr->curr_available_char = 0;
        curr->alphabet_chars = 0; 
    }
}

void dollar_sign_command_handler()
{
    P1_0 = ON;
    if (dynamic_buffers_list.head == NULL
        || dynamic_buffers_list.head->next == NULL) 
    { //handle the buffer not being allocated
        P1_0 = OFF;
        return; 
    }
    buffer_t* buffer_3 = dynamic_buffers_list.head->next;
    memcpy(buffer_3->buffer, static_buffers[0].buffer, static_buffers[0].size);
    buffer_3->alphabet_chars = static_buffers[0].alphabet_chars;
    buffer_3->curr_available_char = static_buffers[0].curr_available_char;
    P1_0 = OFF; 
}

void hashtag_command_handler()
{
    P1_0 = ON;
    if (dynamic_buffers_list.head == NULL
        || dynamic_buffers_list.head->next == NULL) 
    { //handle the buffer not being allocated
        P1_0 = OFF;
        return; 
    }

    buffer_t *buffer_3 = dynamic_buffers_list.head->next;
    for(size_t i = 0; i < buffer_3->curr_available_char; i++)
    {
        register char c = buffer_3->buffer[i];
        if (c <= 'Z' || c >= 'A')
        {
            buffer_3->buffer[i] |= LOWER_CASE_MASK;
        }
    }
    P1_0 = OFF;
}


void plus_command_handler() 
{
    int size = 0; 
    while (true) {
        printf("\r\nPlease enter a size for the new buffer, [200,600]: ");
        get_string();
        size = atoi(get_input_buffer());
        if (size <= MAX_USER_DETERMINED_BUFFER_SZ && size >= MIN_USER_DETERMINED_BUFFER_SZ) break;
        printf("\r\nBuffer size invalid!! Please try again");
    }

    buffer_t *new_buffer = alloc_new_buffer((size_t) size);

    if (new_buffer == NULL)
    {
        printf("\r\n Allocation failed; able to allocate header but not buffer");
        return;
    }

    append_to_buffer_list(&dynamic_buffers_list, new_buffer);

    printf("\r\n Allocation successful!! New buffer added");
    
}

void minus_command_handler() 
{
    printf("\r\nPlease enter the number of the buffer you would like to free: ");
    get_string(); 
    int buffer_num = atoi(get_input_buffer()); 
    if (buffer_num < 0)
    {
        printf("\r\n Invalid buffer number, negatives not valid");
        return;
    }
    else if (buffer_num <= 1) 
    {
        printf("\r\n Invalid buffer number, buffers 0 & 1 are protected");
        return; 
    }
    else
    {
        bool freed = remove_from_buffer_list(&dynamic_buffers_list, (size_t)(buffer_num-2));
        if (freed)
        {
            printf("\r\n Successfully removed buffer");
        }
        else
        {
            printf("\r\n Failed to remove buffer, idx too big");
        }
    }

}

void main()
{
    initialize_buffers();
    
    for(;;)
    {
        printf("\r\nEnter a char: ");
        char received_char = get_next_input_char();
        if (is_alphabet_char(received_char))
        {
            store_in_buffer(&static_buffers[0], received_char);
        }
        else
        {
            store_in_buffer(&static_buffers[1], received_char);
        }

        switch(received_char)
        {
            case '?':
                qmark_command_handler();
                break;
            case '=':
                enter_command_handler();
                break;
            case '%':
                percent_command_handler();
                break;
            case '@':
                free_all_buffers();
                initialize_buffers();
                break;
            case '$':
                dollar_sign_command_handler();
                break;
            case '#':
                hashtag_command_handler();
                break;
            case '+':
                plus_command_handler();
                break;
            case '-':
                minus_command_handler();
                break;
        }
    }
}