//
//  SolutionTests.swift
//  LC_Kids-greatest-number-candiesTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Kids_greatest_number_candies

class SolutionTests: XCTestCase {

    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = [2,3,5,1,3]
        let extraCandies = 3
        
        let expectedOutput = [true,true,true,false,true]
        
        let output = sut.kidsWithCandies(input, extraCandies)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test2() {
        
        let input = [4,2,1,1,2]
        let extraCandies = 1
        
        let expectedOutput = [true,false,false,false,false]
        
        let output = sut.kidsWithCandies(input, extraCandies)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test3() {
        
        let input = [12,1,12]
        let extraCandies = 10
        
        let expectedOutput = [true,false,true]
        
        let output = sut.kidsWithCandies(input, extraCandies)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
