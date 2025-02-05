# https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
from typing import List

class Solution:
    
    """ Using DP, it works, but it is not efficient
    def maxProfit(self, prices: List[int]) -> int:
        matrix = [[0 for _ in range(len(prices))] for _ in range(len(prices))]

        for i, buyPrice in enumerate(prices):
            for j in range(0, len(prices)):
                if j <= i:
                    matrix[i][j] = -1
                else:
                    matrix[i][j] = prices[j] - buyPrice
        
        # max number in matrix:
        maxProfit = max(p for row in matrix for p in row)
        
        return maxProfit if maxProfit > 0 else 0
    """

    # Using 2Pointers
    def maxProfit(self, prices: List[int]) -> int:
        l, r = 0, 1 # left - buy, right - sell
        maxP = 0

        while (r < len(prices)):
            if prices[r] > prices[l]:
                profit = prices[r] - prices[l]
                maxP = max(maxP, profit)
            else:
                l = r

            r += 1

        return maxP