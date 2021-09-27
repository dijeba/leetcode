//
//  SolutionTests.swift
//  LC_3SumTests
//
//  Created by Diego Jerez Barroso on 27/09/2021.
//

import XCTest

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let nums = [-1,0,1,2,-1,-4]
        let expectedResult = [[-1,-1,2],[-1,0,1]]
        
        XCTAssertEqual(sut.threeSum(nums), expectedResult)
    }
    
    func test2() {
        
        let nums: [Int] = []
        let expectedResult: [[Int]] = []
        
        XCTAssertEqual(sut.threeSum(nums), expectedResult)
    }
    
    func test3() {
        
        let nums = [0]
        let expectedResult: [[Int]] = []
        
        XCTAssertEqual(sut.threeSum(nums), expectedResult)
    }
}
