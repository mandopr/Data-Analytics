s = input("enter your string here:")

def stringcount(s):
    counts = {}
    words = s.split()

    for word in words:
        if word in counts:
            counts[word] += 1
        else:
            counts[word] = 1

    return counts

print(stringcount(s))
