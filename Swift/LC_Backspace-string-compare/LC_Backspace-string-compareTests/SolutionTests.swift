//
//  SolutionTests.swift
//  LC_Backspace-string-compareTests
//
//  Created by Diego Jerez Barroso on 15/02/2021.
//

import XCTest
@testable import LC_Backspace_string_compare

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let s = "ab#c"
        let t = "ad#c"
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test2() {
        
        let s = "ab##"
        let t = "c#d#"
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test3() {
        
        let s = "a##c"
        let t = "#a#c"
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test4() {
        
        let s = "a#c"
        let t = "b"
        
        XCTAssertFalse(sut.backspaceCompare(s, t))
    }
    
    func test5() {
        
        let s = "#####c"
        let t = "c"
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test6() {
        let s = "ab#c##h#lkj##"
        let t = "l"
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test7() {
        let s = "ab#c##h#lkj###"
        let t = ""
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
    
    func test8() {
        let s = "#####"
        let t = ""
        
        XCTAssertTrue(sut.backspaceCompare(s, t))
    }
}
