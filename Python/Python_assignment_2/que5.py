s = input("enter any random string:")

if len(s) >= 3:
    if s[-3:] == "ing":
        print(s[:-3] + "ly")

    else:
        print(s[:] + "ing")

else:
    print(s)
