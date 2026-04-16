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