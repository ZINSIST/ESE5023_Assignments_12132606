def Pascal_triangle(k):
    def triangle():
        L = [1]
        while True:
            yield L
            L = [1] + [L[i-1] + L[i] for i in range(1,len(L))] + [1]

    t= triangle()

    n=0
    for t in triangle():
        
        n = n + 1
        if n == k:
            print(t)

Pascal_triangle(100)

Pascal_triangle(200)

