/*
 * Author Nalin Saxena & Colin Sergi
 * ECEN 5613 - Spring 2026 - Prof. McClure
 * University of Colorado Boulder
 * Date Created 2/21/26
 *  --------------------------------------------------------------------------------
 *  A file to a terminal program controlling a clock l
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

#define INTERRUPT_COUNT_BEFORE_ROLLING_OVER 2



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

/*
refer to section 3.8 Interrupt Service Routines in SDCC user manual
All isr number/address can be found in this file-
C:\Program Files\SDCC\include\mcs51\8051.h
*/

void timer0_ISR(void) __interrupt(TF0_VECTOR)
{   
    reload_counter(); 
    if (clock_paused == CLOCK_RUNNING)
    {
        current_overflow_count++; // increment the overflow count
        if(current_overflow_count >= INTERRUPT_COUNT_BEFORE_ROLLING_OVER)
        {
            increment_clock();
            current_overflow_count = 0; 
        }
    }
}


void main()
{
    clock_init_and_start();
    for(;;)
    {
        printf("\r\nEnter a char (? for menu): ");
        char received_char = get_next_input_char();
        printf("\r\n");
        switch(received_char)
        {
            case '?':
                printf("?: menu\r\n");
                printf("p: pause the clock\r\n");
                printf("s: start the clock\r\n");
                printf("r: reset the clock\r\n");
                break;
            case 'p':
                pause_clock();
                printf("Clock paused\r\n");
                break;
            case 's':
                unpause_clock();
                printf("Clock unpaused\r\n");
                break;
            case 'r':
                reset_clock();
                printf("Clock reset\r\n");
                break;
            default:
                printf("Char not recognized, try again...\r\n");
                break;
        }
    }
}
