//
//  SolutionTests.swift
//  LC_Buy-Sell-Stocks-Part-2Tests
//
//  Created by Diego Jerez Barroso on 31/01/2021.
//

import XCTest
@testable import LC_Buy_Sell_Stocks_Part_2

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = [7,1,5,3,6,4]
        
        let output = sut.maxProfit(input)
        
        XCTAssertEqual(output, 7)
    }
    
    func test2() {
        
        let input = [1,2,3,4,5]
        
        let output = sut.maxProfit(input)
        
        XCTAssertEqual(output, 4)
    }
    
    func test3() {
        
        let input = [7,6,4,3,1]
        
        let output = sut.maxProfit(input)
        
        XCTAssertEqual(output, 0)
    }
    
    func test4() {
        
        let input = [7,1,5,3,6,3]
        
        let output = sut.maxProfit(input)
        
        XCTAssertEqual(output, 7)
    }
    
    func test5() {
        
        let input = [7,1,5,2,6]
        
        let output = sut.maxProfit(input)
        
        XCTAssertEqual(output, 8)
    }
}
