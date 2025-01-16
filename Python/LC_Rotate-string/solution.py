# https://leetcode.com/problems/rotate-string/

class Solution:
    
    def rotateString(self, s: str, goal: str) -> bool:
        if len(s) != len(goal):
            return False
        
        if set(s) != set(goal):
            return False
        
        if s == goal:
            return True
        
        rotated = s
        for i in range(0, len(s)):
            if rotated == goal:
                return True
            
            extractedChar = rotated[0]
            slicedStr = rotated[1:]
            rotated = slicedStr + extractedChar
        
        return rotated == goal