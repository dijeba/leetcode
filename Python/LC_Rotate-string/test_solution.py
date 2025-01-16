import unittest
from solution import Solution

class SolutionTests(unittest.TestCase):
    def test1(self):
        sut = Solution()
        self.assertTrue(sut.rotateString("abcde", "cdeab"))

    def test2(self):
        sut = Solution()
        self.assertFalse(sut.rotateString("abcde", "abced"))

if __name__ == "__main__":
    unittest.main()