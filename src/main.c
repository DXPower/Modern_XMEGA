#include <avr/io.h>  

#include "led.h"

int main() {  
    uint16_t x = 0;   

    init_leds();

    while (1) {
        if (x++ == 60000) {  
            PORTD.OUTTGL = (1 << 4) | (1 << 6); // Toggle green LED
        }
    }
}  