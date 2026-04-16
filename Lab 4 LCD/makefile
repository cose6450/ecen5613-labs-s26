# ------------------------------------------------------------------------------
# Project: SDCC_EXAMPLE_CODE
# Toolchain: SDCC 4.2.0
# Make: GNU Make 3.77
#
# NOTE:
# If SDCC is not found, update SDCC_PATH variable below.
# ------------------------------------------------------------------------------
SDCC_PATH = "C:\Program Files\SDCC\bin\sdcc.exe" 
BATCH_ISP_PATH = "C:\Program Files (x86)\Atmel\Flip 3.4.7\bin\batchisp.exe"
HEADERS := $(wildcard headers/*.h)
COM_PORT = "COM4"
TTERM_PARAMS = "/C=4"
CC = $(SDCC_PATH)

tterm:
	ttermpro $(TTERM_PARAMS)

flash: user_program paulmon paulmon_extra
#	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation erase f memory flash blankcheck loadbuffer lib/paulmon21.hex program verify 
#	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation memory flash loadbuffer lib/extra.hex program verify
	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation memory flash loadbuffer bin/output.hex program verify
	ttermpro $(TTERM_PARAMS) 
# 	Note: this only works because of the initial setting in teraterm

debug_flash: user_program_debug paulmon paulmon_extra
	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation erase f memory flash blankcheck loadbuffer lib/paulmon21.hex program verify 
	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation memory flash loadbuffer lib/extra.hex program verify
	$(BATCH_ISP_PATH) -device at89c51rc2 -hardware RS232 -port $(COM_PORT) -baudrate 57600 -operation memory flash loadbuffer bin/debug_output.hex program verify
	ttermpro $(TTERM_PARAMS)


paulmon: lib/paulmon21.asm
	as31 -Fhex -l lib/paulmon21.asm

paulmon_extra: lib/extra.asm
	as31 -Fhex -l lib/extra.asm

user_program: bin/output.hex

user_program_debug: bin/debug_output.hex

# Link all .rel object files into final executable (.hex)
# --code-loc  : The start location of the user code segment
# --code-size : Causes the linker to check if the code memory usage is within limits of the given value
# --xram-loc  : The start location of the external ram (this is set to 0x0001 to avoid malloc failures if heap starts at 0x0000 )
# --xram-size : Total external RAM size
# --model-large : Generate code for Large model programs
# --out-fmt-ihx : Generate Intel HEX output format

bin/output.hex: bin/main.rel bin/_heap.rel bin/my_serial.rel bin/input.rel bin/linked_list.rel bin/debug.rel bin/lcd.rel
	$(CC) bin/main.rel bin/my_serial.rel bin/_heap.rel bin/input.rel bin/linked_list.rel bin/debug.rel bin/lcd.rel\
	--code-loc 0x2000 --code-size 0x6000 \
	--xram-loc 0x0001 --xram-size 0x7FFF \
	--model-large --out-fmt-ihx -o bin/output.hex

bin/debug_output.hex: bin/debug_main.rel bin/debug__heap.rel bin/debug_my_serial.rel bin/debug_input.rel bin/debug_linked_list.rel bin/debug_debug.rel bin/debug_eeprom.rel
	$(CC) bin/debug_main.rel bin/debug_my_serial.rel bin/debug__heap.rel bin/debug_input.rel bin/debug_linked_list.rel bin/debug_debug.rel bin/debug_eeprom.rel\
	--code-loc 0x2000 --code-size 0x6000 \
	--xram-loc 0x0001 --xram-size 0x7FFF \
	--model-large --out-fmt-ihx -o bin/debug_output.hex

# Compile main application file
# -c        : --compile-only will compile and assemble the source, but will not call the linkage editor
# -mmcs51   : Generate code for the Intel MCS51 family of processors. This is the default processor target
# --model-large :  Generate code for Large model programs
# -I headers : Add headers directory to include path

bin/%.rel: src/%.c $(HEADERS)
	$(CC) -c -mmcs51 --model-large -I headers $< -o $@

bin/debug_%.rel: src/%.c $(HEADERS)
	$(CC) -c -mmcs51 --model-large -D DEBUG -I headers $< -o $@

# bin/debug_%.rel: src/%.c headers/my_serial.h headers/input.h headers/heap.h headers/linked_list.h headers/debug.h
# 	$(CC) -c -mmcs51 --model-large -D DEBUG -I headers src/main.c -o bin/main.rel

# Delete all generated files from bin directory
clean:
	del /q bin\*.*