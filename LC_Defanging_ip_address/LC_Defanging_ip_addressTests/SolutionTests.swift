//
//  SolutionTests.swift
//  LC_Defanging_ip_addressTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Defanging_ip_address

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = "1.1.1.1"
        
        let expectedOutput = "1[.]1[.]1[.]1"
        
        let output = sut.defangIPaddr(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test2() {
        
        let input = "255.100.50.0"
        
        let expectedOutput = "255[.]100[.]50[.]0"
        
        let output = sut.defangIPaddr(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
