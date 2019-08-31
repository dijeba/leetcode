//
//  Solution.swift
//  LC_Contains-Duplicate
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

import Foundation

class Solution {
    
    func containsDuplicate(_ nums: [Int]) -> Bool {
        
        let set = Set(nums)
        
        let arrayCount = nums.count
        let setCount = set.count
        
        if arrayCount == setCount {
            return false
        } else {
            return true
        }
    }
}
