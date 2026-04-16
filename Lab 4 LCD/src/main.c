/*
 * Author Nalin Saxena & Colin Sergi
 * ECEN 5613 - Spring 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *  A file to implement a terminal program allocating and freeing buffers
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
#include "debug.h"
#include "lcd.h"
/*
[Important Note] if you have made this change via paulmon2 you can comment this section

setting all 1024 of internal xram
*/
int _sdcc_external_startup()
{
    // AUXR |= 0X0C; implemented in paulmon
    return 0;
}

extern __xdata char __sdcc_heap[HEAP_SIZE];


void main()
{
    lcdinit();
    printf("40\r\n");
    lcdputstr("HI");
    printf("42\r\n");
    lcdgotoxy(1,0);
    printf("44\r\n");
    lcdputstr("ESD");
    printf("46\r\n");
    for(;;);
}