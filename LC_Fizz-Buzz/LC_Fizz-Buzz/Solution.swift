/*
 
 Write a program that outputs the string representation of numbers from 1 to n.
 But for multiples of three it should output “Fizz” instead of the number and for the multiples of five output “Buzz”.
 For numbers which are multiples of both three and five output “FizzBuzz”.
 
 Example:
 n = 15,

 Return:
 [
     "1",
     "2",
     "Fizz",
     "4",
     "Buzz",
     "Fizz",
     "7",
     "8",
     "Fizz",
     "Buzz",
     "11",
     "Fizz",
     "13",
     "14",
     "FizzBuzz"
 ]
 
 Link: https://leetcode.com/problems/fizz-buzz/
 
 */

import Foundation

class Solution {
    
    func fizzBuzz(_ n: Int) -> [String] {
        
        var result: [String] = []
        let absN = abs(n)
        
        for i in 1...absN {
            
            if i % 3 == 0 && i % 5 == 0 {
                result.append("FizzBuzz")
            } else if i % 3 == 0 {
                result.append("Fizz")
            } else if i % 5 == 0 {
                result.append("Buzz")
            } else {
                result.append("\(i)")
            }
        }
        
        return result
    }
}
