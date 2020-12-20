#Main application file name
MAIN_APP = LedBlink
#Main hex file path in windows format
MAIN_HEX_PATH = Proj.hex

# Compiler and other Section
CC = avr-gcc
OBJCOPY = avr-objcopy.exe
AVRDUDE := avrdude

#Options for avr-gcc
CFLAGS = -g -Os -o

#Linking options for avr-gcc
LFLAGS = -Os -mmcu=atmega8 -o

#Options for HEX file generation
HFLAGS = -j .text -j .data -O ihex

#Options for avrdude to burn the hex file
#MMCU model here according to avrdude options
DUDEFLAGS = -c
DUDEFLAGS += usbasp-clone
DUDEFLAGS += -p
DUDEFLAGS += x128a1u  
# DUDEFLAGS += -P 
# DUDEFLAGS += usb:4:2
DUDEFLAGS += -b 
DUDEFLAGS += 2000000 
DUDEFLAGS += -U flash:w:$(MAIN_HEX_PATH):i
DUDEFLAGS += -v

# Sources files needed for building the application 
SRC = $(MAIN_APP).c
# SRC += 

# The headers files needed for building the application
INCLUDE = -I "C:\\Program Files (x86)\\Atmel\\Studio\\7.0\\toolchain\\avr8\\avr8-gnu-toolchain\\avr\\include"
# INCLUDE += 

# commands Section
Burn:
	$(AVRDUDE) $(DUDEFLAGS)

Build : $(MAIN_APP).elf
	$(OBJCOPY) $(HFLAGS) $< $(MAIN_APP).hex
	
$(MAIN_APP).elf: $(MAIN_APP).o
	$(CC) $(SRC) $(INCLUDE) $(LFLAGS) $@
	
$(MAIN_APP).o:$(SRC)
	$(CC) $^ $(INCLUDE) $(CFLAGS) $@