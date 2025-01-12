//
//  SolutionTests.swift
//  LC_Binary-GapTests
//
//  Created by Diego Jerez Barroso on 25/01/2021.
//

import XCTest
@testable import LC_Binary_Gap

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = 22
        
        let output = sut.binaryGap(input)
        
        XCTAssertEqual(output, 2)
    }
    
    func test2() {
        
        let input = 5
        
        let output = sut.binaryGap(input)
        
        XCTAssertEqual(output, 2)
    }
    
    func test3() {
        
        let input = 6
        
        let output = sut.binaryGap(input)
        
        XCTAssertEqual(output, 1)
    }
    
    func test4() {
        
        let input = 8
        
        let output = sut.binaryGap(input)
        
        XCTAssertEqual(output, 0)
    }
}
