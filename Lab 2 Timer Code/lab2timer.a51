; Sets a timer to blink an LED every 0.76 seconds
; Also has code to check a pin and change toggle rate
; as well as write a sequence of values to the debug latch
; Written by Colin Sergi

; P1.0 - ISR running bit
; P1.1 - LED 
TIMER_COUNT_LOWER_BYTE EQU 0x01F ;do slightly faster than 1 ms calculated so we get the times we want
TIMER_COUNT_UPPER_BYTE EQU 0x0DC
TMOD_MOD_SET EQU 0x01
TIMER_760_MS_COUNT EQU 76
TIMER_250_MS_COUNT EQU 25
	
TIMER_HIT_FLAG EQU 2
TIMER_EMPTY_FLAG EQU 0
COUNTER_ZERO EQU 0
	
INTERRUPT_ENABLE_ENABLE_INTERRUPTS_AND_TIMER0 EQU 0x82
	
	
;debug latch values
DEBUG_INITIAL_VALUE EQU 0B4h ; before what??
DEBUG_DPTR_VALUE EQU 0666h ; el diablo
DEBUG_ISR_MIN_VALUE EQU 80h ;given in assignment
DEBUG_MAIN_LOOP_MAX_VALUE EQU 7Fh ; given in assignment


ORG 0000h
	SJMP main
ORG 0000Bh
	SJMP timer_interrupt_routine
	
	
	
	
ORG 0040h
	timer_interrupt_routine:
	SETB P1.0
	;debug latch
	MOV A, R3
	ADDC A, #1
	JNC no_overflow
	MOV A, #DEBUG_ISR_MIN_VALUE
	no_overflow:
	MOV R3, A
	MOVX @DPTR, A ; write value to debug latch
	DJNZ R1, exit_timer_interrupt_routine
	;if we are here, toggle led
	CPL P1.1
	exit_timer_interrupt_routine:
	MOV R2, #TIMER_HIT_FLAG
	CLR TF0
	CLR P1.0
	RETI

reset_timer:
	;setup the 8051 to count for 0.01 = 100Hz
	;timer will increment once every 921.6 kHz
	;so we need to go through  921.6 kHz/ 100Hz = 9216 cycles of the timer to get the period
	;when counting up, do (2^16 - 9216)
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
get_timer_count:
	JB P1.3, do_250_ms_count ;detect whether or not we are doing the fast blink or the slow blink
	MOV R1, #TIMER_760_MS_COUNT ;if low, do 0.66Hz
	SJMP return_get_timer_count
	do_250_ms_count:
	MOV R1, #TIMER_250_MS_COUNT ;if high, do 2Hz
	return_get_timer_count:
	RET

main:
	; turn off the two output pins
	CLR P1.0 
	NOP
	CLR P1.1 
	NOP
	
	;set debug latch to known initial value
	MOV DPTR, #DEBUG_DPTR_VALUE
	MOV A, #DEBUG_INITIAL_VALUE
	MOVX @DPTR, A
	
	;set debug latch register to initial values
	MOV R3, #DEBUG_ISR_MIN_VALUE
	MOV R4, #0
	
	
	;count to the appropriate value
	ACALL get_timer_count
	;set the reset flag to off
	MOV R2, #TIMER_EMPTY_FLAG
	;configure the first timer
	ACALL reset_timer
	
	;enable interrupts
	MOV IE, #INTERRUPT_ENABLE_ENABLE_INTERRUPTS_AND_TIMER0 ; enable interrupts and timer 0 interrupt
	
	
	;loop forever
inf_loop:
	CJNE R2, #TIMER_EMPTY_FLAG, do_timer_reset
	INC R3
	CJNE R3, #DEBUG_ISR_MIN_VALUE, no_overflow_main
	MOV R3, #0
	no_overflow_main:
	MOVX @DPTR, A
	AJMP inf_loop
do_timer_reset:
	CJNE R1, #COUNTER_ZERO, reset_isr ; determine whether or not we need to also reset the counter
	ACALL get_timer_count
	reset_isr:
	MOV R2, #TIMER_EMPTY_FLAG
	ACALL reset_timer
	SJMP inf_loop
	END
	