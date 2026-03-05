#ifndef _INPUT_H
#define _INPUT_H 1
#define BUFFER_SZ (10)
#include <stddef.h>

void get_string(void);
const char *get_input_buffer(void);
char get_next_input_char(void);
size_t get_char_count(void);
void reset_char_count(void);
#endif