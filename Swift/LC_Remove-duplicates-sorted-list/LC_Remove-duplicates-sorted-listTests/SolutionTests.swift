//
//  SolutionTests.swift
//  LC_Remove-duplicates-sorted-listTests
//
//  Created by Diego Jerez Barroso on 15/04/2021.
//

import XCTest
@testable import LC_Remove_duplicates_sorted_list

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        
        let node1 = ListNode(1)
        let node2 = ListNode(1)
        let node3 = ListNode(2)
        
        node1.next = node2
        node2.next = node3
        
        let expectedNode1 = ListNode(1)
        let expectedNode2 = ListNode(2)
        
        expectedNode1.next = expectedNode2
        
        XCTAssertEqual(sut.deleteDuplicates(node1), expectedNode1)
    }
    
    func test2() {
        
        let node1 = ListNode(1)
        let node2 = ListNode(1)
        let node3 = ListNode(2)
        let node4 = ListNode(3)
        let node5 = ListNode(3)
        
        node1.next = node2
        node2.next = node3
        node3.next = node4
        node4.next = node5
        
        let expectedNode1 = ListNode(1)
        let expectedNode2 = ListNode(2)
        let expectedNode3 = ListNode(3)
        
        expectedNode1.next = expectedNode2
        expectedNode2.next = expectedNode3
        
        XCTAssertEqual(sut.deleteDuplicates(node1), expectedNode1)
    }
}
