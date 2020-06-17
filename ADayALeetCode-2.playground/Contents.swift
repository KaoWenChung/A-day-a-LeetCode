import UIKit

//class Solution {
//    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {
//
//        var prefix = nums.prefix(n)
//        let suffix = nums.suffix(n)
//
//        for (index, value) in suffix.enumerated() {
//            print("index: \(index), value: \(value)")
//            print("suffix: \(suffix)")
//            prefix.insert(value, at: index+index+1)
//            print("prefix: \(prefix)")
//        }
//        return Array(prefix)
//    }
//}

//var results = Solution()
//print(results.shuffle([1,3,5,2,4,6], 3))

class Solution {
    func shuffle(_ nums: [Int], _ n: Int) -> [Int] {

        let prefix = Array(nums.prefix(n))
        var suffix = Array(nums.suffix(n))

        for (index, value) in prefix.enumerated() {
            print("index: \(index), value: \(value)")
            print("suffix: \(suffix)")
            suffix.insert(value, at: index+index)
            print("prefix: \(prefix)")
        }
        return suffix
    }
}


var results = Solution()
print(results.shuffle([1,3,5,2,4,6], 3))

//
//let array = [1,3,5,2,4,6]
//
//let suffix = Array(array.suffix(3))
//let prefix = Array(array.prefix(3))
//
//
//print(suffix)
//print(prefix)
