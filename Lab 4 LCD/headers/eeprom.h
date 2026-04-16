#ifndef _EEPROM
#define _EEPROM
#include <stdint.h>

#define SUCCESS (0)
#define FAILURE (1)

int eepromwritebyte(unsigned int addr, uint8_t byte);

int eepromreadbyte(unsigned int addr, uint8_t *byte); 

void eeprom_init(); //really i2c init

void eereset(); 

#endif