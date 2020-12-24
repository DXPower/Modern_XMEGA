#pragma once

#include "uPTypes.hpp"

namespace uP {
    template<typename TimerType, uintptr_t TimerLocation>
    struct Timer : Peripheral<TimerType, TimerLocation> {
        
    };

    using TCC0_L = Timer<TC0_t, 0x0800>;
    using TCC1_L = Timer<TC1_t, 0x0840>;
    using TCD0_L = Timer<TC0_t, 0x0900>;
    using TCD1_L = Timer<TC1_t, 0x0940>;
    using TCE0_L = Timer<TC0_t, 0x0A00>;
    using TCE1_L = Timer<TC1_t, 0x0A40>;
    using TCF0_L = Timer<TC0_t, 0x0B00>;
    using TCF1_L = Timer<TC1_t, 0x0B40>;
}