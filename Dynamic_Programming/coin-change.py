#!/bin/python3
import sys
def getWays(coins,money,index,memo):
    if money is 0:
        return 1
    if index >= len(coins):
        return 0
    key = str(money) + '-' + str(index)
    if key in memo.keys():
        return memo[key]
    amtWithCoin = 0
    ways = 0
    while(amtWithCoin <= money):
        remain = money - amtWithCoin
        ways += getWays(coins,remain,index+1,memo)
        amtWithCoin += coins[index];
    memo[key] = ways
    return ways
    
n, m = input().strip().split(' ')
n, m = [int(n), int(m)]
c = list(map(int, input().strip().split(' ')))
memo = {}
ways = getWays(c,n,0,memo)
print(ways)
