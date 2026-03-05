
#include "input.h"
#include "string.h"
#include "my_serial.h"

char string_input_buffer[BUFFER_SZ];

size_t character_count = 0; 

const char *get_input_buffer() {
    return string_input_buffer; 
}

void get_string()
{
    memset(string_input_buffer, '\0', BUFFER_SZ);
    char received_char = '\0'; //RAII
    unsigned int remaining_characters_allowed_to_read = BUFFER_SZ;
    char *current_buffer = string_input_buffer;
    do {
        received_char = getchar(); 
        putchar(received_char);
        remaining_characters_allowed_to_read--; 
        if (received_char != '\r' 
            || received_char != '\n'
           || received_char != '\0')
           {
            *current_buffer= received_char;
            current_buffer++;
           }
    } while(received_char != '\r'
        && received_char != '\n' 
        && received_char != '\0'
        && remaining_characters_allowed_to_read > 0);

    string_input_buffer[BUFFER_SZ-remaining_characters_allowed_to_read-1] = '\0'; //ensure good formatting
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
