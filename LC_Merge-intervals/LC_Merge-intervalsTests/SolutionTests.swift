//
//  SolutionTests.swift
//  LC_Merge-intervalsTests
//
//  Created by Diego Jerez Barroso on 28/09/2021.
//

import XCTest
//@testable import LC_Merge_intervals

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let intervals = [
            [1, 3], [2, 6], [8, 10], [15, 18]
        ]
        
        let expectedResult = [
            [1, 6], [8, 10], [15, 18]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test2() {
        
        let intervals = [
            [1, 4], [4, 5]
        ]
        
        let expectedResult = [
            [1, 5]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test4() {
        
        let intervals = [
            [1, 4], [5, 6]
        ]
        
        let expectedResult = [
            [1, 4], [5, 6]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test5() {
        
        let intervals = [
            [1, 4], [0, 4]
        ]
        
        let expectedResult = [
            [0, 4]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test6() {
        
        let intervals = [
            [1, 4], [0, 0]
        ]
        
        let expectedResult = [
            [0, 0], [1, 4]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test7() {
        
        let intervals = [
            [1, 4], [0, 2], [3, 5]
        ]
        
        let expectedResult = [
            [0, 5]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
    
    func test8() {
        
        let intervals = [
            [2,3],[4,5],[6,7],[8,9],[1,10]
        ]
        
        let expectedResult = [
            [1, 10]
        ]
        
        XCTAssertEqual(sut.merge(intervals), expectedResult)
    }
}
