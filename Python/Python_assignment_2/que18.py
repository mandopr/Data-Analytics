n = int(input("Enter number:"))
fact = 1

if n == 0:
    print("please give proper numbers")

elif n == 1:
    print("Your factorial number is 1")

else:
    for i in range(2,n+1):
        fact =fact*i


print("your factorial value for given input:",fact)
