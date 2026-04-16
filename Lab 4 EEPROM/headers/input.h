/**
 * @author Colin Sergi
 * 
 * An API for getting input from serial
 */
#ifndef _INPUT_H
#define _INPUT_H 1
#define BUFFER_SZ (10)
#include <stddef.h>

/**
 * get_string - Get a string into a global buffer that can be returned by the next function 
 * void return type
 */
void get_string(void);

/**
 * get_input_buffer - return the start of the global buffer that has input read into it
 * returns - const char * - see above
 */
const char *get_input_buffer(void);
/**
 * get_next_input_char - get a character for use as input, keeping count of them
 * 
 * returns - char - the character received
 */
char get_next_input_char(void);

/**
 * get_char_count - gets the count of the characters received since last reset
 * 
 * returns - size_t - characters entered 
 */
size_t get_char_count(void);

/**
 * reset_char_count - reset the count of the characters received
 * void return type 
 */
void reset_char_count(void);

int get_hex_value(int *return_value);
#endif