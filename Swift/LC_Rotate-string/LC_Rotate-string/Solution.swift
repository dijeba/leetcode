/*
 
 We are given two strings, A and B.

 A shift on A consists of taking string A and moving the leftmost character to the rightmost position.
 For example, if A = 'abcde', then it will be 'bcdea' after one shift on A.
 Return True if and only if A can become B after some number of shifts on A.
 
 Examples:
 
 Example 1:
 Input: A = 'abcde', B = 'cdeab'
 Output: true
 
 Example 2:
 Input: A = 'abcde', B = 'abced'
 Output: false
 
 Link: https://leetcode.com/problems/rotate-string/
 
 */

import Foundation

class Solution {
    
    func rotateString(_ A: String, _ B: String) -> Bool {
        
        guard A != B else {
            return true
        }
        
        guard A.count == B.count else {
            return false
        }
        
        
        var rotated: [Character]
        
        var aCharacterized = A.map { $0 as Character }
        let bCharacterized = B.map { $0 as Character }
        
        for _ in 0 ..< A.count {
            
            rotated = shiftByOne(aCharacterized)
            aCharacterized = rotated
            
            if rotated == bCharacterized {
                return true
            }
        }
        
        
        return false
    }
    
    private func shiftByOne(_ A: [Character]) -> [Character] {
        
        var rotated: [Character] = []
        rotated.reserveCapacity(A.count)
        
        var lastValue: Character = "!"
        
        for (i, char) in A.enumerated() {
            
            if i == 0 {
                lastValue = char
            } else {
                rotated.append(char)
            }
        }
        
        rotated.append(lastValue)
        
        return rotated
    }
}
