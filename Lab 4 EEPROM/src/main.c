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
#include "eeprom.h"
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


void w_command_handler()
{
    printf("\r\nEnter an EEPROM address to write to in hex [0,7FF]: ");
    int address = 0;
    if (0 > get_hex_value(&address))
    {
        printf("\r\n Failed to enter a hex integer, please try again");
        return;
    }
    if(address < 0 || address > 0x7FF)
    {
        printf("\r\n Failed to enter an address within range, please try again");
        return;
    }
    printf("\r\nEnter a byte to write [0, FF]: ");
    int byte = 0;
    if (0 > get_hex_value(&byte))
    {
        printf("\r\n Failed to enter a hex integer, please try again");
        return;
    }
    if(byte < 0 || byte > 0xFF)
    {
        printf("\r\n Failed to enter a value that's byte size, please try again");
        return;
    }
    if (0 != eepromwritebyte(address, (uint8_t)byte))
    {
        printf("\r\nFailed to write to the eeprom");
    }
    else
    {
        printf("\r\n Success: wrote to the eeprom");
    }
}


void r_command_handler()
{
    printf("\r\nEnter an EEPROM address to read from in hex [0,7FF]: ");
    int address = 0;
    if (0 > get_hex_value(&address))
    {
        printf("\r\n Failed to enter a hex integer, please try again");
        return;
    }
    if(address < 0 || address > 0x7FF)
    {
        printf("\r\n Failed to enter an address within range, please try again");
        return;
    }
    uint8_t byte;
    if (0 != eepromreadbyte(address, &byte))
    {
        printf("\r\nFailed to read from the eeprom");
    }
    else
    {
        printf("\r\n %03x: %02hhx", address, byte);
    }
}

void print_dashed_line()
{
    printf("\r\n---------------------------------------------------");
}

void x_command_handler()
{
    printf("\r\nEnter a valid starting hex address [0, 7FF]: ");
    int start_address = 0;
    if (0 > get_hex_value(&start_address))
    {
        printf("\r\n Failed to enter a hex integer, please try again");
        return;
    }
    if(start_address < 0 || start_address > 0x7FF)
    {
        printf("\r\n Failed to enter an address within range, please try again");
        return;
    }

    printf("\r\nEnter a valid ending hex address [0,7FF]: ");
    int end_address = 0;
    if (0 > get_hex_value(&end_address))
    {
        printf("\r\n Failed to enter a hex integer, please try again");
        return;
    }
    if(end_address < 0 || end_address > 0x7FF)
    {
        printf("\r\n Failed to enter an address within range, please try again");
        return;
    }

    if (start_address > end_address)
    {
        printf("\r\n start_address is greater than end address; please try again");
        return; 
    }

    start_address &= ~(0xF);
    end_address &= ~(0xF);
    end_address += 0x10;


    for(int row_start = start_address; row_start < end_address; row_start+=16)
    {
        printf("\r\n%03X: ", row_start);
        for(int i = 0; i < 16; i++)
        {
            int byte = 0;
            if(0 != eepromreadbyte(row_start + i, &byte))
            {
                printf("\r\n Failed to read byte from eeprom, ending command \r\n");
                return;
            }
            printf("%02X ", byte);
        }
    }
}



void main()
{
    eeprom_init();
    print_dashed_line();
    for(;;)
    {
        printf("\r\nEnter a command char (? for help): ");
        char received_char = getchar();
        putchar(received_char);
        switch(received_char)
        {
            case '?':
                printf("\r\nw - write a byte");
                printf("\r\nr - read a byte");
                printf("\r\nx - hex dump");
                printf("\r\ne - eeprom reset");
                break;
            case 'w':
                w_command_handler();
                break;
            case 'r':
                r_command_handler();
                break;
            case 'x':
                x_command_handler();
                break;
            case 'e':
                eereset();
                printf("\r\nDid EEPROM Reset");
                break;
            default:
                printf("\r\nUnrecognized command, please enter a valid command char");
                continue; //no command, don't print the end command line
        }
        printf("\r\nEND COMMAND");
        print_dashed_line();
    }
}