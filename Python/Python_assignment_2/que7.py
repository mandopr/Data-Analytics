#method 1: using math module

import math


a = int(input("enter your 1st number:"))
b = int(input("enter your 2nd number:"))

print("The Greatest Common Divisor of",a,"and",b,"is:",math.gcd(a,b))

#method 2 : using recursion

def gcd(a,b):
    if (b == 0):
        return a
    else:
        return gcd(b,a%b)


print("The Greatest Common Divisor of",a,"and",b,"is:",gcd(a,b))
