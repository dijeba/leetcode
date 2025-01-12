//
//  SolutionTests.swift
//  LC_Position-large-groupsTests
//
//  Created by Diego Jerez Barroso on 12/02/2021.
//

import XCTest
@testable import LC_Position_large_groups

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        let input = "abbxxxxzzy"
        XCTAssertEqual(sut.largeGroupPositions(input), [[3,6]])
    }
    
    func test2() {
        let input = "abc"
        XCTAssertEqual(sut.largeGroupPositions(input), [])
    }
    
    func test3() {
        let input = "abcdddeeeeaabbbcd"
        XCTAssertEqual(sut.largeGroupPositions(input), [[3,5],[6,9],[12,14]])
    }
    
    func test4() {
        let input = "aba"
        XCTAssertEqual(sut.largeGroupPositions(input), [])
    }
    
    func test5() {
        let input = "aaa"
        XCTAssertEqual(sut.largeGroupPositions(input), [[0,2]])
    }
    
    func test6() {
        let input = "aaab"
        XCTAssertEqual(sut.largeGroupPositions(input), [[0,2]])
    }
    
    func test7() {
        let input = "baaa"
        XCTAssertEqual(sut.largeGroupPositions(input), [[1,3]])
    }
}
