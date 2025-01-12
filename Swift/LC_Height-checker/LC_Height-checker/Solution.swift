//
//  Solution.swift
//  LC_Height-checker
//
//  Created by Diego Jerez Barroso on 15/01/2022.
//
//  Link: https://leetcode.com/problems/height-checker/

import Foundation

class Solution {

    func heightChecker(_ heights: [Int]) -> Int {

        let sortedArray = heights.sorted { $0 < $1 }

        var found = 0

        for (index, element) in heights.enumerated() {

            if sortedArray[index] != element {
                found += 1
            }
        }

        return found
    }
}
