/*
 
 Given a valid (IPv4) IP address, return a defanged version of that IP address.

 A defanged IP address replaces every period "." with "[.]".
 
 Examples:
 
 1.
 
 Input: address = "1.1.1.1"
 Output: "1[.]1[.]1[.]1"
 
 2.
 
 Input: address = "255.100.50.0"
 Output: "255[.]100[.]50[.]0"
 
 Link: https://leetcode.com/problems/defanging-an-ip-address/submissions/
 
 */

import Foundation

class Solution {
    
    func defangIPaddr(_ address: String) -> String {
        address.replacingOccurrences(of: ".", with: "[.]")
    }
}
