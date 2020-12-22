#pragma once

#include <stdint.h>

namespace avrstl {
    namespace detail {
        using Word_t = uint8_t;
        using DoubleWorld_t = uint16_t;
        using size_t = DoubleWorld_t;
        using ptr_t = uint16_t;
        using eptr_t = uint32_t; // 24 bits is the maximum here
    }
}