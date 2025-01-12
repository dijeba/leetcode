//
//  LC_Contains_DuplicateTests.swift
//  LC_Contains-DuplicateTests
//
//  Created by Diego Jerez Barroso on 31.08.19.
//  Copyright © 2019 Diego Jerez Barroso. All rights reserved.
//

import XCTest
@testable import LC_Contains_Duplicate

class LC_Contains_DuplicateTests: XCTestCase {
    
    func test1() {
        
        let solution = Solution()
        
        let array = [1, 2, 3, 1]
        XCTAssertTrue(solution.containsDuplicate(array))
    }
    
    func test2() {
        
        let solution = Solution()
        
        let array = [1, 2, 3, 4]
        XCTAssertFalse(solution.containsDuplicate(array))
    }
    
    func test3() {
        
        let solution = Solution()
        
        let array = [1, 1, 1, 3, 3, 4, 3, 2, 4, 2]
        XCTAssertTrue(solution.containsDuplicate(array))
    }
    
    func test4() {
        
        let solution = Solution()
        
        let array = [0, 0]
        XCTAssertTrue(solution.containsDuplicate(array))
    }
    
    func test5() {
        
        let solution = Solution()
        
        let array = [1, -1]
        XCTAssertFalse(solution.containsDuplicate(array))
    }
}
