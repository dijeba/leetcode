/*
 
 Given a positive integer n, find and return the longest distance between any two adjacent 1's in the binary
 representation of n. If there are no two adjacent 1's, return 0.

 Two 1's are adjacent if there are only 0's separating them (possibly no 0's). The distance between two 1's is
 the absolute difference between their bit positions. For example, the two 1's in "1001" have a distance of 3.
 
 Examples:
 
 1.
 
 Input: n = 22
 Output: 2
 
 Explanation: 22 in binary is "10110".
 
 The first adjacent pair of 1's is "101 10" with a distance of 2. (mirar el link porque viene mejor explicado)
 The second adjacent pair of 1's is "10 11 0" with a distance of 1.
 The answer is the largest of these two distances, which is 2.
 Note that "10110" is not a valid pair since there is a 1 separating the two 1's underlined.
 
 2.
 
 Input: n = 5
 Output: 2
 
 Explanation: 5 in binary is "101".
 
 3.
 
 Input: n = 6
 Output: 1
 
 Explanation: 6 in binary is "110".
 
 Link: https://leetcode.com/problems/binary-gap/
 
 */

import Foundation

class Solution {
    
    func binaryGap(_ n: Int) -> Int {
        
        var gaps: [Int] = []
        var counter = 0
        
        let binary = String(n, radix: 2)
        
        // Special case: Check number of 1s. If there's only 1, return 0
        
        var numberOf1s = 0
        
        for n in binary {
            
            if n == "1" {
                numberOf1s += 1
            }
        }
        
        if numberOf1s == 1 {
            return 0
        }
        // End Special case
        
        for n in binary {
            
            if n == "1" {
                gaps.append(counter + 1)
                counter = 0
            } else {
                counter += 1
            }
        }
        
        return gaps.max() ?? 0
    }
}
