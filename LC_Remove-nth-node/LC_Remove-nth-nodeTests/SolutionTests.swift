//
//  SolutionTests.swift
//  LC_Remove-nth-nodeTests
//
//  Created by Diego Jerez Barroso on 27/10/2021.
//

import XCTest
//@testable import

class SolutionTests: XCTestCase {
    
    private var sut: Solution!

    override func setUpWithError() throws {
        try super.setUpWithError()
        sut = Solution()
    }
    
    func test1() {
        
        let node5 = ListNode(5)
        let node4 = ListNode(4, node5)
        let node3 = ListNode(3, node4)
        let node2 = ListNode(2, node3)
        let node1 = ListNode(1, node2)
        
        let output5 = ListNode(5)
        let output3 = ListNode(3, output5)
        let output2 = ListNode(2, output3)
        let output1 = ListNode(1, output2)
        
        let result = sut.removeNthFromEnd(node1, 2)
        
        XCTAssertEqual(result, output1)
    }
    
    func test2() {
        
        let node1 = ListNode(1)
        
        XCTAssertEqual(sut.removeNthFromEnd(node1, 1), nil)
    }
    
    func test3() {
        
        let node2 = ListNode(2)
        let node1 = ListNode(1, node2)
        
        let output1 = ListNode(1)
        
        XCTAssertEqual(sut.removeNthFromEnd(node1, 1), output1)
    }
    
    func test4() {
        
        let node5 = ListNode(5)
        let node4 = ListNode(4, node5)
        let node3 = ListNode(3, node4)
        let node2 = ListNode(2, node3)
        let node1 = ListNode(1, node2)
        
        let output5 = ListNode(5)
        let output4 = ListNode(4, output5)
        let output3 = ListNode(3, output4)
        let output1 = ListNode(1, output3)
        
        let result = sut.removeNthFromEnd(node1, 4)
        
        // [1, 3, 4, 5]
        
        XCTAssertEqual(result, output1)
    }
    
    func test5() {
        
        let node5 = ListNode(5)
        let node4 = ListNode(4, node5)
        let node3 = ListNode(3, node4)
        let node2 = ListNode(2, node3)
        let node1 = ListNode(1, node2)
        
        let output5 = ListNode(5)
        let output4 = ListNode(4, output5)
        let output3 = ListNode(3, output4)
        let output2 = ListNode(2, output3)
        
        // [2, 3, 4, 5]
        
        let result = sut.removeNthFromEnd(node1, 5)
        
        XCTAssertEqual(result, output2)
    }
}
