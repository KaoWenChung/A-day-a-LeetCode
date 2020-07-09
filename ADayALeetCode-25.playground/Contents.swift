import UIKit

var str = "Hello, playground"


/*
 Given an array arr, replace every element in that array with the greatest element among the elements to its right, and replace the last element with -1.

 After doing so, return the array.

  

 Example 1:

 Input: arr = [17,18,5,4,6,1]
 Output: [18,6,6,6,1,-1]
  

 Constraints:

 1 <= arr.length <= 10^4
 1 <= arr[i] <= 10^5
 */

//func replaceElements(_ arr: [Int]) -> [Int] {
//    var numArr = arr
//    var result = [Int]()
//    for _ in arr {
//        if numArr.count > 1 {
//            numArr.removeFirst()
//            result.append(numArr.max()!)
//        } else {
//            result.append(-1)
//        }
//
//
//    }
//
//    return result
//}


func replaceElements(_ arr: [Int]) -> [Int] {
    var result = Array(repeating: -1, count: arr.count)
    var lastMax = -1
    
    for i in stride(from: arr.count - 1, through: 0, by: -1) {
        result[i] = lastMax
        lastMax = max(lastMax, arr[i])
    }
    
    return result
}

print(replaceElements([17,18,5,4,6,1]))
