#include "led.h"
 
#include <avr/io.h> 

void init_leds() {
    PORTD.DIRSET = 1 << 4; // Green LED on pin 5
    PORTD.OUTCLR = 1 << 4;
    
    PORTD.DIRSET = 1 << 6;
    PORTD.OUTSET = 1 << 6;
}
