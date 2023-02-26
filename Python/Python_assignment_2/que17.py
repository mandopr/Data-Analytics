#first method

import math

n = int(input("Enter Numbers that you want a series for:"))

if n%2 == 0:
    sum = 0
    fact = 1

    for i in range(2,n+1,2):
        fact=math.factorial(i)
        if i%2 == 0:
            sum = sum + ((i*10+2)/fact)

        print(sum)
           


else:
    sum = 0
    fact = 1

    for i in range(1,n+1,2):
        fact = math.factorial(i)
        if i%2 != 0:
            sum = sum + ( (i*10+2)/fact)

        print(sum)
    

###second method
##
##num_input = int(input("Enter any value:"))
##
##lst=[]
##
##def fact(num):
##    if num == 1:
##        return 1
##    elif num > 1:
##        return num*fact(num-1)
##
##odd_series_lst = even_series_lst = []
##
##if(num_input % 2 == 0):
##    even_series_lst = [((x*10)+2)/fact(x) for x in range(2,num_input+1,2)]
##    print(f"Sum of series upto {num_input} even -> {sum(even_series_lst)}")
##
##elif(num_input % 2 != 0):
##    odd_series_lst = [((x*10)+2)/fact(x) for x in range(1,num_input+1,2)]
##    print(f"Sum of series upto {num_input} for odd -> {sum(odd_series_lst)}")
##    
