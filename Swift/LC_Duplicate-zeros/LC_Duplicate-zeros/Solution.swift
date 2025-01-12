/*
 
 Given a fixed length array arr of integers, duplicate each occurrence of zero, shifting the remaining elements to the right.

 Note that elements beyond the length of the original array are not written.
 
 Do the above modifications to the input array in place, do not return anything from your function.
 
 Examples:
 
 Example 1:
 
 Input: [1,0,2,3,0,4,5,0]
 Output: null
 
 Explanation: After calling your function, the input array is modified to: [1,0,0,2,3,0,0,4]
 Example 2:
 
 Input: [1,2,3]
 Output: null
 
 Explanation: After calling your function, the input array is modified to: [1,2,3]
 
 
 Note:
 
 1 <= arr.length <= 10000
 0 <= arr[i] <= 9
 
 Link: https://leetcode.com/problems/duplicate-zeros/
 
 */

import Foundation

class Solution {
    
    func duplicateZeros(_ arr: inout [Int]) {
        
        let finalCount = arr.count
        var answer: [Int] = []
        
        var totalI = 0
        
        while answer.count < finalCount {
            
            var shouldRemove = false
            
            for (i, element) in arr.enumerated() {
                
                totalI = i + 1
                
                if element == 0 {
                    
                    answer.append(0)
                    
                    if answer.count == finalCount {
                        break
                    }
                    
                    answer.append(0)
                    
                    shouldRemove = true
                    break
                    
                } else {
                    answer.append(element)
                }
                
                if answer.count == finalCount {
                    break
                }
            }
            
            if shouldRemove {
                for _ in 0..<totalI {
                    arr.removeFirst()
                }
            }
        }
        
        arr = answer
    }
}
