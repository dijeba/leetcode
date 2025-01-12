//
//  SolutionTests.swift
//  LC_Fizz-BuzzTests
//
//  Created by Diego Jerez Barroso on 25/01/2021.
//

import XCTest
@testable import LC_Fizz_Buzz

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let input = 15
        
        let expectedOutput = [
            "1",
            "2",
            "Fizz",
            "4",
            "Buzz",
            "Fizz",
            "7",
            "8",
            "Fizz",
            "Buzz",
            "11",
            "Fizz",
            "13",
            "14",
            "FizzBuzz"
        ]
        
        let output = sut.fizzBuzz(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test2() {
        
        let input = 1
        
        let expectedOutput = [
            "1",
        ]
        
        let output = sut.fizzBuzz(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test3() {
        
        let input = 21
        
        let expectedOutput = [
            "1",
            "2",
            "Fizz",
            "4",
            "Buzz",
            "Fizz",
            "7",
            "8",
            "Fizz",
            "Buzz",
            "11",
            "Fizz",
            "13",
            "14",
            "FizzBuzz",
            "16",
            "17",
            "Fizz",
            "19",
            "Buzz",
            "Fizz"
        ]
        
        let output = sut.fizzBuzz(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
    
    func test4() {
        
        let input = -15
        
        let expectedOutput = [
            "1",
            "2",
            "Fizz",
            "4",
            "Buzz",
            "Fizz",
            "7",
            "8",
            "Fizz",
            "Buzz",
            "11",
            "Fizz",
            "13",
            "14",
            "FizzBuzz"
        ]
        
        let output = sut.fizzBuzz(input)
        
        XCTAssertEqual(output, expectedOutput)
    }
}
