//
//  Solution.swift
//  LC_Find-n-unique-int-sum-zero
//
//  Created by Diego Jerez Barroso on 10/02/2022.
//  Link: https://leetcode.com/problems/find-n-unique-integers-sum-up-to-zero/

import Foundation

class Solution {

    func sumZero(_ n: Int) -> [Int] {
        guard n > 1 else {
            return [0]
        }

        var solution: [Int] = []
        var totalSum = 0

        for i in 1...n {
            if i == n {
                solution.append(totalSum * -1)
            } else {
                solution.append(i)
                totalSum += i
            }
        }

        return solution
    }
}
