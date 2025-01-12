//
//  ViewController.swift
//  LC-two-sum
//
//  Created by Diego Barroso on 25.08.19.
//  Copyright © 2019 Diego Barroso. All rights reserved.
//

/**
 
 Given an array of integers, return indices of the two numbers such that they add up to a specific target.
 
 You may assume that each input would have exactly one solution, and you may not use the same element twice.
 
 Example:
 
 Given nums = [2, 7, 11, 15], target = 9,
 
 Because nums[0] + nums[1] = 2 + 7 = 9,
 return [0, 1].
 
 **/

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let givenNums = [-1, -2, -3, -4, -5]
        let target = -8
        
        print("\(self.twoSum(givenNums, target))")
        print("Finished")
    }
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        for i in 0..<nums.count {
            
//            guard nums[i] <= target else { // Fix because of the negative numbers
//                continue
//            }
            
//            if nums[i] == target { // Fix because it HAS to be the sum of TWO elements
//                return [i]
//            }
            
            for j in 1..<nums.count {
                
                guard i != j, // fix for not using the same element twice
                    nums[i] + nums[j] <= target else { // fix for negative values
                    continue
                }
                
//                if nums[j] == target {
//                    return [j]
//                }
                
                let sum = nums[i] + nums[j]
                
                if sum == target {
                    return [i, j]
                }
            }
        }
        
        return []
    }
}

