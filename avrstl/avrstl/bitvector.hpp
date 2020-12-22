#pragma once

#include "integers.hpp"
#include "array.hpp"

namespace avrstl {
    template<Word_t Bits>
    struct wordvector {
        static constexpr Word_t bits = Bits;

        template<uint8_t Pos>
        static constexpr bool Get() {
            static_assert(Pos < 8);
            
            return Bits & (1 << Pos);
        }
        
        static constexpr avrstl::array<Word_t, sizeof(Word_t) * 8> data
            { Get<0>(), Get<1>(), Get<2>(), Get<3>(), Get<4>(), Get<5>(), Get<6>(), Get<7>() };
    };
}