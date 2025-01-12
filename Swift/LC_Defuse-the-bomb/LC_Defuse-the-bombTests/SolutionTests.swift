//
//  SolutionTests.swift
//  LC_Defuse-the-bombTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Defuse_the_bomb

class SolutionTests: XCTestCase {

    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = [5,7,1,4]
        let k = 3
        
        let expectedOutput = [12,10,16,13]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test2() {
        
        let input = [1,2,3,4]
        let k = 0
        
        let expectedOutput = [0,0,0,0]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test3() {
        
        let input = [2,4,9,3]
        let k = -2
        
        let expectedOutput = [12,5,6,13]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test4() {
        
        let input = [2,4,9,3,10]
        let k = 2
        
        let expectedOutput = [13,12,13,12,6]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test5() {
        
        let input = [2,4,2,4,10,3,10,7,10,5]
        let k = 1
        
        let expectedOutput = [4,2,4,10,3,10,7,10,5,2]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test6() {
        
        let input = [2,4,2,4]
        let k = 1
        
        let expectedOutput = [4, 2, 4, 2]
        
        let output = sut.decrypt(input, k)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
