//
//  SolutionTests.swift
//  LC_Lemonade-changeTests
//
//  Created by Diego Jerez Barroso on 10/02/2021.
//

import XCTest
@testable import LC_Lemonade_change

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        let input = [5,5,5,10,20]
        XCTAssertTrue(sut.lemonadeChange(input))
    }
    
    func test2() {
        let input = [5,5,10]
        XCTAssertTrue(sut.lemonadeChange(input))
    }
    
    func test3() {
        let input = [10,10]
        XCTAssertFalse(sut.lemonadeChange(input))
    }
    
    func test4() {
        let input = [5,5,10,10,20]
        XCTAssertFalse(sut.lemonadeChange(input))
    }
}
