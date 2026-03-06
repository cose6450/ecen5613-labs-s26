
#include "input.h"
#include "string.h"
#include "my_serial.h"
#include <stdio.h>

#define DELETE ((char) 0x7F)

char string_input_buffer[BUFFER_SZ];

size_t character_count = 0; 

const char *get_input_buffer() {
    return string_input_buffer; 
}

void get_string()
{
    memset(string_input_buffer, '\0', BUFFER_SZ);
    char received_char = '\0'; //RAII
    char *current_buffer_loc = string_input_buffer;
    do {
        received_char = getchar(); 
        putchar(received_char);
        // printf("\r\n%02X", received_char);
        if (received_char != '\r' 
            && received_char != '\n'
            && received_char != '\0'
            && received_char != DELETE)
           {
            *current_buffer_loc= received_char;
            current_buffer_loc++;
           }
        else if(received_char == DELETE)
        {
            if (current_buffer_loc != string_input_buffer)
            {
                current_buffer_loc--;
            }
            *current_buffer_loc = '\0';
        }
        //printf("\r\nbuffer: %s", string_input_buffer);
    } while(received_char != '\r'
        && received_char != '\n' 
        && received_char != '\0'
        && (current_buffer_loc < (string_input_buffer+BUFFER_SZ)));
    *current_buffer_loc = '\0';
}

char get_next_input_char()
{
    char c = getchar();
    putchar(c);
    character_count++;
    return c; 
}

size_t get_char_count()
{
    return character_count;
}

void reset_char_count()
{
    character_count = 0; 
}
