freq_dict = {}
list_1 = []
n = int(input("Enter how many elements do you want in list?:"))
for i in range(n):
    i = int(input("Enter your elements:"))
    list_1.append(i)

for items in list_1:
    if (items in freq_dict):
        freq_dict[items]+=1

    else:
        freq_dict[items] = 1


print("Frequency of every elements are show in dictionary:",freq_dict)


