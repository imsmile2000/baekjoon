N=int(input())
A=set(map(int,input().split()))
M=int(input())
B=list(map(int,input().split()))
for i in range(M):
    if B[i] in A:
        print("1")
    else:
        print("0")