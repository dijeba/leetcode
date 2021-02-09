/*
 
 Given a string s which consists of lowercase or uppercase letters,
 return the length of the longest palindrome that can be built with those letters.

 Letters are case sensitive, for example, "Aa" is not considered a palindrome here.

 Examples:

 Example 1:

 Input: s = "abccccdd"
 Output: 7
 Explanation:
 One longest palindrome that can be built is "dccaccd", whose length is 7.
 
 Example 2:
 
 Input: s = "a"
 Output: 1
 
 Example 3:
 
 Input: s = "bb"
 Output: 2
 
 
 Constraints:
 
 1 <= s.length <= 2000
 s consists of lowercase and/or uppercase English letters only.
 
 Link: https://leetcode.com/problems/longest-palindrome/
 
 */

import Foundation

class Solution {
    
    func longestPalindrome(_ s: String) -> Int {
        
        // 1. Put all the letters in dict [char: Int]
        
        var dict: [Character: Int] = [:]
        
        for c in s {
            
            if let times = dict[c] {
                dict[c] = times + 1
            } else {
                dict[c] = 1
            }
        }
        
        // Special case: if dict has only one letter, like aaaaa, put the whole longitude (it doesnt matter if its odd or even)
        
        if dict.count == 1 {
            return dict[s.first!]!
        }
        
        // 2. Loop the dict, if the elements are odd, add the amount of elements to the currentPalindrome. If not, put them in a special array called NotEvenArray (for elements that not even)
        
        var currentPalindrome = 0
        var notEvenArray: [Int] = []
        
        for (_, v) in dict {
            
            if v % 2 == 0 {
                currentPalindrome += v
            } else {
                notEvenArray.append(v)
            }
        }
        
        // Get the central element, which will be the char that appears the most times...
        
        let centralElement = notEvenArray.max() ?? 0
        
        currentPalindrome += centralElement
        
        // ...and take it out of the array
        
        for (i, element) in notEvenArray.enumerated() {
            if element == centralElement {
                notEvenArray.remove(at: i)
                break
            }
        }
        
        // Loop the notEvenArray, and add to currentPalindrome, each element minus 1 (why minus 1? Because we need them even, and we know that all of them in this array are odd)
        
        for element in notEvenArray {
            let final = element - 1
            currentPalindrome += final
        }
        
        return currentPalindrome
    }
}
