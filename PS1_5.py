def fun(res, num, sb: str):
    if len(num) == 1:
        for i in range(len(num)):
            a = num[i]
            b = num[:]
            b.pop(i)
            operate = str(a)
            sb = sb + operate
            if eval(sb) == res:
                print(sb + "=" + str(res))
            return True
        else:
            return False
    for i in range(len(num)):
        a = num[i]
        b = num[:]
        b.pop(i)
        operate = str(a)
        sb = sb + operate
        fun(res, b, sb + '+')
        fun(res, b, sb + '-')
        fun(res, b, sb + '*')
        fun(res, b, sb + '/')
        return "True"


num = [1, 2, 3, 4, 5, 6, 7, 8, 9]
result = fun(100, num, '')
