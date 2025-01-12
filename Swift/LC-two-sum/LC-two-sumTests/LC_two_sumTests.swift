//
//  LC_two_sumTests.swift
//  LC-two-sumTests
//
//  Created by Diego Barroso on 25.08.19.
//  Copyright © 2019 Diego Barroso. All rights reserved.
//

import XCTest
@testable import LC_two_sum

class LC_two_sumTests: XCTestCase {
    
    func test1() {
        
        let vc = ViewController()
        let givenNums = [2, 7, 11, 15]
        let target = 9
        let expected = [0, 1]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test2() {
        
        let vc = ViewController()
        let givenNums = [2, 9, 11, 15, 31, 10]
        let target = 19
        
        let expected = [1, 5]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test3() {
        
        let vc = ViewController()
        let givenNums = [-2, 9, 11, 15, 31, 10]
        let target = 19
        
        let expected = [1, 5]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test4() {
        
        let vc = ViewController()
        let givenNums = [2, 8, 11, 15, 31, 10]
        let target = 11
        
        let expected = [Int]()
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test5() {
        
        let vc = ViewController()
        let givenNums = [110, -1000, 11, 15, 1]
        let target = 1
        
        let expected = [Int]()
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test6() {
        
        let vc = ViewController()
        let givenNums = [110, -1000, 11, 15, 1]
        let target = -999
        
        let expected = [1, 4]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test7() {
        
        let vc = ViewController()
        let givenNums = [3, 2, 4]
        let target = 6
        
        let expected = [1, 2]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    // Tests from the LeetCode website
    
    func test8() {
        
        let vc = ViewController()
        let givenNums = [2, 5, 5, 11]
        let target = 10
        
        let expected = [1, 2]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test9() {
        
        let vc = ViewController()
        let givenNums = [0, 4, 3, 0]
        let target = 0
        
        let expected = [0, 3]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
    
    func test10() {
        
        let vc = ViewController()
        let givenNums = [-1, -2, -3, -4, -5]
        let target = -8
        
        let expected = [2, 4]
        
        XCTAssertEqual(vc.twoSum(givenNums, target), expected)
    }
}
