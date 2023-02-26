lst1 = [1,2,3,4,5,6,7,8,9]
lst2 = [4,5,6]

def sublist(lst1,lst2):
    for i in range(len(lst1)):
        if lst1[i] not in lst2:
            return False
        for j in range(len(lst2)):
            if (lst1[j] in lst2) and (lst2.index(lst1[i+1]) > lst2.index(lst1[i])):
                return True

print(sublist(lst1,lst2))

