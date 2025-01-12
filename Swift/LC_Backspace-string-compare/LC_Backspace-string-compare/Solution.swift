/*
 
 Given two strings S and T, return if they are equal when both are typed into empty text editors.
 `#` means a backspace character.

 Note that after backspacing an empty text, the text will continue empty.
 
 Examples:
 
 Example 1:

 Input: S = "ab#c", T = "ad#c"
 Output: true
 Explanation: Both S and T become "ac".
 
 Example 2:
 
 Input: S = "ab##", T = "c#d#"
 Output: true
 Explanation: Both S and T become "".
 
 Example 3:
 
 Input: S = "a##c", T = "#a#c"
 Output: true
 Explanation: Both S and T become "c".
 
 Example 4:
 
 Input: S = "a#c", T = "b"
 Output: false
 Explanation: S becomes "c" while T becomes "b".
 
 Note:
 
 1 <= S.length <= 200
 1 <= T.length <= 200
 S and T only contain lowercase letters and '#' characters.
 
 Link: https://leetcode.com/problems/backspace-string-compare/
 
 */

import Foundation

class Solution {
    
    func backspaceCompare(_ S: String, _ T: String) -> Bool {
        return convertString(S) == convertString(T)
    }
    
    private func convertString(_ string: String) -> String {
        
        var newString: [String.Element] = []
        
        for c in string {
            
            if c == "#" {
                if !newString.isEmpty {
                    newString.removeLast()
                }
            } else {
                newString.append(c)
            }
        }
        
        return String(newString)
    }
}
