/*
 
 See definition here: https://leetcode.com/problems/merge-two-sorted-lists/
 
 */

import Foundation

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    
    // Quick way:
    func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        
        guard let l1 = l1 else {
            return l2
        }
        
        guard let l2 = l2 else {
            return l1
        }
        
        var array: [Int?] = []
        
        var current: ListNode? = l1
        
        while current != nil {
            array.append(current?.val)
            current = current?.next
        }
        
        current = l2
        
        while current != nil {
            array.append(current?.val)
            current = current?.next
        }
        
        let array2 = array.compactMap { $0 }.sorted()
        
        var i = 0
        var newList: ListNode? = nil
        
        for _ in 0 ..< (array2.count) {
            
            let value = array2[i]
            
            let node = ListNode(value)
            
            if newList == nil {
                newList = node
                i += 1
                continue
            }
            
            var current = newList
            
            while current?.next != nil {
                current = current?.next
            }
            
            current?.next = node
            
            i += 1
        }
        
        return newList
    }
}

public class ListNode: Equatable {
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        return lhs.val == rhs.val && lhs.next == rhs.next
    }
    
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0
        self.next = nil
    }
    
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val
        self.next = next
    }
}
