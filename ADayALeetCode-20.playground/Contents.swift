import UIKit

var str = "Hello, playground"

/*
 Given an integer n, return any array containing n unique integers such that they add up to 0.

  

 Example 1:

 Input: n = 5
 Output: [-7,-1,1,3,4]
 Explanation: These arrays also are accepted [-5,-1,1,2,3] , [-3,-1,2,-2,4].
 Example 2:

 Input: n = 3
 Output: [-1,0,1]
 Example 3:

 Input: n = 1
 Output: [0]
  

 Constraints:

 1 <= n <= 1000
 */


func sumZero(_ n: Int) -> [Int] {
    var result = [Int]()
    if n % 2 == 0 {
        result = Array(1...n/2)
        result.append(contentsOf: result.map({ $0 * -1 }))
        print(result)
    } else if n == 1 {
        result = [0]
        print(result)
    } else if n % 2 != 0{
        result = Array(1...(n - 1)/2)
        result.append(contentsOf: result.map({ $0 * -1 }))
        result.append(0)
        print(result)
    }
    return result
}

print(sumZero(5))
print(sumZero(3))
print(sumZero(1))
print(sumZero(4))
