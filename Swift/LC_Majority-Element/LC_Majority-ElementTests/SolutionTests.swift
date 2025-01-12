//
//  SolutionTests.swift
//  LC_Majority-ElementTests
//
//  Created by Diego Jerez Barroso on 06/02/2021.
//

import XCTest
@testable import LC_Majority_Element

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        let input = [3,2,3]
        XCTAssertEqual(sut.majorityElement(input), 3)
    }
    
    func test2() {
        let input = [2,2,1,1,1,2,2]
        XCTAssertEqual(sut.majorityElement(input), 2)
    }
}
