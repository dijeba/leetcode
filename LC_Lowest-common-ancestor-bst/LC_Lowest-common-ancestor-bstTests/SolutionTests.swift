//
//  SolutionTests.swift
//  LC_Lowest-common-ancestor-bstTests
//
//  Created by Diego Jerez Barroso on 12/02/2021.
//

import XCTest
@testable import LC_Lowest_common_ancestor_bst

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let t6 = TreeNode(6)
        
        let t2 = TreeNode(2)
        let t8 = TreeNode(8)
        
        let t0 = TreeNode(0)
        let t4 = TreeNode(4)
        
        let t3 = TreeNode(3)
        let t5 = TreeNode(5)
        
        let t7 = TreeNode(7)
        let t9 = TreeNode(9)
        
        t4.left = t3
        t4.right = t5
        
        t2.left = t0
        t2.right = t4
        
        t8.left = t7
        t8.right = t9
        
        t6.left = t2
        t6.right = t8
        
        XCTAssertEqual(sut.lowestCommonAncestor(t6, t2, t8), t6)
    }
    
    func test2() {
        
        let t6 = TreeNode(6)
        
        let t2 = TreeNode(2)
        let t8 = TreeNode(8)
        
        let t0 = TreeNode(0)
        let t4 = TreeNode(4)
        
        let t3 = TreeNode(3)
        let t5 = TreeNode(5)
        
        let t7 = TreeNode(7)
        let t9 = TreeNode(9)
        
        t4.left = t3
        t4.right = t5
        
        t2.left = t0
        t2.right = t4
        
        t8.left = t7
        t8.right = t9
        
        t6.left = t2
        t6.right = t8
        
        XCTAssertEqual(sut.lowestCommonAncestor(t6, t2, t4), t2)
    }
    
    func test3() {
        
        let t2 = TreeNode(2)
        let t1 = TreeNode(1)
        
        t2.left = t1
        
        XCTAssertEqual(sut.lowestCommonAncestor(t2, t2, t1), t2)
    }
}
