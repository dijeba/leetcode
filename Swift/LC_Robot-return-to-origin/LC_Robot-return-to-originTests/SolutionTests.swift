//
//  SolutionTests.swift
//  LC_Robot-return-to-originTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Robot_return_to_origin

class SolutionTests: XCTestCase {

    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = "UD"
        let output = sut.judgeCircle(input)
        
        XCTAssertTrue(output)
    }
    
    func test2() {
        
        let input = "LL"
        let output = sut.judgeCircle(input)
        
        XCTAssertFalse(output)
    }
    
    func test3() {
        
        let input = "RRDD"
        let output = sut.judgeCircle(input)
        
        XCTAssertFalse(output)
    }
    
    func test4() {
        
        let input = "LDRRLRUULR"
        let output = sut.judgeCircle(input)
        
        XCTAssertFalse(output)
    }
}
