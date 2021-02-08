/*
 
Given an arbitrary ransom note string and another string containing letters from all the magazines,
write a function that will return true if the ransom note can be constructed from the magazines;
otherwise, it will return false.

Each letter in the magazine string can only be used once in your ransom note.
 
Examples
 
Example 1:
Input: ransomNote = "a", magazine = "b"
Output: false
 
Example 2:
Input: ransomNote = "aa", magazine = "ab"
Output: false
 
Example 3:
Input: ransomNote = "aa", magazine = "aab"
Output: true
 
Link: https://leetcode.com/problems/ransom-note/
 
 */

import Foundation

class Solution {
    
    func canConstruct(_ ransomNote: String, _ magazine: String) -> Bool {
        
        var dict: [Character: Int] = [:]
        
        for m in magazine {
            
            if let times = dict[m] {
                dict[m] = times + 1
            } else {
                dict[m] = 1
            }
        }
        
        for r in ransomNote {
            
            if var times = dict[r] {
                times -= 1
                
                if times < 0 {
                    return false
                }
                
                dict[r] = times
            } else {
                return false
            }
        }
        
        return true
    }
}
