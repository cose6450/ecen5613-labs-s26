#ifndef LCD_H 
#define LCD_H

extern volatile char current_overflow_count;
extern volatile char clock_paused;
#define CLOCK_PAUSED 1
#define CLOCK_RUNNING 0

void lcdinit();

void lcdbusywait();

void lcdgotoaddr(unsigned char addr);

void lcdgotoxy(unsigned char row, unsigned char column);

void lcdputch(char cc);

void lcdputstr
(char *ss);


void lcdclear(); 

void reload_counter(); 

void clock_init_and_start();

void increment_clock();

void reset_clock();

void pause_clock();

void unpause_clock();

void reload_timer();

#endif

// void my_timer_isr();