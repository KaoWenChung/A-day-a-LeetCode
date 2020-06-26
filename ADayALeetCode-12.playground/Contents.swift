import UIKit

var str = "Hello, playground"

/*
 938. Range Sum of BST
 Easy

 1160

 205

 Add to List

 Share
 Given the root node of a binary search tree, return the sum of values of all nodes with value between L and R (inclusive).

 The binary search tree is guaranteed to have unique values.

  

 Example 1:

 Input: root = [10,5,15,3,7,null,18], L = 7, R = 15
 Output: 32
 Example 2:

 Input: root = [10,5,15,3,7,13,18,1,null,6], L = 6, R = 10
 Output: 23
  

 Note:

 The number of nodes in the tree is at most 10000.
 The final answer is guaranteed to be less than 2^31.
 */


  
  public class TreeNode {
    public var val: Int
       public var left: TreeNode?
       public var right: TreeNode?
       public init() { self.val = 0; self.left = nil; self.right = nil; }
       public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
       public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
           self.val = val
           self.left = left
           self.right = right
       }
   }
 
class Solution {
    func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
        return 0
    }
}

func rangeSumBST(_ root: TreeNode?, _ L: Int, _ R: Int) -> Int {
var sum = 0
guard let node = root else { return sum }
if L <= node.val &&  node.val <= R {
    sum += node.val
}
if L < node.val {
    sum = sum + rangeSumBST(node.left, L, R)
}
if node.val < R {
    sum = sum + rangeSumBST(node.right, L, R)
}

return sum
}

print(rangeSumBST([10,5,15,3,7,nil,18], 7, 15))
print(rangeSumBST([10,5,15,3,7,13,18,1,nil,6], 16, 10))
