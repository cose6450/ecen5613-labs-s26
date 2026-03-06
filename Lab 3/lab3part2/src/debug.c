#include "debug.h"

void dataout(__xdata volatile char *address, unsigned char out)
{
    *address = out; 
}