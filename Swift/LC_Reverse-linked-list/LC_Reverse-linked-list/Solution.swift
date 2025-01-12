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

/*

 Another solution (I think it's better). It's implemented with a Stack with LinkedList (I did it in the second review, no help)
 */

class Solution2 {
    private var stack: ListNode?
    private var headStack: ListNode?

    func reverseList(_ head: ListNode?) -> ListNode? {
        guard let head = head else {
            return nil
        }

        push(head.val)

        var node: ListNode? = head

        while let nextVal = node?.next?.val {
            push(nextVal)
            node = node?.next
        }

        return headStack
    }

    private func push(_ val: Int) {
        let newNode = ListNode(val)

        if stack?.val == nil {
            stack = newNode
            headStack = newNode
        } else {
            newNode.next = headStack
            headStack = newNode

            //headStack?.next = newNode
            //headStack = newNode
        }
    }
}
