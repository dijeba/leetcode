//
//  SolutionTests.swift
//  LC_Prime-number-set-bits-binary-repTests
//
//  Created by Diego Jerez Barroso on 24/01/2021.
//

import XCTest
@testable import LC_Prime_number_set_bits_binary_rep

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = (6, 10)
        
        let output = sut.countPrimeSetBits(input.0, input.1)
        
        XCTAssertEqual(output, 4)
    }
    
    func test2() {
        
        let input = (10, 15)
        
        let output = sut.countPrimeSetBits(input.0, input.1)
        
        XCTAssertEqual(output, 5)
    }
    
    func test3() {
        
        let input = (54, 60)
        
        let output = sut.countPrimeSetBits(input.0, input.1)
        
        XCTAssertEqual(output, 3)
    }
}
