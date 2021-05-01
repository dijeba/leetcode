/**
 
 Given a string paragraph and a string array of the banned words banned,
 return the most frequent word that is not banned. It is guaranteed there is at least one word that is not banned, and that the answer is unique.
 
 The words in paragraph are case-insensitive and the answer should be returned in lowercase.
 
 Examples:
 
 Example 1:

 Input: paragraph = "Bob hit a ball, the hit BALL flew far after it was hit.", banned = ["hit"]
 Output: "ball"
 Explanation:
 "hit" occurs 3 times, but it is a banned word.
 "ball" occurs twice (and no other word does), so it is the most frequent non-banned word in the paragraph.
 Note that words in the paragraph are not case sensitive,
 that punctuation is ignored (even if adjacent to words, such as "ball,"),
 and that "hit" isn't the answer even though it occurs more because it is banned.
 
 Example 2:

 Input: paragraph = "a.", banned = []
 Output: "a"
 
 Constraints:

 1 <= paragraph.length <= 1000
 paragraph consists of English letters, space ' ', or one of the symbols: "!?',;.".
 0 <= banned.length <= 100
 1 <= banned[i].length <= 10
 banned[i] consists of only lowercase English letters.
 
 
 Link: https://leetcode.com/problems/most-common-word/
 */

import Foundation

class Solution {
    
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        
        var lowerCaseParagraph = paragraph.lowercased()
        let lowerCaseBanned = banned.map{ $0.lowercased() }
        
        // Remove banned words:
        
        for banned in lowerCaseBanned {
            lowerCaseParagraph = lowerCaseParagraph.replacingOccurrences(of: banned, with: "")
        }
        
        // Remove banned symbols:
        
        let a = "a".unicodeScalars.filter{$0.isASCII}.first!.value
        let z = "z".unicodeScalars.filter{$0.isASCII}.first!.value
        
        for c in lowerCaseParagraph {
            let stringC = String(c)
            let unicode = stringC.unicodeScalars.filter{$0.isASCII}.first!.value
            
            if unicode < a || unicode > z {
                lowerCaseParagraph = lowerCaseParagraph.replacingOccurrences(of: stringC, with: "+")
            }
        }
        
        // Slit words into array
        
        let words = lowerCaseParagraph.components(separatedBy: "+")
        
        // Remove "" symbol
        var fixedWords: [String] = []
        
        for w in words where w != "" {
            fixedWords.append(w)
        }
        
        
        // Count the words
        
        var dict: [String: Int] = [:]
        
        for w in fixedWords {
            
            if let value = dict[w] {
                dict[w] = value + 1
            } else {
                dict[w] = 1
            }
        }
        
        // Get the word that appears most times
        
        var solution: (key: String, value: Int) = ("", 0)
        
        for (k, v) in dict {
            if solution.value < v {
                solution = (k, v)
            }
        }
        
        return solution.key
    }
}
