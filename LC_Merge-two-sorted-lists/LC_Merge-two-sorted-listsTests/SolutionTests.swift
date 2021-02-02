//
//  SolutionTests.swift
//  LC_Merge-two-sorted-listsTests
//
//  Created by Diego Jerez Barroso on 02/02/2021.
//

import XCTest
@testable import LC_Merge_two_sorted_lists

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {

        let list1 = ListNode(1, ListNode(2, ListNode(4)))
        let list2 = ListNode(1, ListNode(3, ListNode(4)))
        
        let expectedOutput = ListNode(1, ListNode(1, ListNode(2, ListNode(3, ListNode(4, ListNode(4))))))
        
        XCTAssertEqual(sut.mergeTwoLists(list1, list2), expectedOutput)
    }
}
