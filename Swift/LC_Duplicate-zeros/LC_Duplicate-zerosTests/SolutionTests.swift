//
//  SolutionTests.swift
//  LC_Duplicate-zerosTests
//
//  Created by Diego Jerez Barroso on 09/02/2021.
//

import XCTest
@testable import LC_Duplicate_zeros

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        var array = [1,0,2,3,0,4,5,0]
        sut.duplicateZeros(&array)
        XCTAssertEqual(array, [1,0,0,2,3,0,0,4])
    }
    
    func test2() {
        
        var array = [1,2,3]
        sut.duplicateZeros(&array)
        XCTAssertEqual(array, [1,2,3])
    }
    
    func test3() {
        
        var array = [0,1,7,6,0,2,0,7]
        sut.duplicateZeros(&array)
        XCTAssertEqual(array, [0,0,1,7,6,0,0,2])
        
        // 0, 0, 1, 7, 6, 0, 2, 0
        // 0, 0, 1, 7, 6, 0, 0, 2
    }
    
    func test4() {
        
        var array = [0,0,0,0,0,0,0]
        sut.duplicateZeros(&array)
        XCTAssertEqual(array, [0,0,0,0,0,0,0])
    }
}
