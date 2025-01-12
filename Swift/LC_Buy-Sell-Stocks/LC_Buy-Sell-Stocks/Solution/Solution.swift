//
//  Solution.swift
//  LC_Buy-Sell-Stocks
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

import Foundation

class Solution {
    
    func maxProfit(_ prices: [Int]) -> Int {
        
        guard prices.count > 0 else {
            return 0
        }
        
        var maxRevenue = 0
        var minPrice = Int.max
        
        for p in prices {
            
            if p < minPrice {
                
                minPrice = p
                
            } else {
                
                if (p - minPrice) > maxRevenue {
                    maxRevenue = p - minPrice
                }
            }
        }
        
        return maxRevenue
    }
}
