/********************************** (C) COPYRIGHT *******************************
* File Name   : eeprom.c
* Author    : Masato YAMANISHI & Colin Sergi
* License   : MIT
* Version   : V1.0
* Date      : 2021/10/13
* Sourced   : https://raw.githubusercontent.com/n24bass/ch554_i2c/refs/heads/main/common/i2c.c
* Description   : 8051 Software I2C
*******************************************************************************/

#include <stdint.h>
#include <mcs51/8051.h>
#include <at89c51ed2.h>
#include "debug.h"
#include "eeprom.h"
#include <stdbool.h>

#ifndef I2C_SDAT
#define I2C_SDAT  P1_7
#endif

#ifndef I2C_SCLK
#define I2C_SCLK  P1_6
#endif

#define SDA_HIGH()  (I2C_SDAT = 1)
#define SDA_LOW() (I2C_SDAT = 0)
#define SDA_READ()  (I2C_SDAT)

#define SCL_HIGH()  (I2C_SCLK = 1)
#define SCL_LOW() (I2C_SCLK = 0)

inline void i2c_init()
{ /* GPIO port initial */
  SDA_HIGH();
  SCL_HIGH();
}

//written by Colin Sergi

#ifdef DELAY
static void i2c_delay()
{
    __asm
    nop
    __endasm;
}
#else
#define i2c_delay() 
#endif

static uint8_t i2c_byte_out(uint8_t b) {
  uint8_t i;
  
  for (i = 0; i < 8; i++) {
    (b & 0x80)? SDA_HIGH(): SDA_LOW();
    SCL_HIGH();
    i2c_delay();
    SCL_LOW();
    b <<= 1;
    i2c_delay();
  }

  /* read ack/nack */
  SDA_HIGH(); /* pull up SDA for read */
  SCL_HIGH();
  i2c_delay();
  i = SDA_READ(); /* read ack/nack */

  i2c_delay();
  SCL_LOW();
  SDA_LOW();
  i2c_delay();

  return i? 0: 1; /* 1:ack, 0:nack */
}

static uint8_t i2c_byte_in(bool last) {
  uint8_t i;
  uint8_t b = 0;

  SDA_HIGH(); /* pull up for input */
  for (i = 0; i < 8; i++) {
    i2c_delay();
    SCL_HIGH();
    b <<= 1;
    if (SDA_READ()) b |= 1;
    i2c_delay();
    SCL_LOW();
  }
  SCL_HIGH();
  i2c_delay();
  last? SDA_HIGH(): SDA_LOW(); /* send nack or ack */
  i2c_delay();
  SCL_LOW(); 
  SDA_LOW();
  i2c_delay();

  return b;
}

static void i2c_end() {
  /* stop condition */
  // SDA_LOW();
  // i2c_delay();
  SCL_HIGH();
  i2c_delay();
  SDA_HIGH();
  i2c_delay();
}

/* start consition, send address + RW */
static uint8_t i2c_begin(uint8_t addr, uint8_t rw) {
  /* start condition */
  i2c_init();
  SDA_LOW();
  i2c_delay();
  SCL_LOW();
  i2c_delay();
  
  /* address + read/write bit */
  addr <<= 1; /* shift addess */
  if (rw) addr++; /* read/write */

  /* send */
  return i2c_byte_out(addr);
}

uint8_t i2c_write(uint8_t addr, uint8_t *p, uint8_t len) {
  uint8_t b;
  uint8_t n = len;
  uint8_t rc = i2c_begin(addr, 0); /* start, set addr with WRITE bit */
  if (rc) {
    while (n && rc) {
      b = *p;
      rc = i2c_byte_out(b); // 0:ack, 1:nack
      if (rc) { // 
        n--;
        p++;
      }
    }
    rc = rc? ((len - n)? 1: 0): 0;
  }
  i2c_end();

  return rc;
}

uint8_t i2c_read(uint8_t addr, uint8_t *p, uint8_t len) {
  uint8_t rc = i2c_begin(addr, 1); /* start, set addr with READ bit */
  if (rc) {
    while (len--) {
      *p++ = i2c_byte_in(len == 0);
    }
  }
  i2c_end();
  return rc;
}

/* EOF */


void eeprom_init()
{
    i2c_init(); 
}


int eepromwritebyte(unsigned int addr, uint8_t byte)
{
    if (addr > 0x7FF) return FAILURE;
    int i2c_address = 0b1010 << 3; 
    i2c_address |= addr >> 8;
    uint8_t word_address = ((uint8_t) (addr & 0xFF));
    int ack = i2c_begin(i2c_address, 0);
    if (ack != 1)
    {
        i2c_end();
        return FAILURE;
    }
    ack = i2c_byte_out(word_address);
    if (ack != 1)
    {
        i2c_end();
        return FAILURE;
    }

    ack = i2c_byte_out(byte);
    if (ack != 1)
    {
        i2c_end();
        return FAILURE;
    }

    i2c_end();
    return SUCCESS;

}

int eepromreadbyte(unsigned int addr, uint8_t *byte)
{
    if (addr > 0x7FF) return FAILURE;
    int i2c_address = 0b1010 << 3; 
    i2c_address |= addr >> 8;
    uint8_t word_address = ((uint8_t) (addr & 0xFF));

    int ack = i2c_begin(i2c_address, 0);
    if (ack != 1)
    {
        i2c_end();
        return FAILURE;
    }

    ack = i2c_byte_out(word_address);

    if (ack != 1)
    {
        i2c_end();
        return FAILURE;
    }

    i2c_begin(i2c_address, 1);
    *byte = i2c_byte_in(true);
    i2c_delay();
    i2c_end();
    return SUCCESS;

} 

void inline i2c_start()
{
    i2c_init();
    SDA_LOW();
    i2c_delay();
    SCL_LOW();
    i2c_delay();
}

void eereset()
{
    i2c_init();
    i2c_start();
    for(int i = 0; i < 9; i++)
    {

        SDA_HIGH();
        i2c_delay();
        SCL_HIGH();
        i2c_delay();
        SCL_LOW();
    }
    i2c_start();
    i2c_end();
}