//
//  Solution.swift
//  LC_Merge-intervals
//
//  Created by Diego Jerez Barroso on 28/09/2021.
//

import Foundation

class Solution {
    
    func merge(_ intervals: [[Int]]) -> [[Int]] {
        
        guard intervals.count > 1 else {
            return intervals
        }
        
        var solution: [[Int]] = []
        var max = Int.min
        
        let intervalsSorted = intervals.sorted {
            ($0.first!, $0.last!) < ($1.first!, $1.last!)
        }
        
        for interval in intervalsSorted {
            
            let first = interval.first!
            let last = interval.last!
            
            if first <= max {
                
                let lastPosition = solution.count - 1
                
                var lastStoredInterval = solution[lastPosition]
                
                let lastStoredIntervalFirst = lastStoredInterval[0]
                let lastStoredIntervalLast  = lastStoredInterval[1]
                
                lastStoredInterval[0] = first < lastStoredIntervalFirst ? first : lastStoredIntervalFirst
                lastStoredInterval[1] = last > lastStoredIntervalLast ? last : lastStoredIntervalLast
                
                solution[lastPosition] = lastStoredInterval
                
            } else {
                solution.append(interval)
            }
            
            max = solution.last?.last ?? Int.min
        }
        
        return solution
    }
}
