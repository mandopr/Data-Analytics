l = []
l1=[]
t = ()

for i in range(3):
    for j in range(3):
        j = int(input(f"Enter your {j+1} elments: "))
        l1.append(j)
    l.append(tuple(l1))
    l1.clear()

print("Your original list: ",l)


print("your unzip list:",list(zip(*l)))


