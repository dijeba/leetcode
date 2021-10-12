//
//  Solution.swift
//  LC_Reverse-linked-list
//
//  Created by Diego Jerez Barroso on 04/10/2021.
//

import Foundation

public class ListNode: Equatable {
    
    public var val: Int
    public var next: ListNode?
    
    public init() {
        self.val = 0;
        self.next = nil;
    }
    
    public init(_ val: Int) {
        self.val = val;
        self.next = nil;
    }
    
    public init(_ val: Int, _ next: ListNode?) {
        self.val = val;
        self.next = next;
    }
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.next == rhs.next && lhs.val == rhs.val
    }
}

class Solution {
    
    func reverseList(_ head: ListNode?) -> ListNode? {
        
        var current: ListNode? = head
        var next: ListNode? //= head?.next
        var previous: ListNode? = nil
        
        while current != nil {
            let sPrevious = current // 1, 2, 3, 4
            next = current?.next // 2, 3, 4, nil
            
            current?.next = previous // nil, 1, 2, 3
            
            previous = sPrevious // 1, 2, 3, 4
            
            current = next // 2, 3, 4, nil
        }
        
        return previous
    }
}
