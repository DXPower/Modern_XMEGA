#pragma once

#include "integers.hpp"

namespace avrstl {
    template<typename T, avrstl::size_t Length>
    struct array {
        private:
        T data[Length];

        public:
        constexpr array() { };
        constexpr array(T init[Length]) : data(init) { };

        constexpr T& operator[](avrstl::size_t index) { return data[index]; }
        constexpr const T& operator[](avrstl::size_t index) const { return data[index]; }

        constexpr avrstl::size_t size() const { return Length; };
    };
}