#pragma once

namespace avrstl {
    template<typename First, typename... Others>
    First& GetFirstObject(First& first, const Others&&... others) {
        return first;
    }

    template<typename First, typename... Others>
    struct GetFirstType {
        using Type = First;
    };
}