//
//  Solution.swift
//  LC_3Sum
//
//  Created by Diego Jerez Barroso on 27/09/2021.
//

import Foundation

class Solution {
    
    func threeSum(_ nums: [Int]) -> [[Int]] {
        
        guard nums.count >= 3 else {
            return []
        }
        
        let sorted = nums.sorted()
        let n = nums.count
        
        var result: Set<[Int]> = []
        
        for i in 0 ..< sorted.count - 2 {
            
            // a = x + y
            // if a > (x + y) -> k--
            // if a < (x + y) -> j++
            // if a == (x + y) -> take it to the array
            
            var j = i + 1
            var k = n - 1
            
            while j < k {
                
                let sum = sorted[i] + sorted[j] + sorted[k]
                
                if sum == 0 {
                    result.insert([sorted[i], sorted[j], sorted[k]])
                    j += 1
                    k -= 1
                } else if sum > 0 {
                    k -= 1
                } else if sum < 0 {
                    j += 1
                }
            }
        }
        
        return Array(result)
    }
}
