import UIKit

/*
 Given an array nums. We define a running sum of an array as runningSum[i] = sum(nums[0]…nums[i]).

 Return the running sum of nums.
 
 Constraints:

 1 <= nums.length <= 1000
 -10^6 <= nums[i] <= 10^6
 */

class Solution {
    func runningSum(_ nums: [Int]) -> [Int] {
        guard nums.count >= 1 && nums.count <= 1000 else {
            print("Nums is not in the range")
            return [0]
        }
        var nums2 = [Int]()
        for (index ,value) in nums.enumerated() {
            print("index: \(index), value: \(value)")
            if index > 0 {
                nums2.append(nums2.last! + value)
            } else {
                nums2.append(nums[index])
            }
            
        }
        print(nums2)
        return nums2
    }
}

var numA = Solution()
numA.runningSum([1,4,7])
