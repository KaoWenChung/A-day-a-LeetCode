import UIKit

var str = "Hello, playground"

/*
 Given head which is a reference node to a singly-linked list. The value of each node in the linked list is either 0 or 1. The linked list holds the binary representation of a number.

 Return the decimal value of the number in the linked list.

  

 Example 1:


 Input: head = [1,0,1]
 Output: 5
 Explanation: (101) in base 2 = (5) in base 10
 Example 2:

 Input: head = [0]
 Output: 0
 Example 3:

 Input: head = [1]
 Output: 1
 Example 4:

 Input: head = [1,0,0,1,0,0,1,1,1,0,0,0,0,0,0]
 Output: 18880
 Example 5:

 Input: head = [0,0]
 Output: 0
  

 Constraints:

 The Linked List is not empty.
 Number of nodes will not exceed 30.
 Each node's value is either 0 or 1.
 */


 
 public class ListNode {
     public var val: Int
     public var next: ListNode?
     public init() { self.val = 0; self.next = nil; }
     public init(_ val: Int) { self.val = val; self.next = nil; }
     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 }
 
class Solution {
    func getDecimalValue(_ head: ListNode?) -> Int {
        return 0
    }
}

func test(_ head: ListNode?) -> Int{
    var sum = 0
    var v = 0
    guard let node = head else { return sum }
    if node.val == 1 {
        sum = sum + Int(pow(2, v))
    }
    if node.next != nil {
        sum += test( node.next )
    }
    
    return sum
}

print(pow(2, 2) + pow(2, 2))
