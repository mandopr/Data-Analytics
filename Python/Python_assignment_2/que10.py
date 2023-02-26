l1 = []
for i in range(10):
    i = int(input("Enter your elements:"))
    l1.append(i)

print("Your original list:",l1)
'''
set() method is used to convert any of the iterable to
sequence of iterable elements with distinct elements
it can use on list,dictionary and tuple.
'''

ms = set(l1)
l2 = list(ms)

print("Your unique list:",l2)

