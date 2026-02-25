/*******************************************************************************
[WIP]ESD-LAB-TEST-CODE
REV-3
Device details -AT89C51RC2 

Date - 1/27/2026
Author- Nalin Saxena Modified by Colin Sergi

This program is used to test your basic hardware setup before adding the NVSRAM
to the board. The resulting HEX file should be programmed into the AT89C51RC2
using the Python chip programmer.
	
The code initializes the UART in Mode 1 with a baud rate of 9600 and
continuously transmits data using an interrupt-driven approach. UART reception
is disabled; only transmission is enabled (UART_MODE1).

PORT P1 is initally assigned a value of 0x96. After each successful transmission
the value on Port P1 is complemented (0x96 <-> 0x69). This activity can be seen
using a scope.
*****************************************************************************/
BAUD_9600   EQU 0FDH ;setting baud rate as 9600
P1_INIT_VAL EQU 96H ; initial value for port P1
TIM1_MODE2	EQU 20H ; 
UART_MODE   EQU 50H ; Enable TX/RX 
NULL 		EQU 00H
ORG 0000H
	LJMP START

ORG 0023H ; address from vector table Src- Table 50 - https://ww1.microchip.com/downloads/en/DeviceDoc/doc4180.pdf 
	LJMP UART_ISR
	

START:
	MOV P1, #P1_INIT_VAL ;assign initial value to Port 1 (1001 0110->0x96)
	MOV TMOD, #TIM1_MODE2	; Timer 1 in mode 2- auto reload mode
	MOV TH1,#BAUD_9600	; 	setting baud rate as 9600
	MOV SCON, #UART_MODE  ; UART mode, enable TX/RX 
	SETB EA	;enable all interrupts
	SETB ES ; enable serial port interrupt
	SETB TR1 //timer start
	MOV A, #NULL
	CLR P1.0 ;set the P1.0 to a default state

; The cpu just spins continuously 
MAIN_MCU_LOOP:
	SJMP MAIN_MCU_LOOP;
	
	

;UART ISR
UART_ISR:
	JNB RI, attempt_transmit
	CPL P1.1 ; toggle led everytime we receive a character
	MOV A, SBUF ; store the received character
	CLR RI
	MOV SBUF, A  ;start a transmit of the received character
	MOV A, #NULL ;clear the stored character
	attempt_transmit:
	JNB TI,ISR_EXIT 	; if TI not set return
    CLR TI              ; Clear TI
ISR_EXIT:
    RETI
END