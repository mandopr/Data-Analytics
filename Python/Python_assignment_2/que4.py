s1 = input("enter your first string here:")

s2 = input("enter your second string here:")


s3 = f"{s2[:2]+s1[2:]} {s1[:2]+s2[2:]}"

print(s3)
