//
//  SolutionTests.swift
//  LC_Group-AnagramsTests
//
//  Created by Diego Jerez Barroso on 29/09/2021.
//

import XCTest
//@testable import..

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = ["eat","tea","tan","ate","nat","bat"]
        let output = [["bat"],["nat","tan"],["ate","eat","tea"]]
        
        let solution = sut.groupAnagrams(input)
        XCTAssertTrue(check(solution, words: Array(output.joined())))
    }
    
    func test2() {
        
        let input = [""]
        let output = [[""]]
        
        let solution = sut.groupAnagrams(input)
        XCTAssertTrue(check(solution, words: Array(output.joined())))
    }
    
    func test3() {
        
        let input = ["a"]
        let output = [["a"]]
        
        let solution = sut.groupAnagrams(input)
        XCTAssertTrue(check(solution, words: Array(output.joined())))
    }
    
    func test4() {
        
        let input = ["","b"]
        let output = [["b"],[""]]
        
        let solution = sut.groupAnagrams(input)
        XCTAssertTrue(check(solution, words: Array(output.joined())))
    }
    
    func test5() {
        
        let input = ["",""]
        let output = [["",""]]
        
        let solution = sut.groupAnagrams(input)
        XCTAssertTrue(check(solution, words: Array(output.joined())))
    }
    
    private func check(_ solution: [[String]], words: [String]) -> Bool {
        
        let required = words.count
        var current = 0
        
        for array in solution {
            
            for s in array {
                if words.contains(s) {
                    current += 1
                }
            }
        }
        
        return required == current
    }
}
