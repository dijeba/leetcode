/*
 
Given two non-negative integers, num1 and num2 represented as string, return the sum of num1 and num2 as a string.
 
Example 1:

Input: num1 = "11", num2 = "123"
Output: "134"
Example 2:

Input: num1 = "456", num2 = "77"
Output: "533"
Example 3:

Input: num1 = "0", num2 = "0"
Output: "0"
 
Link: https://leetcode.com/problems/add-strings/submissions/
 
 */

import Foundation

class Solution {
    
    func addStrings(_ num1: String, _ num2: String) -> String {
        
        var carryOne = false
        
        let maxCount = max(num1.count, num2.count)
        
        var result: String = ""
        
        let num1Reversed = Array(num1.reversed())
        let num2Reversed = Array(num2.reversed())
        
        for i in 0...(maxCount - 1) {
            
            var n1: Int {
                
                if i < num1Reversed.count {
                    
                    let element = num1Reversed[i]
                    return Int(String(element)) ?? 0
                    
                } else {
                    return 0
                }
            }
            
            var n2: Int {
                
                if i < num2Reversed.count {
                    
                    let element = num2Reversed[i]
                    return Int(String(element)) ?? 0
                    
                } else {
                    return 0
                }
            }
            
            let sum = n1 + n2 + (carryOne ? 1 : 0)
            
            if sum >= 10 && i < (maxCount - 1) {
                
                carryOne = true
                
                let sumString = String(sum)
                let lastValue = String(sumString.last!)
                
                result.append(lastValue)
                
            } else if sum >= 10 && i == (maxCount - 1) {
                
                // Ugly workaround but it is what it is
                let sumString = String(String(sum).reversed())
                result.append(sumString)
                
            } else {
                
                carryOne = false
                result.append(String(sum))
            }
        }
        
        let resultReversed = result.reversed().map { String($0) }
        
        return resultReversed.joined()
    }
}
