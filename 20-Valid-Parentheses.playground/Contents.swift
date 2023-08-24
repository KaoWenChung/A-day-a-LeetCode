/*
 20. Valid Parentheses
 Easy
 21.6K
 1.4K
 Companies
 Given a string s containing just the characters '(', ')', '{', '}', '[' and ']', determine if the input string is valid.

 An input string is valid if:

 Open brackets must be closed by the same type of brackets.
 Open brackets must be closed in the correct order.
 Every close bracket has a corresponding open bracket of the same type.
  

 Example 1:

 Input: s = "()"
 Output: true
 Example 2:

 Input: s = "()[]{}"
 Output: true
 Example 3:

 Input: s = "(]"
 Output: false

 */

class Solution {
    func isValid(_ s: String) -> Bool {
        var stack: [Character] = []
        for char in s {
            switch char {
            case "(", "{", "[":
                stack.append(char)
            case ")":
                if stack.popLast() != "(" {
                    return false
                }
            case "}":
                if stack.popLast() != "{" {
                    return false
                }
            case "]":
                if stack.popLast() != "[" {
                    return false
                }
            default:
                // Handle unexpected characters
                return false
            }
        }
        return stack.isEmpty
    }
}
