//
//  Solution.swift
//  LC_Maximum-subarray
//
//  Created by Diego Jerez Barroso on 26/09/2021.
//

import Foundation

class Solution {
    
    // MARK: - Solution 0(n)
    // Solution from: https://www.youtube.com/watch?v=o9zHLE6ez5Y&t=344s
    
    func maxSubArray(_ nums: [Int]) -> Int {
        
        var current = nums.first ?? 0
        var maxN = current
        
        for i in 1 ..< nums.count {
            current = max(current + nums[i], nums[i])
            maxN = max(maxN, current)
        }
        
        return maxN
    }
    
    // MARK: - Solution 0ˆ2
    // (My solution)
    
    func maxSubArray2(_ nums: [Int]) -> Int {
        
        var mutableNums = nums
        var sums: [Int] = []
        
        for _ in nums {
            sums.append(contentsOf: findSum2(mutableNums))
            mutableNums.removeFirst()
        }
        
        return sums.max() ?? 0
    }
    
    private func findSum2(_ nums: [Int]) -> [Int] {
        
        var helperArray: [Int] = []
        var sums: [Int] = []
        
        for (i, n) in nums.enumerated() {
            helperArray.append(n)
            
            if i > 0 {
                let previousSum = helperArray[i - 1]
                sums.append(previousSum + n)
            } else {
                sums.append(n)
            }
        }
        
        return sums
    }
}
