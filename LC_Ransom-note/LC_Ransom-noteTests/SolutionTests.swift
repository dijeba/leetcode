//
//  SolutionTests.swift
//  LC_Ransom-noteTests
//
//  Created by Diego Jerez Barroso on 08/02/2021.
//

import XCTest
@testable import LC_Ransom_note

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let ransomNote = "a"
        let magazine = "b"
        
        XCTAssertFalse(sut.canConstruct(ransomNote, magazine))
    }
    
    func test2() {
        
        let ransomNote = "aa"
        let magazine = "ab"
        
        XCTAssertFalse(sut.canConstruct(ransomNote, magazine))
    }
    
    func test3() {
        
        let ransomNote = "aa"
        let magazine = "aab"
        
        XCTAssertTrue(sut.canConstruct(ransomNote, magazine))
    }
}
