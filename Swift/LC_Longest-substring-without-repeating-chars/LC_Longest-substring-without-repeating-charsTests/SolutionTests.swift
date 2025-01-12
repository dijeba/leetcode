//
//  SolutionTests.swift
//  LC_Longest-substring-without-repeating-charsTests
//
//  Created by Diego Jerez Barroso on 25/10/2021.
//

import XCTest

class SolutionTests: XCTestCase {
    
    private var sut: Solution!

    override func setUpWithError() throws {
        try super.setUpWithError()
        
        sut = Solution()
    }
    
    func test1() {
        
        let input = "abcabcbb"
        let output = 3
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test2() {
        
        let input = "bbbbb"
        let output = 1
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test3() {
        
        let input = "pwwkew"
        let output = 3
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test4() {
        
        let input = ""
        let output = 0
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test5() {
        
        let input = "dvdf"
        let output = 3
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test6() {
        
        let input = "anviaj"
        let output = 5
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test7() {
        
        let input = "asjrgapa"
        let output = 6
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
    
    func test8() {
        
        let input = "jbpnbwwd"
        let output = 4
        
        XCTAssertEqual(sut.lengthOfLongestSubstring(input), output)
    }
}
