n = int(input("How many terms?:"))

a=0
b=1
c=a+b

l=[str(c)]

for i in range(n):
    print(f"After{i+1} iteration:{','.join(l)}")
    a=b
    b=c
    c=a+b
    l.append(str(c))
    
