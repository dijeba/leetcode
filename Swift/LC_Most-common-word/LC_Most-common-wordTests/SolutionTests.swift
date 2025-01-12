//
//  SolutionTests.swift
//  LC_Most-common-wordTests
//
//  Created by Diego Jerez Barroso on 01/05/2021.
//

import XCTest
@testable import LC_Most_common_word

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        let input = "Bob hit a ball, the hit BALL flew far after it was hit."
        let banned = ["hit"]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "ball")
    }
    
    func test2() {
        let input = "a."
        let banned = [""]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "a")
    }
    
    func test3() {
        let input = "a, b! c, cc.  A   "
        let banned = [""]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "a")
    }
    
    func test4() {
        let input = "a, b! c, cc.  A, a  ,b"
        let banned = ["a"]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "b")
    }
    
    func test5() {
        let input = "hola, que tal estas tu. Tu sabes decir hola, pero no sabes responder cuando te dicen adios, asi que adios"
        let banned = ["hola", "sabes", "que", "tu"]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "adios")
    }
    
    func test6() {
        let input = "hola,hola, hola, adios  adios  adios"
        let banned = ["adios"]
        
        XCTAssertEqual(sut.mostCommonWord(input, banned), "hola")
    }
}
