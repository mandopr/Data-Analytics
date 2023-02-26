s1 = input("enter your string:")

ni = s1.index("not")
pi = s1.index("poor")

if ni > pi:
    print(f"{s1[:pi]}good{s1[(ni + 3):]}")

else:
    print(s1)

