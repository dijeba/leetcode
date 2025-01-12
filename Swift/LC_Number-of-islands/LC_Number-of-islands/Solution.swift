//
//  Solution.swift
//  LC_Number-of-islands
//
//  Created by Diego Jerez Barroso on 25/10/2021.
//  Link: https://leetcode.com/problems/number-of-islands/
//  Solution: https://leetcode.com/problems/number-of-islands/discuss/1538906/Simple-Java-Solution/
//  https://www.youtube.com/watch?v=o8S2bO3pmO4

import Foundation

class Solution {
    
    func numIslands(_ grid: [[Character]]) -> Int {
        
        guard grid.count > 0, grid.first?.count ?? 0 > 0 else {
            return 0
        }
        
        var mutableGrid = grid
        var numOfIslands = 0
        
        for (i, row) in grid.enumerated() {
            for (j, island) in row.enumerated() where island == Character("1") {
                numOfIslands += dfs(&mutableGrid, i, j)
            }
        }
        
        return numOfIslands
    }
    
    @discardableResult
    private func dfs(_ grid: inout [[Character]], _ i: Int, _ j: Int) -> Int {
        
        if i < 0 || i >= grid.count || j < 0 || j >= grid[i].count || grid[i][j] == Character("0") {
            return 0
        }
        
        grid[i][j] = Character("0")
        
        dfs(&grid, i - 1, j)
        dfs(&grid, i + 1, j)
        dfs(&grid, i, j - 1)
        dfs(&grid, i, j + 1)
        
        return 1
    }
    
    func numIslands2(_ grid: [[Character]]) -> Int {
        
        guard grid.count > 0, grid.first?.count ?? 0 > 0 else {
            return 0
        }
        
        var numberOfIsland = 0
        var seen: [(i: Int, j: Int)] = []
        
        for (i, row) in grid.enumerated() {
            
            for (j, char) in row.enumerated() {
                
                let up     = (i: i - 1, j: j)
                let bottom = (i: i + 1, j: j)
                let left   = (i: i, j: j - 1)
                let right  = (i: i, j: j + 1)
                
                let upperChar  = isOutOfBounds(grid, i: up.i, j: up.j) ? Character("0") : grid[up.i][up.j]
                let bottomChar = isOutOfBounds(grid, i: bottom.i, j: bottom.j) ? Character("0") : grid[bottom.i][bottom.j]
                let leftChar  = isOutOfBounds(grid, i: left.i, j: left.j) ? Character("0") : grid[left.i][left.j]
                let rightChar  = isOutOfBounds(grid, i: right.i, j: right.j) ? Character("0") : grid[right.i][right.j]
                
                let current = (i: i, j: j)
                
                func appendLand() {
                    
                    if upperChar == Character("1") {
                        seen.append(up)
                    }
                    
                    if leftChar == Character("1") {
                        seen.append(left)
                    }
                    
                    if bottomChar == Character("1") {
                        seen.append(bottom)
                    }
                    
                    if rightChar == Character("1") {
                        seen.append(right)
                    }
                }
                
                if seen.contains(where: { $0.i == current.i && $0.j == current.j }) {
                    appendLand()
                    continue
                }
                
                if char == Character("1") {
                    
                    seen.append(current)
                    
                    numberOfIsland += 1
                    
                    appendLand()
                }
            }
        }
        
        return numberOfIsland
    }
    
    private func isOutOfBounds(_ grid: [[Character]], i: Int, j: Int) -> Bool {
        return i < 0 || j < 0 || i >= grid.count || j >= grid[0].count
    }
}
