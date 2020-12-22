#pragma once

#include "integers.hpp"

namespace std {
    // We are redefining in the std namespace to allow for compatibility with structured bindings
    template<typename T>
    class tuple_size;

    template<typename T>
    class tuple_size<const T> : tuple_size<T> { };
}