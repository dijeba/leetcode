//
//  Solution.swift
//  LC_Valid-Parenthesis
//
//  Created by Diego Jerez Barroso on 22/01/2021.
//

/**
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 1. Open brackets must be closed by the same type of brackets.
 2. Open brackets must be closed in the correct order.
 
 Ex:
 '()' - true
 '()[]{}' -true
 '([{}])' -true
 '(]' - false
 '([)]' - false
 
 Link: https://leetcode.com/problems/valid-parentheses/
 */

import Foundation

class Solution {
    
    func isValid(_ s: String) -> Bool {
        
        guard !s.isEmpty, s.count % 2 == 0 else {
            return false
        }
        
        var stack: [Character] = []
        
        var i = 0
        
        for p in s {
            
            if isOpen(p) {
                stack.append(p)
            } else {
                guard let counterPart = stack.popLast() else {
                    return false
                }
                
                if !areCounterparts(counterPart, p) {
                    return false
                }
            }
            
            i += 1
        }
        
        if !stack.isEmpty {
            return false
        }
        
        return true
    }
    
    private func isOpen(_ c: Character) -> Bool {
        return c == "{" || c == "(" || c == "["
    }
    
    private func areCounterparts(_ c1: Character, _ c2: Character) -> Bool {
        return c1 == "{" && c2 == "}" || c1 == "[" && c2 == "]" || c1 == "(" && c2 == ")"
    }
}
