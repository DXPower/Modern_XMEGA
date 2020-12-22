#pragma once

#include "avrstl/bitvector.hpp"
#include "avrstl/packs.hpp"
#include "avrstl/pair.hpp"
#include "avrstl/type_traits.hpp"
#include "uPTypes.hpp"

namespace uP {
    struct Port;
        
    template<PinNum_t Pos, Direction Dir, Active Act>
    struct Pin {
        static constexpr PinNum_t position = Pos;
        static constexpr Direction direction = Dir;
        static constexpr Active activation = Act;

        static constexpr uint8_t mask = 1 << Pos;
        static constexpr uint8_t invMask = ~mask;

        public:
        constexpr Pin() { };
    };

    template<typename PortLoc, PinNum_t Pos, Direction Dir, Active Act>
    struct PinControl {
        using Pin = Pin<Pos, Dir, Act>;
        using Port = PortLoc;

        private:
        PortLoc portLoc = PortLoc();

        public:
        constexpr PinControl() {
            if constexpr (Dir == Direction::OUTPUT) {
                Set<false>();
                portLoc->DIRSET = Pin::mask;
            } else {
                portLoc->DIRCLR = Pin::mask;
            }
        };

        template<bool Value>
        void Set() const {
            if constexpr (Pin::activation == Active::HIGH) {
                (Value == true ? portLoc->OUTSET : portLoc->OUTCLR) = Pin::mask;
            } else {
                (Value == true ? portLoc->OUTCLR : portLoc->OUTSET) = Pin::mask;
            }
        }

        void Set(bool v) const {
            if (v) Set<true>();
            else Set<false>();
        }

        void Toggle() const {
            portLoc->OUTTGL = Pin::mask;
        }

        bool Read() const {
            return static_cast<bool>(portLoc->IN & Pin::mask);
        }

        constexpr static uintptr_t GetPortAddr() {
            return Port::location;
        }
    };

    enum TogglePin_e {
        TogglePin
    };

    // Set multiple pins on the same port to a value true, false, or TogglePin
    template<auto Value, typename... Pins>
    void SetPins(const Pins&... pins) {
        static_assert(sizeof...(pins) != 0); // Make sure the number of pins > 0

        using CommonPort = typename avrstl::GetFirstType<Pins...>::Type::Port; // Get the port of the first pin

        static_assert(((Pins::GetPortAddr() == CommonPort::location) && ...)); // Make sure all pins are on the same port

        
        if constexpr (!avrstl::is_same_v<decltype(Value), TogglePin_e>()) { // If we are setting true/false
            if constexpr ((((decltype(pins)::Pin::activation) == Active::LOW) || ...)) { // If there are any active low pins
                // OR together the masks of all the active-low pins
                constexpr uint8_t bits = ((decltype(pins)::Pin::mask & (0xFFu * (static_cast<uint8_t>(decltype(pins)::Pin::activation == Active::LOW)))) | ...);
                
                // Then either set or clear the pins based on whether we are setting to true or false
                (Value == true ? CommonPort::Get().OUTCLR : CommonPort::Get().OUTSET) = bits;
            }
            
            if constexpr ((((decltype(pins)::Pin::activation) == Active::HIGH) || ...)) { // If there are any active high pins
                // OR together the masks of all the active-high pins
                constexpr uint8_t bits = ((decltype(pins)::Pin::mask & (0xFFu * (static_cast<uint8_t>(decltype(pins)::Pin::activation == Active::HIGH)))) | ...);

                // Then either set or clear the pins based on whether we are setting to true or false
                (Value == true ? CommonPort::Get().OUTSET : CommonPort::Get().OUTCLR) = bits;
            }
        } else { // Else if we are togglign the pins
            // OR together the masks of all the pins
            constexpr uint8_t bits = ((decltype(pins)::Pin::mask) | ...);

            // THen write to the toggle register
            CommonPort::Get().OUTTGL = bits;
        }
    }

    // First item in pair is for what we need to OUTSET
    // Second item in pair is for what we need to OUTCLR
    template<avrstl::Word_t Value, typename LeftmostPin, typename... Pins>
    constexpr avrstl::pair<avrstl::Word_t, avrstl::Word_t> WalkPinsBinary() {
        using avrstl::Word_t;

        using Bits = avrstl::wordvector<Value>;
        constexpr bool curBit = Bits::template Get<sizeof...(Pins)>();

        constexpr Active activation = LeftmostPin::Pin::activation;
        constexpr Word_t mask = LeftmostPin::Pin::mask;

        if constexpr (sizeof...(Pins) == 0) {
            if constexpr (activation == Active::HIGH) {
                if constexpr (curBit)
                    return avrstl::pair<Word_t, Word_t>(mask, 0); // Need to set the bin for this pin
                else
                    return avrstl::pair<Word_t, Word_t>(0, mask); // Need to clear the bin for this pin
            } else {
                if constexpr (curBit)
                    return avrstl::pair<Word_t, Word_t>(0, mask); // Need to clear the bin for this pin
                else
                    return avrstl::pair<Word_t, Word_t>(mask, 0); // Need to set the bin for this pin
            }
        } else {
            constexpr auto setsClears = WalkPinsBinary<Value, Pins...>();

            if constexpr (activation == Active::HIGH) {
                if constexpr (curBit)
                    return avrstl::pair<Word_t, Word_t>(setsClears.first | mask, setsClears.second); // Need to add this pin to the sets
                else
                    return avrstl::pair<Word_t, Word_t>(setsClears.first, setsClears.second | mask); // Need to add this pin to the clears
            } else {
                if constexpr (curBit)
                    return avrstl::pair<Word_t, Word_t>(setsClears.first, setsClears.second | mask); // Need to add this pin to the clears
                else
                    return avrstl::pair<Word_t, Word_t>(setsClears.first | mask, setsClears.second); // Need to add this pin to the sets
            }
        }
    }

    template<avrstl::Word_t Value, typename... Pins>
    void SetPinsBinary(const Pins&... pins) {
        static_assert(sizeof...(Pins) != 0); // Make sure the number of pins > 0

        using CommonPort = typename avrstl::GetFirstType<Pins...>::Type::Port; // Get the port of the first pin
        static_assert(((Pins::GetPortAddr() == CommonPort::location) && ...)); // Make sure all pins are on the same port

        constexpr auto setsClears = WalkPinsBinary<Value, Pins...>();

        if constexpr (setsClears.first != 0)
            CommonPort::Get().OUTSET = setsClears.first;
        
        if constexpr (setsClears.second != 0)
            CommonPort::Get().OUTCLR = setsClears.second;
    }


    using Port_t = PORT_t;

    template<uintptr_t Location>
    using IO_Port = Peripheral<Port_t, Location>;

    using PORTA_L = IO_Port<0x0600>; /* I/O Ports */
    using PORTB_L = IO_Port<0x0620>; /* I/O Ports */
    using PORTC_L = IO_Port<0x0640>; /* I/O Ports */
    using PORTD_L = IO_Port<0x0660>; /* I/O Ports */
    using PORTE_L = IO_Port<0x0680>; /* I/O Ports */
    using PORTF_L = IO_Port<0x06A0>; /* I/O Ports */
    using PORTH_L = IO_Port<0x06E0>; /* I/O Ports */
    using PORTJ_L = IO_Port<0x0700>; /* I/O Ports */
    using PORTK_L = IO_Port<0x0720>; /* I/O Ports */
    using PORTQ_L = IO_Port<0x07C0>; /* I/O Ports */
    using PORTR_L = IO_Port<0x07E0>; /* I/O Ports */
}