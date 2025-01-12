/*
 
 Add to Array-Form of Integer

 The array-form of an integer num is an array representing its digits in left to right order.
     •    For example, for num = 1321, the array form is [1,3,2,1].
 
 Given num, the array-form of an integer, and an integer k, return the array-form of the integer num + k.
 
 Link: https://leetcode.com/problems/add-to-array-form-of-integer/
 
 */

import Foundation

class Solution {
    
    func addToArrayForm(_ num: [Int], _ k: Int) -> [Int] {
        
        guard num.count >= String(k).count else {
            
            let kString = Array(String(k))
            let newNum = kString.compactMap{ Int(String($0)) }
            
            let newK = Int(num.map{ String($0) }.joined()) ?? 0
            
            return addToArrayForm(newNum, newK)
        }
        
        var carryOne = false
        var solution: [Int] = []
        
        let kString = Array(String(k).reversed())
        
        for (index, n) in num.reversed().enumerated() {
            
            var digitToAdd: Int {
                
                if index < kString.count {
                    return Int(String(kString[index])) ?? 0
                } else {
                    return 0
                }
            }
            
            let sum = n + digitToAdd + (carryOne ? 1 : 0)
            
            var numToAdd: Int {
                
                if sum >= 10 && (num.count - index > 1) {
                    carryOne = true
                    return sum - 10
                } else {
                    carryOne = false
                    return sum
                }
            }
            
            // Double digit check
            
            if numToAdd >= 10 {
                let s = String(numToAdd).reversed()
                s.forEach{ solution.append(Int(String($0)) ?? 0) }
            } else {
                solution.append(numToAdd)
            }
        }
        
        // Remove unnecessary zeros:
        
        var finalSolution = Array(solution.reversed())
        
        for n in finalSolution {
            if n == 0 {
                finalSolution.removeFirst()
            } else {
                break
            }
        }
        
        if finalSolution.count == 0 {
            return [0]
        }
        
        return finalSolution
    }
}

extension String.Element {
    
    func toString() -> String {
        return "\(self)"
    }
}
