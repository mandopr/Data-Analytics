l = []
l1=[]
t = ()

for i in range(4):
    for j in range(2):
        j = int(input(f"Enter your {j+1} elments: "))
        l1.append(j)
    l.append(tuple(l1))
    l1.clear()

print("Your original list: ",l)

dict2 = dict(l)

print("your dictionary is :",dict2)

x = list(dict2.values())


x.sort(reverse = True)
x=x[:3]

print("highest values in dictionary:",x)

print("Keys: values")
for k in x:
    for f in dict2.keys():
        if(dict2[f]==k):
            print(str(f)+" : "+str(dict2[f]))
