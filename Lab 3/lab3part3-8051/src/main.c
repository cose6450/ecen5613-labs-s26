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
#include "debug.h"
/*
[Important Note] if you have made this change via paulmon2 you can comment this section

setting all 1024 of internal xram
*/

int _sdcc_external_startup()
{
    // AUXR |= 0X0C; implemented in paulmon
    //enter x2 mode
    CKCON0 |= 0x01;

    //keep the baud rate at 57600
    //disable the double speed part of baud rate setting
    PCON &= ~0x80;
    return 0;
}

void run_pwm_command_handler()
{
    printf("\r\nRun PWM");
    CCAP2H = 0xAA;// 0xFF(max) / 3 (so 33percent) * 2 (so inverted)
    CCAPM2 = 0x42; // sets ecom and pwm
    
}

void stop_pwm_command_handler()
{
    printf("\r\nStop PWM");
    CCAPM2 = 0x00; //turn of the pwm signal
    CKRL = 0xFF;
}

void max_clock_speed_command_handler()
{
    printf("\r\nMax Speed clk");
    CKRL = 0xFF; //we are already at the max clock speed
}

void kick_the_dog()
{
    unsigned int watchdog_compare_val = (CH << 8) | CL; //get the current value PCA is being compared to
    watchdog_compare_val += 0x00FF; //go a distance into the future
    CCAP4L = watchdog_compare_val & 0xFF;
    CCAP4H = watchdog_compare_val >> 8; 
}

/**
 * Init the PC4 watchdog
 */
void init_watchdog()
{
    kick_the_dog();
    CCAPM4 = 0x48;
    CMOD |= 0x40;
}

void freeze_command_handler()
{
    printf("\r\nFreezing (triggers watchdog)");
    for(;;);
}


void enter_idle_mode()
{
    printf("\r\nEnter Idle Mode");
    PCON |= 0x01;
    while((PCON & 0x01) == 0);
    printf("\r\nExiting Idle Mode");
}



void main()
{
    unsigned char c = 0;
    CR = 1; //turns on PCA
    for(;;)
    {
        printf("\r\nEnter a char: ");
        DEBUG_PORT(MAIN_COUNTER_ADDRESS, c++); //log number of inputted characters so far
        char received_char = get_next_input_char();
        switch(received_char)
        {
            case 'm':
                printf("\r\n Menu");
                printf("\r\nr: run pwm");
                printf("\r\ns: stop PWM");
                printf("\r\nw: max clock speed");
                printf("\r\nf: freeze (triggers watchdog)");
                printf("\r\n");
                break;
            case 'r':
                run_pwm_command_handler();
                break;
            case 's':
                stop_pwm_command_handler();
                break;
            case 'w':
                max_clock_speed_command_handler();
                break;
            case 'f':
                freeze_command_handler();
                break;
            default:
                continue; //no command, don't print the end command line
        }
        printf("\r\nEND COMMAND");
        // print_dashed_line();
    }
}