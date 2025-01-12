//
//  Solution.swift
//  LC_Valid-sudoku
//
//  Created by Diego Jerez Barroso on 08/09/2021.
//  Link: https://leetcode.com/problems/valid-sudoku/submissions/

import Foundation

class Solution {
    
    func isValidSudoku(_ board: [[Character]]) -> Bool {
        
        // DIEGO: now
        
        // 1. Check rows:
        
        var charsSeenInRow: [Character] = []
        
        for row in board {
            for c in row where c != "." {
                
                if !charsSeenInRow.contains(c) {
                    
                    charsSeenInRow.append(c)
                    
                } else {
                    
                    return false
                }
            }
            
            charsSeenInRow.removeAll()
        }
        
        // 2. Check columns:
        
        var charsSeenInColumn: [Character] = []
        
        for i in 0...(board.count - 1) {
            
            for j in 0...(board.count - 1) {
                
                let c = board[j][i]
                
                if c == "." {
                    continue
                }
                
                if !charsSeenInColumn.contains(c) {
                    charsSeenInColumn.append(c)
                } else {
                    return false
                }
            }
            
            charsSeenInColumn.removeAll()
        }
        
        // 3. Check quadrants:
        
        var quadrants: [Int: [Character]] = [:]
        
        for i in 0...8 {
            quadrants[i] = []
        }
        
        for (iRow, row) in board.enumerated() {
            
            for (iChar, c) in row.enumerated() {
                
                if iRow < 3 && iChar < 3 { // 1
                    quadrants[0]?.append(c)
                } else if iRow < 3 && (iChar > 2 && iChar < 6) { // 2
                    quadrants[1]?.append(c)
                } else if iRow < 3 && (iChar > 5) { // 3
                    quadrants[2]?.append(c)
                } else if (iRow > 2 && iRow < 6) && iChar < 3 {
                    quadrants[3]?.append(c)
                } else if (iRow > 2 && iRow < 6) && (iChar > 2 && iChar < 6) {
                    quadrants[4]?.append(c)
                } else if (iRow > 2 && iRow < 6) && (iChar > 5) {
                    quadrants[5]?.append(c)
                } else if iRow > 5 && iChar < 3 {
                    quadrants[6]?.append(c)
                } else if iRow > 5 && (iChar > 2 && iChar < 6) {
                    quadrants[7]?.append(c)
                } else if iRow > 5 && (iChar > 5) {
                    quadrants[8]?.append(c)
                }
            }
        }
        
        var charsSeenInQuadrant: [Character] = []
        for array in quadrants.values {
            
            for c in array where c != "." {
                
                if !charsSeenInQuadrant.contains(c) {
                    charsSeenInQuadrant.append(c)
                } else {
                    return false
                }
            }
            
            charsSeenInQuadrant.removeAll()
        }
        
        return true
    }
}
