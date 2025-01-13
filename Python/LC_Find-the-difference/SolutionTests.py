import unittest
from Solution import Solution

class SolutionTests(unittest.TestCase):
    
    def test1(self):
        sut = Solution()
        self.assertEqual(sut.findTheDifference("abcd", "abcde"), "e")

    def test2(self):
        sut = Solution()
        self.assertEqual(sut.findTheDifference("", "y"), "y")

    def test3(self):
        sut = Solution()
        self.assertEqual(sut.findTheDifference("a", "aa"), "a")

    def test3(self):
        sut = Solution()
        self.assertEqual(sut.findTheDifference("abcdd", "abcddd"), "d")

if __name__ == "__main__":
    unittest.main()