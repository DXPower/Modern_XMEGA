#include <avr/io.h> 
#include <avr/interrupt.h>

#include "led.h"
#include "IO.hpp"
#include "avrstl/bitvector.hpp"


using namespace uP;

auto redLed = PinControl<uP::PORTD_L, 4, Direction::OUTPUT, Active::LOW>();
auto greenLed = PinControl<uP::PORTD_L, 5, Direction::OUTPUT, Active::LOW>(); 
auto blueLed = PinControl<uP::PORTD_L, 6, Direction::OUTPUT, Active::LOW>();


int main() {  
    uint16_t x = 0;   

    auto select0 = PinControl<uP::PORTA_L, 0, Direction::OUTPUT, Active::HIGH>();
    auto select1 = PinControl<uP::PORTA_L, 1, Direction::OUTPUT, Active::HIGH>();
    auto select2 = PinControl<uP::PORTA_L, 2, Direction::OUTPUT, Active::HIGH>();


    TCC0.CNT = 0; 
    TCC0.PER = 10000;
    TCC0.INTCTRLA = TC_OVFINTLVL_LO_gc;
    TCC0.CTRLA = TC_CLKSEL_DIV256_gc;

    PMIC.CTRL = PMIC_LOLVLEN_bm;
    sei();

    // redLed.Toggle();

    while (1) {   
    //     if (x == 60000) {
    //         // redLed.Toggle();
    //         mode++;
    //         if (mode == 3) mode = 0;

    //         if (mode == 0) {
    //             // redLed.Toggle();
    //             // redLed.Toggle();
    //             SetPinsBinary<0b101>(greenLed, blueLed, redLed);
    //             SetPinsBinary<0b100>(select2, select1, select0);
    //         } else if (mode == 1) {
    //             // greenLed.Toggle();
    //             // redLed.Set<false>();
    //             SetPinsBinary<0b001>(greenLed, blueLed, redLed);
    //             SetPinsBinary<0b110>(select2, select1, select0);
    //         } else if (mode == 2) {
    //             // blueLed.Toggle();
    //             // blueLed.Set<false>();
    //             SetPinsBinary<0b011>(greenLed, blueLed, redLed);
    //             SetPinsBinary<0b101>(select2, select1, select0);
    //         }
    //     }

    //     x++;     
    }
} 

uint8_t mode = 0;    

ISR(TCC0_OVF_vect) {
    mode++;
    if (mode == 3) mode = 0;

    if (mode == 0) {
        SetPinsBinary<0b110>(redLed, greenLed, blueLed);
        // SetPinsBinary<0b100>(select2, select1, select0);
    } else if (mode == 1) {
        SetPinsBinary<0b001>(redLed, greenLed, blueLed);
        // SetPinsBinary<0b110>(select2, select1, select0);
    } else if (mode == 2) {
        SetPinsBinary<0b101>(redLed, greenLed, blueLed);
        // SetPinsBinary<0b101>(select2, select1, select0);
    }
}