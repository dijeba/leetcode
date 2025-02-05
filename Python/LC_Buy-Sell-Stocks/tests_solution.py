import unittest
from solution import Solution

class SolutionTests(unittest.TestCase):
    
    def test1(self):
        sut = Solution()
        prices = [7,1,5,3,6,4]
        self.assertEqual(sut.maxProfit(prices), 5)

    def test2(self):
        sut = Solution()
        prices = [7,6,4,3,1]
        self.assertEqual(sut.maxProfit(prices), 0)

if __name__ == "__main__":
    unittest.main()