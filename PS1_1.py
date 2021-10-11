from math import perm


def Print_values(a,b,c):
    if a > b:
        if b>c:
            print(a,b,c)
        elif a>c:
            print(a,c,b)
        else:
            print(c,a,b)
    elif b>c:
        if a>c:
            print(b,a,c)
        else:
            print(b,c,a)
    elif c>b:
            print(c,b,a)




a,b,c=eval(input("请输入2个整数,中间用逗号分开:"))
Print_values(a,b,c)

    


