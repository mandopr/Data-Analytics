l = []
l1=[]
t = ()

for i in range(2):
    for j in range(2):
        j = int(input(f"Enter your {j+1} elments: "))
        l1.append(j)
    l.append(tuple(l1))
    l1.clear()

print("Your original list: ",l)

print(dict(l))



dict2 = dict(l)

dict3 = sorted(dict2.items())


print(dict(dict3))
