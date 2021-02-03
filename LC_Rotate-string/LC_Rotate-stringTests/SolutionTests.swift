//
//  SolutionTests.swift
//  LC_Rotate-stringTests
//
//  Created by Diego Jerez Barroso on 03/02/2021.
//

import XCTest
@testable import LC_Rotate_string

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let inputA = "abcde"
        let inputB = "cdeab"
        
        XCTAssertTrue(sut.rotateString(inputA, inputB))
    }
    
    func test2() {
        
        let inputA = "abcde"
        let inputB = "abced"
        
        XCTAssertFalse(sut.rotateString(inputA, inputB))
    }
    
    func test3() {
        
        let inputA = "abcdefghijk"
        let inputB = "fghijkabcde"
        
        XCTAssertTrue(sut.rotateString(inputA, inputB))
    }
    
    func test4() {
        
        let inputA = "abcdefghijk"
        let inputB = "fhgijkabcde"
        
        XCTAssertFalse(sut.rotateString(inputA, inputB))
    }
}
