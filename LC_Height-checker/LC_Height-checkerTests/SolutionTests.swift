//
//  SolutionTests.swift
//  LC_Height-checkerTests
//
//  Created by Diego Jerez Barroso on 15/01/2022.
//

import XCTest

class SolutionTests: XCTestCase {

    private var sut: Solution!

    override func setUp() {
        super.setUp()
        sut = Solution()
    }

    func test1() {
        let input = [1,1,4,2,1,3]
        XCTAssertEqual(sut.heightChecker(input), 3)
    }

    func test2() {
        let input = [5,1,2,3,4]
        XCTAssertEqual(sut.heightChecker(input), 5)
    }

    func test3() {
        let input = [1,2,3,4,5]
        XCTAssertEqual(sut.heightChecker(input), 0)
    }
}
