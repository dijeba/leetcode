//
//  SolutionTests.swift
//  LC_Cousins-in-binary-treeTests
//
//  Created by Diego Jerez Barroso on 08/02/2021.
//

import XCTest
@testable import LC_Cousins_in_binary_tree

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let bTree = TreeNode(
            1,
            TreeNode(
                2,
                TreeNode(4),
                nil),
            TreeNode(3)
        )
        
        XCTAssertFalse(sut.isCousins(bTree, 4, 3))
    }
    
    func test2() {
        
        let bTree = TreeNode(
            1,
            TreeNode(2,
                     nil,
                     TreeNode(4)),
            TreeNode(3,
                     nil,
                     TreeNode(5))
        )
        
        XCTAssertTrue(sut.isCousins(bTree, 5, 4))
    }
    
    func test3() {
        
        let bTree = TreeNode(
            1,
            TreeNode(2,
                     nil,
                     TreeNode(4)),
            TreeNode(3)
        )
        
        XCTAssertFalse(sut.isCousins(bTree, 2, 3))
    }
}
