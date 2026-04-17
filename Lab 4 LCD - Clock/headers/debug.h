#ifndef _DEBUG_H
#define _DEBUGH 1
#include <stddef.h>

/**
 * A macro when built with D-DEBUG, to output data to a virtual serial debug port
 */
#ifdef DEBUG
#define DEBUG_PORT(y,x) dataout((y),(x))
#else
#define DEBUG_PORT(y,x) 
#endif

#define MAIN_COUNTER_ADDRESS (0xFFFF)
#define OTHER_DEBUGGING_ADDRESS (0xFFFE)

void dataout(__xdata volatile char *address, char out);

#endif