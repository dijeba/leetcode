//
//  SolutionTests.swift
//  LC_Number-of-islandsTests
//
//  Created by Diego Jerez Barroso on 25/10/2021.
//

import XCTest

class SolutionTests: XCTestCase {
    
    private var sut: Solution!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Solution()
    }
    
    func test1() {
        let input: [[Character]] = [
            ["1","1","1","1","0"],
            ["1","1","0","1","0"],
            ["1","1","0","0","0"],
            ["0","0","0","0","0"]
        ]
        
        let output = 1
        
        XCTAssertEqual(sut.numIslands(input), output)
    }
    
    func test2() {
        
        let input: [[Character]] = [
            ["1","1","0","0","0"],
            ["1","1","0","0","0"],
            ["0","0","1","0","0"],
            ["0","0","0","1","1"]
        ]
        
        let output = 3
        
        XCTAssertEqual(sut.numIslands(input), output)
    }
    
    func test3() {
        
        let input: [[Character]] = [
            ["1","1","1"],
            ["0","1","0"],
            ["1","1","1"]
        ]
        
        let output = 1
        
        XCTAssertEqual(sut.numIslands(input), output)
    }
}
