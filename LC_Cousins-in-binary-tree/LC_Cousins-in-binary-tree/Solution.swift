/*
 
In a binary tree, the root node is at depth 0, and children of each depth k node are at depth k+1.

Two nodes of a binary tree are cousins if they have the same depth, but have different parents.

We are given the root of a binary tree with unique values, and the values x and y of two
different nodes in the tree.

Return true if and only if the nodes corresponding to the values x and y are cousins.
 
Examples:
 
To see the examples, go to the link

Link: https://leetcode.com/problems/cousins-in-binary-tree/

Input: root = [1,2,3,4], x = 4, y = 3
Output: false

Input: root = [1,2,3,null,4,null,5], x = 5, y = 4
Output: true

Input: root = [1,2,3,null,4], x = 2, y = 3
Output: false
 
Constraints:

The number of nodes in the tree will be between 2 and 100.
Each node has a unique integer value from 1 to 100.
 
 */

import Foundation
 
class Solution {
    
    typealias PD = (parent: Int, deph: Int)
    
    func isCousins(_ root: TreeNode?, _ x: Int, _ y: Int) -> Bool {
        
        var dict: [Int: PD] = [:]
        
        preOrderTraversal(node: root, parent: nil, deph: 0, dict: &dict)
        
        let parentX = dict[x]?.parent ?? -1
        let dephX = dict[x]?.deph ?? -1
        
        let parentY = dict[y]?.parent ?? -1
        let dephY = dict[y]?.deph ?? -1
        
        return parentX != parentY && dephX == dephY
    }
    
    private func preOrderTraversal(node: TreeNode?, parent: Int?, deph: Int, dict: inout [Int: PD]) {
        
        guard let node = node else {
            return
        }
        
        let info: PD = (parent: parent ?? -1, deph: deph)
        dict[node.val] = info
        
        preOrderTraversal(node: node.left, parent: node.val, deph: deph + 1, dict: &dict)
        preOrderTraversal(node: node.right, parent: node.val, deph: deph + 1, dict: &dict)
    }
}

// Definition for a binary tree node.

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
