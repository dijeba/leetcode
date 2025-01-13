# https://leetcode.com/problems/find-the-difference/

class Solution:

    def findTheDifference(self, s: str, t: str) -> str:
        for char in t:
            if t.count(char) > s.count(char):
                return char

"""
if __name__ == "__main__":
    # Example usage:
    solution = Solution()
    solution.findTheDifference("abcd", "abcde")
"""