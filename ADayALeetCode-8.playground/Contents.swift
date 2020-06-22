import UIKit

var str = "Hello, playground"

/*
 1281. Subtract the Product and Sum of Digits of an Integer
 Easy

 253

 90

 Add to List

 Share
 Given an integer number n, return the difference between the product of its digits and the sum of its digits.
  

 Example 1:

 Input: n = 234
 Output: 15
 Explanation:
 Product of digits = 2 * 3 * 4 = 24
 Sum of digits = 2 + 3 + 4 = 9
 Result = 24 - 9 = 15
 Example 2:

 Input: n = 4421
 Output: 21
 Explanation:
 Product of digits = 4 * 4 * 2 * 1 = 32
 Sum of digits = 4 + 4 + 2 + 1 = 11
 Result = 32 - 11 = 21
  

 Constraints:

 1 <= n <= 10^5
 */

class Solution {
    func subtractProductAndSum(_ n: Int) -> Int {
        
        return 0
    }
}


func test(_ n: Int) -> Int {
    let str = String(n).compactMap{ $0.wholeNumberValue }
    return str.reduce(1, { $0 * $1 }) - str.reduce(0, { $0 + $1 })
}

print(test(234))
print(test(4421))
