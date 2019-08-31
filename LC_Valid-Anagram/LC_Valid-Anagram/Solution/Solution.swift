//
//  Solution.swift
//  LC_Valid-Anagram
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

// Example: s = "anagram", t = "nagaram" -> returns true

import Foundation

class Solution {
    
    func isAnagram(_ string1: String, _ string2: String) -> Bool {
        
        guard string1.count == string2.count else {
            return false
        }
        
        let string1Sorted = string1.sorted { $0 < $1 }
        let string2Sorted = string2.sorted { $0 < $1 }
        
        return string1Sorted == string2Sorted
    }
}
