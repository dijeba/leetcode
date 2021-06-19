//
//  SolutionTests.swift
//  LC_Add-to-array-formTests
//
//  Created by Diego Jerez Barroso on 09/06/2021.
//

import XCTest
@testable import LC_Add_to_array_form

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test_1() {
        
        let input = [1,3,2,1]
        let k = 3
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,3,2,4])
    }
    
    func test_2() {
        
        let input = [1,2,0,0]
        let k = 34
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,2,3,4])
    }
    
    func test_3() {
        
        let input = [2,7,4]
        let k = 181
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [4,5,5])
    }
    
    func test_4() {
        
        let input = [2,1,5]
        let k = 806
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,0,2,1])
    }
    
    func test_5() {
        
        let input = [9,9,9,9,9,9,9,9,9,9]
        let k = 1
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,0,0,0,0,0,0,0,0,0,0])
    }
    
    func test_6() {
        
        let input = [0,0,0,0,1]
        let k = 1
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [2])
    }
    
//    func test_7() {
//
//        let input = [9,8,1]
//        let k = -981
//
//        XCTAssertEqual(sut.addToArrayForm(input, k), [0])
//    }
    
    func test_8() {
        
        let input = [0,0,0,0,1,0]
        let k = 1
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,1])
    }
    
    func test_9() {
        
        let input = [1,2,6,3,0,7,1,7,1,9,7,5,6,6,4,4,0,0,6,3]
        let k = 516
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [1,2,6,3,0,7,1,7,1,9,7,5,6,6,4,4,0,5,7,9])
    }
    
    func test_10() {
        
        let input = [3,8,0,3,0,2,7,0,7,6,4,9,9,1,7,6,6,1,6,4]
        let k = 670
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [3,8,0,3,0,2,7,0,7,6,4,9,9,1,7,6,6,8,3,4])
    }
    
    func test_11() {
        
        let input = [0]
        let k = 23
        
        XCTAssertEqual(sut.addToArrayForm(input, k), [2,3])
    }
}
