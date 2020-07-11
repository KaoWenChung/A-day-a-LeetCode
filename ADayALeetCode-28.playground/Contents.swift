import UIKit

var str = "Hello, playground"

/*
 
 Given an integer n. No-Zero integer is a positive integer which doesn't contain any 0 in its decimal representation.

 Return a list of two integers [A, B] where:

 A and B are No-Zero integers.
 A + B = n
 It's guarateed that there is at least one valid solution. If there are many valid solutions you can return any of them.

  

 Example 1:

 Input: n = 2
 Output: [1,1]
 Explanation: A = 1, B = 1. A + B = n and both A and B don't contain any 0 in their decimal representation.
 Example 2:

 Input: n = 11
 Output: [2,9]
 Example 3:

 Input: n = 10000
 Output: [1,9999]
 Example 4:

 Input: n = 69
 Output: [1,68]
 Example 5:

 Input: n = 1010
 Output: [11,999]
  

 Constraints:

 2 <= n <= 10^4
 */

//func getNoZeroIntegers(_ n: Int) -> [Int] {
//
//    var num1 = 1
//    var num2 = n - 1
//
//    if num2 % 10 != 0 && num1 % 10 != 0 {
//        return [num1, num2]
//    } else if num1 % 10 == 0 || num2 % 10 == 0 {
//        num1 += 1
//        num2 -= 1
//    }
//
//    return [num1, num2]
//}


func test (_ n: Int) -> [Int] {

    var counter = 1
    
    while String(counter).contains("0") || String(n - counter).contains("0"){
        counter += 1
    }
    
    return [counter, n - counter]
}
