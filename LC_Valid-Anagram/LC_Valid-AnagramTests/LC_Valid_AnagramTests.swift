//
//  LC_Valid_AnagramTests.swift
//  LC_Valid-AnagramTests
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

import XCTest
@testable import LC_Valid_Anagram

class LC_Valid_AnagramTests: XCTestCase {
    
    func test1() {
        
        let solution = Solution()
        
        let s = "anagram"
        let t = "nagaram"
        
        XCTAssertTrue(solution.isAnagram(s, t))
    }
    
    func test2() {
        
        let solution = Solution()
        
        let s = "rat"
        let t = "car"
        
        XCTAssertFalse(solution.isAnagram(s, t))
    }
    
    func test3() {
        
        let solution = Solution()
        
        let s = "altisonancia"
        let t = "nacionalista"
        
        XCTAssertTrue(solution.isAnagram(s, t))
    }
    
    func test4() {
        
        let solution = Solution()
        
        let s = "diego"
        let t = "ogide"
        
        XCTAssertTrue(solution.isAnagram(s, t))
    }
    
    func test5() {
        
        let solution = Solution()
        
        let s = "hola"
        let t = "ola"
        
        XCTAssertFalse(solution.isAnagram(s, t))
    }
}
