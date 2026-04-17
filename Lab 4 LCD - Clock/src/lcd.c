#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include <stdlib.h>
#include <stdbool.h>
#include <stdio.h>
#include "lcd.h"



#define TMOD_MODE1_POS  0        // bit position for timer0 mode 1
#define CLOCK_FIELD_LENGTH (8)
char clock_fields[CLOCK_FIELD_LENGTH];
char minutes_tens;
char minutes_ones;
char seconds_tens;
char seconds_ones;
char seconds_tenths;
volatile char current_overflow_count;
volatile char clock_paused;




void reload_counter()
{
    TH0 = 0x4C;
    TL0 = 0x0D;
}

//borrowed from the sdcc_example_code_v5
void init_timer()
{
    current_overflow_count = 0;
    TMOD |= 1 << TMOD_MODE1_POS;
    // to generate an overflow every 50ms
    reload_counter();
    ET0 = 1; // enable timer0 interrupt
    EA = 1;  // enable global interrupt
}

#define LCD_ADDRESS_BASE (0xF000)
#define LCD_RW_FLAG (0x0200)
#define LCD_RS_FLAG (0x0100)

#define INIT_CMD_ONE() (*(unsigned char *) (LCD_ADDRESS_BASE) = 0x30)
#define FUNCTION_SET_TWO_LINES_FONT_0() (*(unsigned char *) (LCD_ADDRESS_BASE) = 0x38)
#define DISPLAY_OFF() (*(unsigned char *) (LCD_ADDRESS_BASE) = 0x08)
#define DISPLAY_CLEAR() (*(unsigned char *) (LCD_ADDRESS_BASE) = 0x01)
#define ENTRY_MODE_SET_ID_1_S_0() (*(unsigned char *) (LCD_ADDRESS_BASE) = (0x6))
#define DISPLAY_ON() (*(unsigned char *) (LCD_ADDRESS_BASE) = (0xC))

#define GOTOADDR(addr) (*(unsigned char *) (LCD_ADDRESS_BASE) = (addr) | 0x80)
#define WRITECHAR(cc) (*(unsigned char *) (LCD_ADDRESS_BASE | LCD_RS_FLAG) = (cc))

void inline delay() 
{
    for(volatile int i = 0; i < 600; i++)
    {
      __asm
        nop
        __endasm;  
    }

}

void lcdbusywait()
{
    while(0x80 == ((*(volatile unsigned char *) (LCD_ADDRESS_BASE | LCD_RW_FLAG)) & 0x80)); 
}


void lcdinit()
{
    delay();
    INIT_CMD_ONE();
    delay();
    INIT_CMD_ONE();
    delay();
    INIT_CMD_ONE();
    lcdbusywait();
    FUNCTION_SET_TWO_LINES_FONT_0();
    lcdbusywait();
    DISPLAY_OFF();
    lcdbusywait();
    DISPLAY_ON();
    lcdbusywait();
    ENTRY_MODE_SET_ID_1_S_0();
    lcdbusywait();
    DISPLAY_CLEAR();
    lcdbusywait();
}



void lcdgotoaddr(unsigned char addr)
{
    lcdbusywait();
    GOTOADDR(addr);
    lcdbusywait();
}

void lcdgotoxy(unsigned char row, unsigned char column)
{
    lcdgotoaddr(row << 6 | column); 
}

void lcdputch(char cc)
{
    lcdbusywait();
    WRITECHAR(cc);
    lcdbusywait();
}

void lcdputstr
(char *ss)
{
    while (*ss != '\0')
    {
        lcdputch(*ss);
        ss++;
    }
}


void lcdclear()
{
    lcdbusywait();
    DISPLAY_CLEAR();
    lcdbusywait();
}




void clock_init_and_start()
{
    lcdinit();
    clock_fields[0] = '0';
    clock_fields[1] = '0';
    clock_fields[2] = ':';
    clock_fields[3] = '0';
    clock_fields[4] = '0';
    clock_fields[5] = '.';
    clock_fields[6] = '0';
    clock_fields[7] = '\0';
    lcdclear();
    lcdputstr(clock_fields);
    init_timer();
    TR0 = 1; // Start Timer0
    printf("Clock_initialized");
}

void increment_clock_values()
{
    seconds_tenths++;
    if (seconds_tenths < 10) return;
    seconds_tenths = 0;
    seconds_ones++;
    if (seconds_ones < 10) return;
    seconds_ones = 0;
    seconds_tens++;
    if (seconds_tens < 6) return;
    seconds_tens = 0;
    minutes_ones++;
    if(minutes_ones < 10) return;
    minutes_ones = 0;
    minutes_tens++;
    if (minutes_tens < 10) return;
    minutes_tens = 0; //silent overflow
}

void output_clock()
{
    clock_fields[0] = '0' + minutes_tens;
    clock_fields[1] = '0' + minutes_ones;
    clock_fields[3] = '0' + seconds_tens;
    clock_fields[4] = '0' + seconds_ones;
    clock_fields[6] = '0' + seconds_tenths;
    lcdgotoaddr(0); 
    lcdputstr(clock_fields); 
}

void increment_clock()
{
    increment_clock_values();
    output_clock();
}

void reset_clock()
{
    __critical
    {
        minutes_tens = 0;
        minutes_ones = 0;
        seconds_tens = 0;
        seconds_ones = 0;
        seconds_tenths = 0;
        output_clock();
    }
}



void pause_clock()
{
    clock_paused = CLOCK_PAUSED;
}

void unpause_clock()
{
    clock_paused = CLOCK_RUNNING;
}



