import sys
n=int(sys.stdin.readline())
dp=[0]*(n+2)
dp[1]=1
dp[2]=3
if n>=3:
    for i in range(3,n+1):
        dp[i]=dp[i-1]+2*dp[i-2]
print(dp[n]%10007)
# 1: 2*1 -> 1가지
# 2: 2*2 -> 3가지
# 3: 2*3 -> 5가지 (3+1*2)
# 4: 2*4 -> 11가지 (5+3*2)
# 5: 2*5 -> 21가지 (11+5*2)
# 6:  (21+22)=43
# 7: 43+42=85
# 8: 85+86=171