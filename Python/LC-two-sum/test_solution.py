import unittest
from solution import Solution

class SolutionTests(unittest.TestCase):
    def test1(self):
        sut = Solution()
        self.assertEqual(sut.twoSum([2,7,11,15], 9), [0, 1])

    def test2(self):
        sut = Solution()
        self.assertEqual(sut.twoSum([3,2,4], 6), [2, 1])

    def test3(self):
        sut = Solution()
        self.assertEqual(sut.twoSum([3,3], 6), [0, 1])

if __name__ == "__main__":
    unittest.main()