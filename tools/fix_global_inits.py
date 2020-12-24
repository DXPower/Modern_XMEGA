import re
import sys
from dataclasses import dataclass, field

filename = sys.argv[1]

file = open(filename, "r")
fileLines = file.readlines()
file.close()

globalInitRegex = re.compile(r"^(_GLOBAL__sub_I_.+\.cpp)(:)")
mainLabelRegex = re.compile(r"^main:\s")

globalInits = []
mainLabelIdx = 0

for idx, line in enumerate(fileLines):
    if mainLabelRegex.search(line) is not None:
        mainLabelIdx = idx

    globalInitLabel = globalInitRegex.match(line)

    if globalInitLabel is not None:
        print(globalInitLabel.group(1))
        globalInits.append(globalInitLabel.group(1))


for globalInitLabel in globalInits:
    fileLines.insert(mainLabelIdx + 1, "rcall " + globalInitLabel + "\n")

file = open(filename, "w")
file.writelines(fileLines)
file.close()
