//
//  SolutionTests.swift
//  LC_Checks_As_Before_Bs_Tests
//
//  Created by Diego Jerez Barroso on 14/01/2022.
//

import XCTest

class SolutionTests: XCTestCase {

    private var sut: Solution!

    override func setUp() {
        super.setUp()

        sut = Solution()
    }

    func test1() {
        let input = "aaabbb"
        XCTAssertTrue(sut.checkString(input))
    }

    func test2() {
        let input = "abab"
        XCTAssertFalse(sut.checkString(input))
    }

    func test3() {
        let input = "bbb"
        XCTAssertTrue(sut.checkString(input))
    }
}
