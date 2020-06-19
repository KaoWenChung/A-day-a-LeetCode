import UIKit

var str = "Hello, playground"
/*
771. Jewels and Stones
Easy

2052

359

Add to List

Share
You're given strings J representing the types of stones that are jewels, and S representing the stones you have.  Each character in S is a type of stone you have.  You want to know how many of the stones you have are also jewels.

The letters in J are guaranteed distinct, and all characters in J and S are letters. Letters are case sensitive, so "a" is considered a different type of stone from "A".

Example 1:

Input: J = "aA", S = "aAAbbbb"
Output: 3
 
Example 2:

Input: J = "z", S = "ZZ"
Output: 0
Note:

S and J will consist of letters and have length at most 50.
The characters in J are distinct.
*/

class Solution {
    func numJewelsInStones(_ J: String, _ S: String) -> Int {
        guard J.count + S.count <= 50 else {return 0}
        var result = 0
        for i in J {
            for s in S {
                if i == s {
                    result += 1
                }
            }
        }
        return result
    }
}

var test = Solution()
print(test.numJewelsInStones("aA", "aAAbbb"))
print(test.numJewelsInStones("z", "ZZ"))
