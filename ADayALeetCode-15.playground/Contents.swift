import UIKit

var str = "Hello, playground"

/*
 Given the array of integers nums, you will choose two different indices i and j of that array. Return the maximum value of (nums[i]-1)*(nums[j]-1).
  

 Example 1:

 Input: nums = [3,4,5,2]
 Output: 12
 Explanation: If you choose the indices i=1 and j=2 (indexed from 0), you will get the maximum value, that is, (nums[1]-1)*(nums[2]-1) = (4-1)*(5-1) = 3*4 = 12.
 Example 2:

 Input: nums = [1,5,4,5]
 Output: 16
 Explanation: Choosing the indices i=1 and j=3 (indexed from 0), you will get the maximum value of (5-1)*(5-1) = 16.
 Example 3:

 Input: nums = [3,7]
 Output: 12
  

 Constraints:

 2 <= nums.length <= 500
 1 <= nums[i] <= 10^3
 */
//
//func test(_ nums: [Int]) -> Int{
//
//    let no1 = nums.max()
//
//    return (no1[0] - 1)*(no1[1] - 1)
//}
//
//print(test([3,4,5,2]))
//print(test([1,5,4,5]))
//print(test([3,7]))

var numsArr = Array(1...49)
var result = [Int]()
func lottery(_ nums: [Int]) -> [Int] {
    for _ in 0...5 {
        let random = numsArr.randomElement()!
        numsArr.remove(at: random)
        result.append(random)
    }
    return result
}
print(lottery(numsArr))
