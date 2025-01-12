//
//  SolutionTests.swift
//  LC_Running-sum-1d-arrayTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Running_sum_1d_array

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = [1,1,1,1,1]
        let expectedOutput = [1,2,3,4,5]
        
        let output = sut.runningSum(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test2() {
        
        let input = [1,2,3,4]
        let expectedOutput = [1,3,6,10]
        
        let output = sut.runningSum(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test3() {
        
        let input = [3,1,2,10,1]
        let expectedOutput = [3,4,6,16,17]
        
        let output = sut.runningSum(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test4() {
        
        let input = [-3,1000,-2,100,2]
        let expectedOutput = [-3,997,995,1095,1097]
        
        let output = sut.runningSum(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
