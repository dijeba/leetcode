# https://leetcode.com/problems/two-sum/description/
from typing import List

class Solution:
    def twoSum(self, nums: List[int], target: int) -> List[int]:
        for index1, i in enumerate(nums):
            for index2 in range(1, len(nums)):
                j = nums[index2]
                if i + j == target:
                    return [index1, index2]