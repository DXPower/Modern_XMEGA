include build_targets.env

./build_files/%.s : src/%.c
	@echo ==================== Building file: $< ==================== 
	@echo Invoking: Clang-10 Compiler
	clang-10 -x c -funsigned-char -funsigned-bitfields -DDEBUG  -I./include  -O0 -ffunction-sections -fdata-sections -fpack-struct -fshort-enums -g2 -Wall -mmcu=atxmega128a1u -c -std=gnu99 -MD -MP -MF "$(@:%.s=%.d)" -MT"$(@:%.s=%.d)" -MT"$(@:%.s=%.s)" --target=avr -S -o "$@" "$<" 
	@echo Finished building: $<
	@echo Cleaning incompatible AVR...
	sed -i.bak -E "/(\.file\s\d*\s*".*"|\.loc|\.addrsig)/d" $@
	@echo Converted to Atmel AVR

all: $(S_FILES)