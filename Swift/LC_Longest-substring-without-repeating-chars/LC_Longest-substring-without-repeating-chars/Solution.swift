//
//  Solution.swift
//  LC_Longest-substring-without-repeating-chars
//
//  Created by Diego Jerez Barroso on 25/10/2021.
//  Link: https://leetcode.com/problems/longest-substring-without-repeating-characters/submissions/

import Foundation

class Solution {
    
    func lengthOfLongestSubstring(_ s: String) -> Int {
        
        guard !s.isEmpty else {
            return 0
        }
        
        var maxCount = 0
        var current: [String] = []
        var mutableString: [String] = s.map { String($0) }
        
        while mutableString.count > 0 {
            
            for letter in mutableString {
                
                if !current.contains(letter) {
                    current.append(letter)
                } else {
                    current.removeAll()
                    break
                }
                
                maxCount = max(maxCount, current.count)
            }
            
            mutableString.removeFirst()
        }
        return maxCount
    }
}
