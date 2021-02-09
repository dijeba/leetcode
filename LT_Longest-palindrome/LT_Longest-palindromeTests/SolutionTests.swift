//
//  SolutionTests.swift
//  LT_Longest-palindromeTests
//
//  Created by Diego Jerez Barroso on 09/02/2021.
//

import XCTest
@testable import LT_Longest_palindrome

class SolutionTests: XCTestCase {
    
    private var sut: Solution!
    
    override func setUp() {
        super.setUp()
        sut = Solution()
    }
    
    func test1() {
        let input = "abccccdd"
        XCTAssertEqual(sut.longestPalindrome(input), 7)
    }
    
    func test2() {
        let input = "a"
        XCTAssertEqual(sut.longestPalindrome(input), 1)
    }
    
    func test3() {
        let input = "bb"
        XCTAssertEqual(sut.longestPalindrome(input), 2)
    }
    
    func test4() {
        let input = "bB"
        XCTAssertEqual(sut.longestPalindrome(input), 1)
    }
    
    func test5() {
        let input = "civilwartestingwhetherthatnaptionoranynartionsoconceivedandsodedicatedcanlongendureWeareqmetonagreatbattlefiemldoftzhatwarWehavecometodedicpateaportionofthatfieldasafinalrestingplaceforthosewhoheregavetheirlivesthatthatnationmightliveItisaltogetherfangandproperthatweshoulddothisButinalargersensewecannotdedicatewecannotconsecratewecannothallowthisgroundThebravelmenlivinganddeadwhostruggledherehaveconsecrateditfaraboveourpoorponwertoaddordetractTgheworldadswfilllittlenotlenorlongrememberwhatwesayherebutitcanneverforgetwhattheydidhereItisforusthelivingrathertobededicatedheretotheulnfinishedworkwhichtheywhofoughtherehavethusfarsonoblyadvancedItisratherforustobeherededicatedtothegreattdafskremainingbeforeusthatfromthesehonoreddeadwetakeincreaseddevotiontothatcauseforwhichtheygavethelastpfullmeasureofdevotionthatweherehighlyresolvethatthesedeadshallnothavediedinvainthatthisnationunsderGodshallhaveanewbirthoffreedomandthatgovernmentofthepeoplebythepeopleforthepeopleshallnotperishfromtheearth"
        XCTAssertEqual(sut.longestPalindrome(input), 983)
    }
    
    func test6() {
        let input = "aabbccccdd"
        // abdccccdba
        
        XCTAssertEqual(sut.longestPalindrome(input), 10)
    }
    
    func test7() {
        let input = "aabbccccdd"
        // abdccccdba
        
        XCTAssertEqual(sut.longestPalindrome(input), 10)
    }
}
