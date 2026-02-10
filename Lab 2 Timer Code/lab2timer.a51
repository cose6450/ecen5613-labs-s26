; Sets a timer to blink an LED every 0.76 seconds
; Written by Colin Sergi

; P1.0 - ISR running bit
; P1.1 - LED 
TIMER_COUNT_LOWER_BYTE EQU 0x000
TIMER_COUNT_UPPER_BYTE EQU 0x0DC
TMOD_MOD_SET EQU 0x01
TIMER_760_MS_COUNT EQU 76
TIMER_250_MS_COUNT EQU 25
	
TIMER_HIT_FLAG EQU 2
TIMER_EMPTY_FLAG EQU 0
	
INTERRUPT_ENABLE_ENABLE_INTERRUPTS_AND_TIMER0 EQU 0x82

ORG 0000h
	SJMP main
ORG 0000Bh
	timer_interrupt_routine:
	SETB P1.0
	DJNZ R1, exit_timer_interrupt_routine
	;if we are here, toggle led
	CPL P1.1
	JB P1.3, do_250_ms_count
	MOV R1, #TIMER_760_MS_COUNT
	SJMP exit_timer_interrupt_routine
	do_250_ms_count:
	MOV R1, #TIMER_250_MS_COUNT
	exit_timer_interrupt_routine:
	MOV R2, #TIMER_HIT_FLAG
	CLR TF0
	CLR P1.0
	RETI

reset_timer:
	;setup the 8051 to count for 0.01 = 100Hz
	;timer will increment once every 921.6 kHz
	;so we need to go through  921.6 kHz/ 100Hz = 9216 cycles of the timer to get the period
	;when counting up, do (2^16 - 0xdc00)
	;count that 76 times
	
	CLR TR0
	
	;set the TMOD register
	MOV TMOD, #TMOD_MOD_SET ;set to 16 bit timer mod and used as a timer not a counter
	
	;set the time count
	MOV TH0, #TIMER_COUNT_UPPER_BYTE
	MOV TL0, #TIMER_COUNT_LOWER_BYTE
	
	
	
	;start the timer
	SETB TR0
	RET

main:
	; turn off the two output pins
	CLR P1.0 
	NOP
	CLR P1.1 
	NOP
	
	
	;set counter to 40
	MOV R1, #TIMER_760_MS_COUNT
	;set the reset flag to off
	MOV R2, #TIMER_EMPTY_FLAG
	;configure the first timer
	ACALL reset_timer
	
	;enable interrupts
	MOV IE, #INTERRUPT_ENABLE_ENABLE_INTERRUPTS_AND_TIMER0 ; enable interrupts and timer 0 interrupt
	
	
	;loop forever
inf_loop:
		CJNE R2, #TIMER_EMPTY_FLAG, do_timer_reset
		AJMP inf_loop
do_timer_reset:
		MOV R2, #TIMER_EMPTY_FLAG
		ACALL reset_timer
		AJMP inf_loop
		END
	