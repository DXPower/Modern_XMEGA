import re
import sys
from dataclasses import dataclass, field

filename = sys.argv[1]

file = open(filename, "r")
fileLines = file.readlines()
file.close()

isrTagRegex = re.compile(r"(__vector_\d*:.*)")
returnRegex = re.compile(r"\s*ret")
modifyRegisterRegex = re.compile(r"([a-z]{1,3}\sr\d{1,2})")
modifyAddressRegex = re.compile(r"(-[XYZ]|[XYZ]\+)")
parseRegisterRegex = re.compile(r"(r\d{1,2}|[XYZ])")

@dataclass
class ModifyISR:
    isrBegin: int
    isrEnd: int = 0
    modifiedRegs: list = field(default_factory=list)

    def ApplyModifications(self, lines):
        curLine = self.isrEnd # Skip to where the return is
        lines[curLine] = "\treti\n" # Replace with proper reti instruction

        # Insert the restoration of the status register
        # We don't need to modify curLine here due to how insertion works
        lines.insert(curLine, "\tpop\tr16\n")
        lines.insert(curLine, "\tout\t0x003F, r16\n") # 0x003F is CPU_SREG
        lines.insert(curLine, "\tpop\tr16\n")

        # Insert restoration of modified registers
        for reg in self.modifiedRegs:
            if (reg == "r16"):
                continue

            lines.insert(curLine, "\tpop\t" + reg + "\n")

        # Skip to where the beginning is
        curLine = self.isrBegin + 1

        # Insert saving of status register
        lines.insert(curLine, "\tpush\tr16\n")
        lines.insert(curLine + 1, "\tin\tr16, 0x003F\n") # 0x003F is CPU_SREG
        lines.insert(curLine + 2, "\tpush\tr16\n")

        curLine += 3

        # Insert saving of modified registers
        for reg in self.modifiedRegs:
            lines.insert(curLine, "\tpush\t" + reg + "\n")
            curLine += 1

        self.PrintISR(lines)        

    def PrintISR(self, lines):
        curLine = self.isrBegin

        while True:
            print(lines[curLine])
            curLine += 1

            if returnRegex.search(lines[curLine - 1]) is not None:
                break


inISR = False
ISRs = []

for idx, line in enumerate(fileLines):
    if inISR:
        if returnRegex.search(line) is not None:
            inISR = False
            ISRs[-1].isrEnd = idx

        
        registerExpr = modifyRegisterRegex.search(line)

        if registerExpr is not None:
            print(registerExpr)
            register = parseRegisterRegex.search(registerExpr.group()).group()
            
            if register not in ISRs[-1].modifiedRegs:
                ISRs[-1].modifiedRegs.append(register)
    

        addrRegExpr = modifyAddressRegex.search(line)

        if addrRegExpr is not None:
            print(addrRegExpr)
            addrReg = parseRegisterRegex.search(addrRegExpr.group()).group()
            
            regHigh = addrReg + "H"

            if regHigh not in ISRs[-1].modifiedRegs:
                ISRs[-1].modifiedRegs.append(regHigh)
                ISRs[-1].modifiedRegs.append(addrReg + "L")

    elif isrTagRegex.search(line) is not None:
        inISR = True
        ISRs.append(ModifyISR(idx))

for modified in reversed(ISRs):
    modified.ApplyModifications(fileLines)

file = open(filename, "w")
file.writelines(fileLines)
file.close()

