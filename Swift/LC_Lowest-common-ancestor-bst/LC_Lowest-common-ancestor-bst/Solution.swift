/*
 
 Given a binary search tree (BST), find the lowest common ancestor (LCA) of two given nodes in the BST.

 According to the definition of LCA on Wikipedia: “The lowest common ancestor is defined between
 two nodes p and q as the lowest node in T that has both p and q as descendants
 (where we allow a node to be a descendant of itself).”
 
 Examples:
 
 Example 1:
 (img)
 
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 8
 Output: 6
 Explanation: The LCA of nodes 2 and 8 is 6.
 
 Example 2:
 (img)
 
 Input: root = [6,2,8,0,4,7,9,null,null,3,5], p = 2, q = 4
 Output: 2
 Explanation: The LCA of nodes 2 and 4 is 2, since a node can be a descendant of itself according to the
 LCA definition.
 
 Example 3:
 Input: root = [2,1], p = 2, q = 1
 Output: 2
 
 Link: https://leetcode.com/problems/lowest-common-ancestor-of-a-binary-search-tree/
 
 */

import Foundation

class Solution {
    
    func lowestCommonAncestor(_ root: TreeNode?, _ p: TreeNode?, _ q: TreeNode?) -> TreeNode? {
        
        guard let p = p, let q = q else {
            return nil
        }
        
        var answer: TreeNode?
        preorder(root, p: p, q: q, answer: &answer)
        
        return answer
    }
    
    private func preorder(_ node: TreeNode?, p: TreeNode, q: TreeNode, answer: inout TreeNode?) {
        
        guard let currentNode = node else {
            return
        }
        
        var isValid = false
        
        if areSame(value1: currentNode.left?.val, value2: p.val) && (areSame(value1: currentNode.right?.val, value2: q.val)) ||
            areSame(value1: currentNode.right?.val, value2: p.val) && (areSame(value1: currentNode.left?.val, value2: q.val)) {
            
            isValid = true
            
        } else if currentNode.val == p.val {
            
            if areSame(value1: currentNode.left?.val, value2: q.val) || areSame(value1: currentNode.right?.val, value2: q.val) {
                isValid = true
            }
            
        } else if currentNode.val == q.val {
            
            if areSame(value1: currentNode.left?.val, value2: p.val) || areSame(value1: currentNode.right?.val, value2: p.val) {
                isValid = true
            }
        }
        
        if isValid {
            answer = currentNode
            return
        }
        
        preorder(node?.left, p: p, q: q, answer: &answer)
        preorder(node?.right, p: p, q: q, answer: &answer)
    }
    
    private func areSame(value1: Int?, value2: Int?) -> Bool {
        
        guard let value1 = value1, let value2 = value2 else {
            return false
        }
        
        return value1 == value2
    }
}

// Definition for a binary tree node.
public class TreeNode {
    
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    public init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

extension TreeNode: Equatable {
    
    public static func == (lhs: TreeNode, rhs: TreeNode) -> Bool {
        return lhs.val == rhs.val
    }
}
