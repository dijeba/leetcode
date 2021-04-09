//
//  SolutionTests.swift
//  LC_Add-stringsTests
//
//  Created by Diego Jerez Barroso on 08/04/2021.
//

import XCTest
@testable import LC_Add_strings

class SolutionTests: XCTestCase {
    
    func test1() {
        let sut = Solution()
        
        let n1 = "1"
        let n2 = "9"
        
        XCTAssertEqual(sut.addStrings(n1, n2), "10")
    }
    
    func test2() {
        let sut = Solution()

        let n1 = "9333852702227987"
        let n2 = "85731737104263"
        
        XCTAssertEqual(sut.addStrings(n1, n2), "9419584439332250")
    }
    
    func test3() {
        let sut = Solution()

        let n1 = "1234"
        let n2 = "23"
        
        XCTAssertEqual(sut.addStrings(n1, n2), "1257")
    }
    
    func test4() {
        let sut = Solution()

        let n1 = "1234"
        let n2 = "9000"
        
        XCTAssertEqual(sut.addStrings(n1, n2), "10234")
    }
}
