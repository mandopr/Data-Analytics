l1 = []
for i in range(10):
    i = int(input("Enter your elements:"))
    l1.append(i)

print(l1)


#highest element

length = len(l1)
l1.sort()

print("largest element is : ",l1[length-1])

#smallest element

print("smallest element is: ",l1[0])

#second largest element


print("second largest element is: ",l1[length-2])

#second smallest element


print("second smallest element is: ",l1[1])
