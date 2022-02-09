//
//  Solution.swift
//  LC_Count-good-nodes-binary-tree
//
//  Created by Diego Jerez Barroso on 09/02/2022.
//
//  Link: https://leetcode.com/problems/count-good-nodes-in-binary-tree/submissions/

import Foundation

class Solution {

    private var path: [Int] = []
    private var goodNodes = 0
    private var top = -1

    func goodNodes(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }

        preorder(root, nil)

        return goodNodes
    }

    private func preorder(_ node: TreeNode?, _ parentNode: TreeNode?) {
        guard let node = node else {
            return
        }

        if validatePath(path, node.val) {
            goodNodes += 1
        }

        push(node.val)

        preorder(node.left, node)
        preorder(node.right, node)

        pop()
    }

    private func validatePath(_ path: [Int], _ value: Int) -> Bool {

        var solution = true

        path.compactMap { $0 }.forEach {
            if $0 > value {
                solution = false
            }
        }

        return solution
    }

    private func push(_ value: Int) {
        top += 1
        path.append(value)
    }

    @discardableResult
    private func pop() -> Int? {
        guard top < path.count else {
            return nil
        }

        let element = path[top]

        path.remove(at: top)

        top -= 1
        return element
    }
}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
    }
}
