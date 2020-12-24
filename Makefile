################################################################################
# Automatically-generated file. Do not edit!
################################################################################
include build_targets.env
include source.env

COMPILER_DEFINES = -DDEBUG

COMPILER_C = clang-10 
COMPILER_CXX = clang++-10

C_STD = -std=gnu99
CXX_STD = -std=c++20


DEPFLAGS = -MT $@ -MMD -MP -MF build_files/$*.d 

COMPILE_INCLUDES = -I./include -I./avrstl
COMPILE_FLAGS = -O3 -g2 --target=avr -mmcu=atxmega128a1u -Wall -funsigned-char -funsigned-bitfields -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -fno-asynchronous-unwind-tables -fno-jump-tables 
COMPILE_C_FLAGS = $(C_STD) -x c $(COMPILE_FLAGS)
COMPILE_CXX_FLAGS = $(CXX_STD) -fno-rtti -stdlib=libc++ -D__MACH__ $(COMPILE_FLAGS)

OUTPUT_ELF = output_files/$(OUTPUT_NAME).elf
OUTPUT_MAP = output_files/$(OUTPUT_NAME).map
OUTPUT_HEX = output_files/$(OUTPUT_NAME).hex
OUTPUT_LSS = output_files/$(OUTPUT_NAME).lss
OUTPUT_EEP = output_files/$(OUTPUT_NAME).eep
OUTPUT_SREC = output_files/$(OUTPUT_NAME).srec

DEPENDS := $(patsubst %.o,%.d,$(OBJ_FILES))
-include $(DEPENDS)

# Clang MUST be used in WSL or Linux. If done in Windows, it creates AVR in a weird format
./build_files/%.s: src/%.c
	@echo ==================== Building file: $< ==================== 
	@echo Invoking: Clang-10 Compiler
	$(COMPILER_C) $(COMPILE_INCLUDES) $(COMPILE_C_FLAGS) $(DEPFLAGS) -c -S -o "$@" "$<" 
	@echo Finished building: $<
	@echo Cleaning incompatible AVR...
	sed -i.bak -E "/(\.file\s\d*\s*".*"|\.loc|\.addrsig)/d" $@
	@echo Converted to Atmel AVR

./build_files/%.s: src/%.cpp
	@echo ==================== Building file: $< ==================== 
	@echo Invoking: Clang++-10 Compiler
	$(COMPILER_CXX) $(COMPILE_INCLUDES) $(COMPILE_CXX_FLAGS) $(DEPFLAGS) -c -S -o "$@" "$<" 
	@echo Finished building: $<
	@echo Cleaning incompatible AVR...
	sed -i.bak -E "/(\.file\s\d*\s*".*"|\.loc|\.addrsig)/d" $@
	@echo Fixing interrupts, adding global initialization
	python3.7 tools/fix_interrupts.py $@
	python3.7 tools/fix_global_inits.py $@
	@echo Converted to Atmel AVR

./build_files/%.o: build_files/%.s
	@echo Building file from assembly: $<
	@echo Invoking: AVR/GNU Assembler : 5.4.0
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe" -Wa,-gdwarf2 -x assembler-with-cpp -c -mmcu=atxmega128a1u -B "C:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega128a1u" -I "C:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\include" -Wa,-g -o "$@" "$<" 
	@echo Finished building: $<
	
# Call this target in AFTER the "compile" target from Windows with the AVR toolchain. ("make bin")
bin: $(OBJ_FILES)
	@echo Invoking: AVR/GNU Linker : 5.4.0
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-gcc.exe" -O3 -o $(OUTPUT_ELF) $(OBJ_FILES) $(USER_OBJS) -Wl,-Map="$(OUTPUT_MAP)" -Wl,--start-group -Wl,-lm  -Wl,--end-group -Wl,--gc-sections -mmcu=atxmega128a1u -B "C:\Program Files (x86)\Atmel\Studio\7.0\Packs\atmel\XMEGAA_DFP\1.1.68\gcc\dev\atxmega128a1u"  
	@echo Finished building target: $@
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O ihex -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures  "$(OUTPUT_ELF)" "$(OUTPUT_HEX)"
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -j .eeprom  --set-section-flags=.eeprom=alloc,load --change-section-lma .eeprom=0  --no-change-warnings -O ihex "$(OUTPUT_ELF)" "$(OUTPUT_EEP)" || exit 0
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objdump.exe" -h -S "$(OUTPUT_ELF)" > "$(OUTPUT_LSS)"
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-objcopy.exe" -O srec -R .eeprom -R .fuse -R .lock -R .signature -R .user_signatures "$(OUTPUT_ELF)" "$(OUTPUT_SREC)"
	"C:\Program Files (x86)\Atmel\Studio\7.0\toolchain\avr8\avr8-gnu-toolchain\bin\avr-size.exe" "$(OUTPUT_ELF)"

# Call this target FIRST in WSL or Linux ("make compile")
compile: $(S_FILES)
	





# Other Targets
clean:
	-$(RM) $(OBJS_AS_ARGS) $(EXECUTABLES)  
	-$(RM) $(C_DEPS_AS_ARGS)   
	rm -rf "Proj.elf" "Proj.a" "Proj.hex" "Proj.lss" "Proj.eep" "Proj.map" "Proj.srec" "Proj.usersignatures"
	