//
//  Solution.swift
//  LC_Remove-nth-node
//
//  Created by Diego Jerez Barroso on 27/10/2021.
//  Link: https://leetcode.com/problems/remove-nth-node-from-end-of-list/

import Foundation


public class ListNode: Equatable {
    
    public static func == (lhs: ListNode, rhs: ListNode) -> Bool {
        lhs.val == rhs.val && lhs.next == rhs.next
    }
    
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}
 
class Solution {
    
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        guard head != nil, n > 0 else {
            return head
        }
        
        var array: [Int] = []
        var current = head
        
        while current != nil {
            array.append(current!.val)
            current = current?.next
        }
        
        array.remove(at: (array.count - n))
        
        var newHead: ListNode?
        var currentNew = newHead
        
        for v in array {
            
            if newHead == nil {
                newHead = ListNode(v)
                currentNew = newHead
                continue
            }
            
            while newHead?.next != nil {
                newHead = newHead?.next
            }
            
            newHead?.next = ListNode(v)
        }
        
        return currentNew
    }
    
    func removeNthFromEnd2(_ head: ListNode?, _ n: Int) -> ListNode? {
        
        guard head != nil, n > 0 else {
            return head
        }
        
        if n == 1 {
            head?.next = nil
            return head
        }
        
        var counter = 0
        
        var previous = head
        let newHead = previous
        var current = head?.next
        
        while current != nil {
            
            if counter == n {
                previous?.next = current?.next
                return newHead
            }
            
            previous = current
            current = current?.next
            counter += 1
        }
        
        return newHead
    }
}
