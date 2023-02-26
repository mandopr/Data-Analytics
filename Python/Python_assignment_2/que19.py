n = int(input("Enter numbers that elements you want in list:"))
list_1 = []
for i in range(n):
    i = int(input(f"Enter your {i+1}th elements:"))
    list_1.append(i)

print("Your original list:",list_1)


set_values = set(list_1)
list_2 = list(set_values)

print("Your unique list:",list_2)

