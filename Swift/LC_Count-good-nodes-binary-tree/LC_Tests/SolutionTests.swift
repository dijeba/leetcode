//
//  SolutionTests.swift
//  LC_Tests
//
//  Created by Diego Jerez Barroso on 09/02/2022.
//

import XCTest

class SolutionTests: XCTestCase {

    func test1() {
        let root: TreeNode? = TreeNode(3)

        let sut = Solution()

        XCTAssertEqual(sut.goodNodes(root), 1)
    }

    func test2() {

        let root: TreeNode? = TreeNode(
            2,
            nil,
            TreeNode(
                4,
                TreeNode(10),
                TreeNode(
                    8,
                    TreeNode(4),
                    nil
                )
            )
        )

        let sut = Solution()

        XCTAssertEqual(sut.goodNodes(root), 4)
    }
}
