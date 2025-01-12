//
//  SolutionTests.swift
//  LC_Reverse-linked-listTests
//
//  Created by Diego Jerez Barroso on 04/10/2021.
//

import XCTest

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        
        sut = Solution()
    }
    
    func test1() {
        
        // Initial
        
        let n1 = ListNode(1)
        let n2 = ListNode(2)
        let n3 = ListNode(3)
        let n4 = ListNode(4)
        let n5 = ListNode(5)
        
        n1.next = n2
        n2.next = n3
        n3.next = n4
        n4.next = n5
        
        // Expected solution
        
        let s1 = ListNode(1)
        let s2 = ListNode(2)
        let s3 = ListNode(3)
        let s4 = ListNode(4)
        let s5 = ListNode(5)
        
        s5.next = s4
        s4.next = s3
        s3.next = s2
        s2.next = s1
        
        XCTAssertEqual(sut.reverseList(n1), s5)
    }
}
