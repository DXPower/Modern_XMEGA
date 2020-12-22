#pragma once

#include "integers.hpp"

namespace avrstl {
    // template<auto First, auto Second>
    // struct pair {
    //     static constexpr decltype(First) first = First;
    //     static constexpr decltype(Second) second = Second;
    // };
    
    template<typename First, typename Second>
    struct pair {
        First first;
        Second second;

        constexpr pair(const First& first, const Second& second) : first(first), second(second) { };
    };
}