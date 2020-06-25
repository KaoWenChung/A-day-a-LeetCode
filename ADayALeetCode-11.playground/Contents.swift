import UIKit

var str = "Hello, playground"

/*
 Balanced strings are those who have equal quantity of 'L' and 'R' characters.

 Given a balanced string s split it in the maximum amount of balanced strings.

 Return the maximum amount of splitted balanced strings.

  

 Example 1:

 Input: s = "RLRRLLRLRL"
 Output: 4
 Explanation: s can be split into "RL", "RRLL", "RL", "RL", each substring contains same number of 'L' and 'R'.
 Example 2:

 Input: s = "RLLLLRRRLR"
 Output: 3
 Explanation: s can be split into "RL", "LLLRRR", "LR", each substring contains same number of 'L' and 'R'.
 Example 3:

 Input: s = "LLLLRRRR"
 Output: 1
 Explanation: s can be split into "LLLLRRRR".
 Example 4:

 Input: s = "RLRRRLLRLL"
 Output: 2
 Explanation: s can be split into "RL", "RRRLLRLL", since each substring contains an equal number of 'L' and 'R'
  

 Constraints:

 1 <= s.length <= 1000
 s[i] = 'L' or 'R'
 */

func test(_ s: String) -> Int {
    var a = 0
    var b = 0
    var c = ""
    var result = 0
    
    for i in s {
        if i == "L" {
            a += 1
            c.append(i)
            if a == b {
                result += 1
                a = 0
                b = 0
                c = ""
            }
        } else {
            b += 1
            c.append(i)
            if a == b {
                result += 1
                a = 0
                b = 0
                c = ""
            }
        }
    }
    print("a: \(a), b: \(b), c:\(c)")
    return result
}

print(test("RLRRLLRLRL"))

class Solution2 {
    func balancedStringSplit(_ s: String) -> Int {
        
        var balance = 0
        var count = 0
        
        for i in s {
            if i == "R" {
                balance += 1
            } else {
                balance -= 1
            }
            
            if balance == 0 {
                count += 1
            }
        }
        
        return count
    }
}
