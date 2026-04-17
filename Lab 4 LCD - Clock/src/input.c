/*
 *  Colin Sergi
 * ECEN 5613 - Spring 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *  A file to implement various funcitons to get input into a program
   ---------------------------------------------------------------------------------*/

#include "input.h"
#include "string.h"
#include "my_serial.h"
#include <stdio.h>

#define DELETE ((char) 0x7F)
#define BACKSPACE ('\b')

char string_input_buffer[BUFFER_SZ];

size_t character_count; 

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

        //tera term specific - make backspace visibly delete the character
        //tera term backspace just moves the cursor over
        //visibly delete by putting a space on the screen
        //then backspace back to where the "space" is
        if (received_char == BACKSPACE)
        {
            putchar(' ');
            putchar('\b');
        }
        if (received_char != '\r' 
            && received_char != '\n'
            && received_char != '\0'
            && received_char != DELETE
            && received_char != BACKSPACE)
           {
            *current_buffer_loc= received_char;
            current_buffer_loc++;
           }
        else if(received_char == DELETE || received_char == BACKSPACE)
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
        && (current_buffer_loc < (string_input_buffer+BUFFER_SZ-1)));
    *current_buffer_loc = '\0';
}

char get_next_input_char()
{
    char c = getchar();
    putchar(c);
    character_count++;
    return c; 
}

int get_hex_value(int *return_value)
{
    get_string();
    char *src = string_input_buffer;
    if (*src == '0' && *(src+1) == 'x')
    {
        src += 2;
    }

    int parsed_value = 0;
    char c = *src;
    while (c != '\0')
    {
        parsed_value <<= 4;
        if(c >= '0' && c <= '9' )
        {
            parsed_value += (int) c - '0';
        } else if (c >= 'a' && c <= 'f')
        {
            parsed_value += c - 'a' + 10;
        } else if (c >= 'A' && c <= 'F')
        {
            parsed_value += c - 'A' + 10;
        } else {
            return -1; //error in parsing
        }
        src++;
        c = *src;
    }

    *return_value = parsed_value;
    return 0; 
}

size_t get_char_count()
{
    return character_count;
}

void reset_char_count()
{
    character_count = 0; 
}
