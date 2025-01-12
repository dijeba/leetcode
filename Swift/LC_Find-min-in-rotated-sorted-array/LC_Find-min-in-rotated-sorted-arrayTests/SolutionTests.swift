//
//  SolutionTests.swift
//  LC_Find-min-in-rotated-sorted-arrayTests
//
//  Created by Diego Jerez Barroso on 23/10/2021.
//

import XCTest

class SolutionTests: XCTestCase {
    
    private var sut: Solution!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Solution()
    }
    
    func test_1() {
        let input = [3,4,5,1,2]
        XCTAssertEqual(sut.findMin(input), 1)
    }
    
    func test_2() {
        let input = [4,5,6,7,0,1,2]
        XCTAssertEqual(sut.findMin(input), 0)
    }
    
    func test_3() {
        let input = [11,13,15,17]
        XCTAssertEqual(sut.findMin(input), 11)
    }
    
    func test_4() {
        let input = [3]
        XCTAssertEqual(sut.findMin(input), 3)
    }
}
