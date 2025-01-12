//
//  SolutionTests.swift
//  LC_Find-the-differenceTests
//
//  Created by Diego Jerez Barroso on 07/02/2021.
//

import XCTest
@testable import LC_Find_the_difference

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let s = "abcd"
        let t = "abcde"
        
        XCTAssertEqual(sut.findTheDifference(s, t), "e")
    }
    
    func test2() {
        
        let s = ""
        let t = "y"
        
        XCTAssertEqual(sut.findTheDifference(s, t), "y")
    }
    
    func test3() {
        
        let s = "a"
        let t = "aa"
        
        XCTAssertEqual(sut.findTheDifference(s, t), "a")
    }
    
    func test4() {
        
        let s = "ae"
        let t = "aea"
        
        XCTAssertEqual(sut.findTheDifference(s, t), "a")
    }
    
    func test5() {
        
        let s = "abcdd"
        let t = "abcddd"
        
        XCTAssertEqual(sut.findTheDifference(s, t), "d")
    }
}
