/*
 * Author Colin Sergi
 * ECEN 5613 - Spring 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *  A file to implement a simple function to implement a virtual debug port
   ---------------------------------------------------------------------------------*/

#include "debug.h"

void dataout(__xdata volatile char *address, unsigned char out)
{
    *address = out; 
}