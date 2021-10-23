//
//  Solution.swift
//  LC_Find-min-in-rotated-sorted-array
//
//  Created by Diego Jerez Barroso on 23/10/2021.
//  Link: https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/

import Foundation

class Solution {
    
    func findMin(_ nums: [Int]) -> Int {
        
//        return nums.min() ?? 0
        
        var left = 0
        var right = nums.count - 1
        
        while left < right {
            
            let mid = left + (right - left) / 2
            
            let leftVal = nums[left]
            let rightVal = nums[right]
            let midVal = nums[mid]
            
            if leftVal < midVal && midVal < rightVal {
                return leftVal
            }
            
            if midVal > rightVal {
                left = mid + 1
            } else {
                right = mid
            }
        }
        
        return nums[left]
        
//        guard nums.count > 1 else {
//            return nums.first!
//        }
//
//        var mutableNums = nums
//
//        while mutableNums.count >= 2 {
//
//            let mid = (mutableNums.count - 1) / 2
//
//            let midValue = mutableNums[mid]
//            let previousValue = mutableNums[mid - 1]
//            let nextValue = mutableNums[mid + 1]
//
//            if midValue > previousValue && midValue < nextValue {
//
//                mutableNums.removeAll()
//
//                for i in 0...mid {
//                    mutableNums.append(i)
//                }
//
//            } else if midValue < previousValue && midValue >
//        }
//
//        return 1
    }
}
