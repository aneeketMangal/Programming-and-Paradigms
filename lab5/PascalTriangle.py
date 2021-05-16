def pascalTriangle(n):
    prev = [1]
    for i in range(1, n+1):
        curr = [1]
        for j in range(n-i):
            print(" ", end="")
        for j in range(1, i):
            curr.append(prev[j]+prev[j-1])
        print(*prev)
        prev = curr
        prev.append(1)


n = int(input('Enter a number: '))
pascalTriangle(n)
