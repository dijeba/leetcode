//
//  Solution.swift
//  LC_Group-Anagrams
//
//  Created by Diego Jerez Barroso on 29/09/2021.
//

import Foundation

class Solution {
    
    // Taken from here:
    // https://leetcode.com/problems/group-anagrams/discuss/1507409/Java-HashMap-Solution-Commented
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var dict: [[String.Element]: [String]] = [:]
        
        for string in strs {
            
            let sorted = string.sorted()
            
            var array: [String] = dict[sorted] ?? []
            array.append(string)
            
            dict[sorted] = array
        }
        
        return dict.values.map { Array($0) }
    }
    
    // Didnt work out
    func groupAnagrams3(_ strs: [String]) -> [[String]] {
        
        var dict: [Int: [String]] = [:]
        
        for i in 0 ..< strs.count {
            
            let mainWord = strs[i]
            let weight = weightOf(mainWord)
            let key = weight
            
            var array: [String] = dict[key] ?? []
            array.append(mainWord)
            
            dict[key] = array
        }
        
        return dict.values.map { Array($0) }
    }
    
    // Didnt work out
    func groupAnagrams2(_ strs: [String]) -> [[String]] {
        
        guard strs.count > 1 else {
            return [Array(strs)]
        }
        
        guard !isAlwaysTheSameChar(strs) else {
            
            var solution: [String] = []
            
            for s in strs {
                solution.append(s)
            }
            
            return [solution]
        }
        
        //var dict: [Key: [String]] = [:]
        var dict: [Int: [String]] = [:]
        
        for i in 0 ..< strs.count {
            
            let mainWord = strs[i]
            let weight = weightOf(mainWord)
            //let key = Key(i: i, w: weight)
            let key = weight
            
            var array: [String] = dict[key] ?? []
            
            if array.isEmpty {
                array.append(mainWord)
            }
            
            for j in 1 ..< strs.count {
                
                let word = strs[j]
                
                if isAnagram(mainWord, word) {
                    array.append(word)
                }
            }
            
            dict[key] = array
        }
        
        var solution: [[String]] = []
        
        // Remove duplicates:
        
        for v in dict.values {
            
            var set: Set<String> = []
            
            v.forEach { set.insert($0) }
            
            solution.append(Array(set))
        }
        
        
        
        return solution
    }
    
    private func isAnagram(_ s1: String, _ s2: String) -> Bool {
        
        let asciiValues1 = s1.asciiValues
        let asciiValues2 = s2.asciiValues
        
        let weight1 = asciiValues1.compactMap { Int($0) }.reduce(0, +)
        let weight2 = asciiValues2.compactMap { Int($0) }.reduce(0, +)
        
        return weight1 == weight2
    }
    
    private func weightOf(_ s: String) -> Int {
        s.asciiValues.compactMap { Int($0) }.reduce(0, +)
    }
    
    private func isAlwaysTheSameChar(_ strs: [String]) -> Bool {
        
        let characterWeight = strs.first!.asciiValues.first!
        
        for s in strs {
            if s.asciiValues.first! != characterWeight {
                return false
            }
        }
        
        return true
    }
    
    struct Key: Hashable {
        let i: Int
        let w: Int
    }
}

extension StringProtocol {
    var asciiValues: [UInt8] { compactMap(\.asciiValue) }
}
