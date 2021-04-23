/*
 
 Given the head of a sorted linked list, delete all duplicates such that each element appears only once.
 Return the linked list sorted as well.
 
 Examples:
 
 1.
 
 Input: head = [1,1,2]
 Output: [1,2]
 
 2.
 
 Input: head = [1,1,2,3,3]
 Output: [1,2,3]
 
 Link: https://leetcode.com/problems/remove-duplicates-from-sorted-list/
 
 */

import Foundation

class Solution {
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        
        var previous: ListNode?
        var current = head
        let first = current
        
        repeat {
            
            if current?.val == previous?.val {
                previous?.next = current?.next
            } else {
                previous = current
            }
            
            current = current?.next
            
        } while current != nil
        
        return first
    }
}

public class ListNode: Equatable {
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val && lhs.next == rhs.next
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
