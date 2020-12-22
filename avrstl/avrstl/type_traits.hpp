#pragma once

namespace avrstl {
    struct false_type {
        static constexpr bool value = false;
        constexpr operator bool() const noexcept { return false; }
    };

    struct true_type {
        static constexpr bool value = true;
        constexpr operator bool() const noexcept { return true; }
    };

    template<typename LHS, typename RHS>
    struct is_same : false_type {};

    template<typename T>
    struct is_same<T, T> : true_type {};

    template<typename LHS, typename RHS>
    constexpr bool is_same_v() {
        return is_same<LHS, RHS>::value;
    }

    constexpr bool operator==(const false_type& lhs, const false_type& rhs) {
        return true;
    }

    constexpr bool operator==(const true_type& lhs, const true_type& rhs) {
        return true;
    }

    constexpr bool operator==(const false_type& lhs, const true_type& rhs) {
        return false;
    }

    constexpr bool operator==(const true_type& lhs, const false_type& rhs) {
        return false;
    }
}