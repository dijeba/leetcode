//
//  SolutionTests.swift
//  LC_Longest-word-dictionaryTests
//
//  Created by Diego Jerez Barroso on 03/02/2021.
//

import XCTest
@testable import LC_Longest_word_dictionary

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input =  ["w","wo","wor","worl", "world"]
        let expectedOutput = "world"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test2() {
        
        let input =  ["a", "banana", "app", "appl", "ap", "apply", "apple"]
        let expectedOutput = "apple"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test3() {
        
        let input =  ["a", "b", "c"]
        let expectedOutput = "a"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test4() {
        
        let input =  ["a", "b", "ac"]
        let expectedOutput = "ac"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test5() {
        
        let input =  ["a", "b", "ac", "bcax", "hello"]
        let expectedOutput = "ac"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test6() {
        
        let input = ["yo","ew","fc","zrc","yodn","fcm","qm","qmo","fcmz","z","ewq","yod","ewqz","y"]
        let expectedOutput = "yodn"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
    
    func test7() {
        
        let input = ["a","yo","y"]
        let expectedOutput = "yo"
        
        XCTAssertEqual(sut.longestWord(input), expectedOutput)
    }
}
