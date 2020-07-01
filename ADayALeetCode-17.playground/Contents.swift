import UIKit

var str = "Hello, playground"

/*
 Given a positive integer num consisting only of digits 6 and 9.

 Return the maximum number you can get by changing at most one digit (6 becomes 9, and 9 becomes 6).

  

 Example 1:

 Input: num = 9669
 Output: 9969
 Explanation:
 Changing the first digit results in 6669.
 Changing the second digit results in 9969.
 Changing the third digit results in 9699.
 Changing the fourth digit results in 9666.
 The maximum number is 9969.
 Example 2:

 Input: num = 9996
 Output: 9999
 Explanation: Changing the last digit 6 to 9 results in the maximum number.
 Example 3:

 Input: num = 9999
 Output: 9999
 Explanation: It is better not to apply any change.
  

 Constraints:

 1 <= num <= 10^4
 num's digits are 6 or 9.
 */


func test(_ num: Int) -> Int {
    var num = num
    var arrayInt = [Int]()
    
    arrayInt.append(num % 10)
    while num >= 10 {
        num = num / 10
        arrayInt.insert(num % 10, at: 0)
    }
    
    print(arrayInt)
    
    for ( index, value ) in arrayInt.enumerated() {
        if value == 6 {
            arrayInt[index] = 9
            print("index:\(index), value:\(value)")
            break
        }
    }
    return arrayInt.reduce(0, { $0 * 10 + $1 })
}

print(test(9669))
print(test(9996))
print(test(9999))

let digits = [1, 2, 3, 4]
let result = digits.reduce(0, { $0 * 10 + $1 })
print(result) // 1234

