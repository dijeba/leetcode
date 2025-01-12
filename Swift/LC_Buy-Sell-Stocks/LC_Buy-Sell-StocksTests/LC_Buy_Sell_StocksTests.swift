//
//  LC_Buy_Sell_StocksTests.swift
//  LC_Buy-Sell-StocksTests
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

import XCTest
@testable import LC_Buy_Sell_Stocks

class LC_Buy_Sell_StocksTests: XCTestCase {
    
    func test1() {
        
        let solution = Solution()
        let array = [7, 1, 5, 3, 6, 4]
        
        XCTAssertEqual(solution.maxProfit(array), 5)
    }
    
    func test2() {
        
        let solution = Solution()
        let array = [7, 6, 4, 3, 1]
        
        XCTAssertEqual(solution.maxProfit(array), 0)
    }
    
    func test3() {
        
        let solution = Solution()
        let array = [7, 6, 4, 3, 1, 10, 5, 20, 2]
        
        XCTAssertEqual(solution.maxProfit(array), 19)
    }
    
    func test4() {
        
        let solution = Solution()
        let array = [2, 5, 10, 5, 3]
        
        XCTAssertEqual(solution.maxProfit(array), 8)
    }
    
    func test5() {
        
        let solution = Solution()
        let array = [12, 5, 10, 5, 3]
        
        XCTAssertEqual(solution.maxProfit(array), 5)
    }
    
    func test6() {
        
        let solution = Solution()
        let array = [2, 4, 1]
        
        XCTAssertEqual(solution.maxProfit(array), 2)
    }
    
    func test7() {
        
        let solution = Solution()
        let array = [4, 1, 2]
        
        XCTAssertEqual(solution.maxProfit(array), 1)
    }
    
    func test8() {
        
        let solution = Solution()
        let array = [3, 2, 6, 5, 0, 3]
        
        XCTAssertEqual(solution.maxProfit(array), 4)
    }
}
