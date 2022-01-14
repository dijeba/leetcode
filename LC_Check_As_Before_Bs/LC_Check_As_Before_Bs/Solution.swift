//
//  Solution.swift
//  LC_Check_As_Before_Bs
//
//  Created by Diego Jerez Barroso on 14/01/2022.
//
//  Link: https://leetcode.com/problems/check-if-all-as-appears-before-all-bs/submissions/

import Foundation

class Solution {

    func checkString(_ s: String) -> Bool {

        if s.count == 1 {
            return true
        }

        let sortedString = String(s.sorted())

        return s == sortedString
    }
}
