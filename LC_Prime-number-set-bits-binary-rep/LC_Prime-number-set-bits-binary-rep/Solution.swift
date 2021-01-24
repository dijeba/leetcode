/*
 
 Given two integers L and R, find the count of numbers in the range [L, R] (inclusive) having a
 prime number of set bits in their binary representation.

 (Recall that the number of set bits an integer has is the number of 1s present when written in binary.
 For example, 21 written in binary is 10101 which has 3 set bits. Also, 1 is not a prime.)
 
 Note:

 L, R will be integers L <= R in the range [1, 10^6].
 R - L will be at most 10000.
 
 Examples:
 
 1.
 
 Input: L = 6, R = 10
 Output: 4
 Explanation:
 6 -> 110 (2 set bits, 2 is prime)
 7 -> 111 (3 set bits, 3 is prime)
 9 -> 1001 (2 set bits , 2 is prime)
 10-> 1010 (2 set bits , 2 is prime)
 
 2.
 
 Input: L = 10, R = 15
 Output: 5
 Explanation:
 10 -> 1010 (2 set bits, 2 is prime)
 11 -> 1011 (3 set bits, 3 is prime)
 12 -> 1100 (2 set bits, 2 is prime)
 13 -> 1101 (3 set bits, 3 is prime)
 14 -> 1110 (3 set bits, 3 is prime)
 15 -> 1111 (4 set bits, 4 is not prime)
 
 Link: https://leetcode.com/problems/prime-number-of-set-bits-in-binary-representation/
 
 */

import Foundation

class Solution {
    
    func countPrimeSetBits(_ L: Int, _ R: Int) -> Int {
        
        // 1. convert to an array
        let numbers = Array(L...R)
        
        var total = 0
        
        numbers.forEach { n in
            
            // 1. Convert to binary
            let binary = String(n, radix: 2)
            
            // 2. Count how many 1s
            var setBits = 0
            
            binary.forEach {
                if $0 == "1" {
                    setBits += 1
                }
            }
            
            // 3. If it's prime, add 1 to total
            if isPrime(setBits) {
                total += 1
            }
        }
        
        return total
    }
    
    private func isPrime(_ number: Int) -> Bool {
        number > 1 && !(2..<number).contains { number % $0 == 0 }
    }
}
