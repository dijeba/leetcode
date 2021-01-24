/*
 
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.
 
 Example:

 1.
 Input: nums = [1,2,3,4]
 Output: [1,3,6,10]
 Explanation: Running sum is obtained as follows: [1, 1+2, 1+2+3, 1+2+3+4].
 
 2.
 Input: nums = [1,1,1,1,1]
 Output: [1,2,3,4,5]
 Explanation: Running sum is obtained as follows: [1, 1+1, 1+1+1, 1+1+1+1, 1+1+1+1+1].
 
 3.
 Input: nums = [3,1,2,10,1]
 Output: [3,4,6,16,17]
 
 Link: https://leetcode.com/problems/running-sum-of-1d-array/
 */

import Foundation

class Solution {
    
    func runningSum(_ nums: [Int]) -> [Int] {
        
        var temp = 0
        
        return nums.map{
            temp += $0
            return temp
        }
    }
}