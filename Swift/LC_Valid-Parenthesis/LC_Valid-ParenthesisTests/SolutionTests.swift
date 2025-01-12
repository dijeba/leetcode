//
//  SolutionTests.swift
//  LC_Valid-ParenthesisTests
//
//  Created by Diego Jerez Barroso on 22/01/2021.
//

import XCTest
@testable import LC_Valid_Parenthesis

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = "()"
        let output = sut.isValid(input)
        
        XCTAssertTrue(output)
    }
    
    func test2() {
        
        let input = "()[]{}"
        let output = sut.isValid(input)
        
        XCTAssertTrue(output)
    }
    
    func test3() {
        
        let input = "(]"
        let output = sut.isValid(input)
        
        XCTAssertFalse(output)
    }
    
    func test4() {
        
        let input = "([)]"
        let output = sut.isValid(input)
        
        XCTAssertFalse(output)
    }
    
    func test5() {
        
        let input = "{[]}"
        let output = sut.isValid(input)
        
        XCTAssertTrue(output)
    }
    
    func test6() {
        
        let input = "(){[]}()"
        let output = sut.isValid(input)
        
        XCTAssertTrue(output)
    }
    
    func test7() {
        
        let input = "(("
        let output = sut.isValid(input)
        
        XCTAssertFalse(output)
    }
}
