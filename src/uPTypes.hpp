#pragma once

#include <avr/io.h>

namespace uP {
    using PinNum_t = uint8_t;

    template<typename Peripheral_t, uintptr_t Location>
    struct Peripheral {
        static constexpr uintptr_t location = Location;

        constexpr Peripheral() { };

        static Peripheral_t& Get() { return *reinterpret_cast<Peripheral_t*>(Location); }
        Peripheral_t* operator->() const { return &Get(); };
    };

    // The values represent when a signal is true (ie, 0 means LOW, which means a true active low signal)
    enum class Active {
        LOW = 0,
        HIGH = 1
    };

    enum class Direction {
        INPUT = 0,
        OUTPUT = 1
    };
}