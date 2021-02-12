/*
 
 We define a harmonious array as an array where the difference between its maximum value and
 its minimum value is exactly 1.

 Given an integer array nums, return the length of its longest harmonious subsequence among
 all its possible subsequences.

 A subsequence of array is a sequence that can be derived from the array by deleting
 some or no elements without changing the order of the remaining elements.
 
 Examples:
 
 Example 1:

 Input: nums = [1,3,2,2,5,2,3,7]
 Output: 5
 Explanation: The longest harmonious subsequence is [3,2,2,2,3].
 
 Example 2:
 
 Input: nums = [1,2,3,4]
 Output: 2
 
 Example 3:
 
 Input: nums = [1,1,1,1]
 Output: 0
 
 Link: https://leetcode.com/problems/longest-harmonious-subsequence/
 */


/*
 
 Nota Diego:
 Despues de muchos intentos ha salido. La funcion "findLHS2()" es algo que me salio a mi, y funciona con todos los tests,
 pero en LT no pasa porque se queja del time complexity.
 
 La solucion 1, es una que he sacado gracias a una pista de LT.
 */

import Foundation

class Solution {
    
    func findLHS(_ nums: [Int]) -> Int {
        
        var dict: [Int: Int] = [:]
        
        for n in nums {
            
            if let times = dict[n] {
                dict[n] = times + 1
            } else {
                dict[n] = 1
            }
        }
        
        var answers: [Int] = []
        
        if dict.keys.count == 1 {
            return 0
        }
        
        for (k, v) in dict {
            
            if let nextValueTimes = dict[k + 1] {
                answers.append(v + nextValueTimes)
            }
        }
        
        return answers.max() ?? 0
    }
    
    func findLHS2(_ nums: [Int]) -> Int {
        
        var mutableNums = nums
        var i = 0
        var oneUp = true // in order to check number up or down
        var tempArray: [Int] = []
        var answers: [Int] = []
        var times = 0 // we need to run for every number
        
        while i < (nums.count - 1) {
            
            let currentNumber = nums[i]
            
            let nextNumber = oneUp ? currentNumber + 1 : currentNumber - 1
            
            for n in mutableNums {
                if n == currentNumber || n == nextNumber {
                    tempArray.append(n)
                }
            }
            
            if checkEveryNumberEqual(tempArray) {
                tempArray.removeAll()
            }
            
            answers.append(tempArray.count)
            tempArray.removeAll()
            
            oneUp = !oneUp
            times += 1
            
            if times == 2 {
                mutableNums.removeFirst()
                times = 0
                i += 1
            }
        }
        
        return answers.max() ?? 0
    }
    
    private func checkEveryNumberEqual(_ array: [Int]) -> Bool {
        
        guard let number = array.first else {
            return false
        }
        
        for n in array {
            if n != number {
                return false
            }
        }
        
        return true
    }
}
