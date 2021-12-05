// THIS A PYTHON PROGRAM TO CALCULATE THE CHARACTER FREQUENCY IN A LIST OF STRINGS
def charFrequency(l):
    freq = list()

    for i in range(0,26):
        freq[i] = 0

    for string in l:
        for char in string:
            freq[int(char.toLower()) - int(a)]++

    max = MIN_VAL
    for j in range(0, len(freq)):
        if freq[j] > max:
            max = freq[j]
            alpha = char(j)

    return tuple(alpha, max)


freq[a] = 1
freq[b] = 1
. 
.
.
freq[z] = 1


dict = {}

for string in list:
    for char in string:
        d[char] = d.get(char, 0) + 1