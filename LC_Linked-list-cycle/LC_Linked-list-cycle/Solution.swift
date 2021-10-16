//
//  Solution.swift
//  LC_Linked-list-cycle
//
//  Created by Diego Jerez Barroso on 14/10/2021.
//

import Foundation

public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class Solution {
    
    func hasCycle(_ head: ListNode?) -> Bool {
        
        var slow: ListNode? = head
        var fast: ListNode? = head
        
        while slow != nil {
            
            slow = slow?.next
            fast = fast?.next?.next
            
            if slow == nil {
                break
            }
            
            if fast == slow {
                return true
            }
        }
        
        return false
    }
}

/* JAVA Working solution with Floyd's cycle detection (tortoise and hare)
 
 public class Solution {
     
     public boolean hasCycle(ListNode head) {
         
         if (head == null) {
             return false;
         }
         
         ListNode slow = head;
         ListNode fast = head;
         
         while (fast.next != null && fast.next.next != null) {
             
             slow = slow.next;
             fast = fast.next.next;
             
             if (slow == fast) {
                 return true;
             }
         }
         
         return false;
     }
 }
 */
