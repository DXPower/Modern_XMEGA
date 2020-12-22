#include <avr/io.h> 

#include "led.h"
#include "IO.hpp"
#include "avrstl/bitvector.hpp"


using namespace uP;


int main() {  
    uint16_t x = 0;   

    auto redLed = PinControl<uP::PORTD_L, 4, Direction::OUTPUT, Active::LOW>();
    auto greenLed = PinControl<uP::PORTD_L, 5, Direction::OUTPUT, Active::LOW>();
    auto blueLed = PinControl<uP::PORTD_L, 6, Direction::OUTPUT, Active::LOW>();

    while (1) {
        if (x == 30000) {  
            SetPinsBinary<0b101>(greenLed, blueLed, redLed);
        } else if (x == 60000) {
            SetPinsBinary<0b011>(greenLed, blueLed, redLed);
        }

        x++;
    }
}  