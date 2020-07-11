import UIKit

var str = "Hello, playground"

/*
 Given a string s. You should re-order the string using the following algorithm:

 Pick the smallest character from s and append it to the result.
 Pick the smallest character from s which is greater than the last appended character to the result and append it.
 Repeat step 2 until you cannot pick more characters.
 Pick the largest character from s and append it to the result.
 Pick the largest character from s which is smaller than the last appended character to the result and append it.
 Repeat step 5 until you cannot pick more characters.
 Repeat the steps from 1 to 6 until you pick all characters from s.
 In each step, If the smallest or the largest character appears more than once you can choose any occurrence and append it to the result.

 Return the result string after sorting s with this algorithm.

  

 Example 1:

 Input: s = "aaaabbbbcccc"
 Output: "abccbaabccba"
 Explanation: After steps 1, 2 and 3 of the first iteration, result = "abc"
 After steps 4, 5 and 6 of the first iteration, result = "abccba"
 First iteration is done. Now s = "aabbcc" and we go back to step 1
 After steps 1, 2 and 3 of the second iteration, result = "abccbaabc"
 After steps 4, 5 and 6 of the second iteration, result = "abccbaabccba"
 Example 2:

 Input: s = "rat"
 Output: "art"
 Explanation: The word "rat" becomes "art" after re-ordering it with the mentioned algorithm.
 Example 3:

 Input: s = "leetcode"
 Output: "cdelotee"
 Example 4:

 Input: s = "ggggggg"
 Output: "ggggggg"
 Example 5:

 Input: s = "spo"
 Output: "ops"
  

 Constraints:

 1 <= s.length <= 500
 s contains only lower-case English letters.
 */



func sortString(_ s: String) -> String {
    
//    let sortSmall = Array(repeating: Set(s).sorted(by: >), count: 3).flatMap{ $0 }
    var sort = s.sorted(by: <)
    let sort0 = sort
    var sort1 = [Character]()
    var sort2 = [Character]()
    
    var result: [Character] = Array(repeating: "a", count: s.count)
    var number = 0
    
    func test(_ i: Int, _ sortLarge:[Character], _ number: Int) {
        print("sort:\(sort)")
        print("sort0:\(sort0[i])")
        sort1 = sort.filter{ $0 == sortLarge[number] }
        sort2 = sort.filter{ $0 != sortLarge[number] }
        print("sort1:\(sort1)")
        sort1.removeFirst()
        sort2.append(contentsOf: sort1)
        sort = sort2
        print("i:\(i)")
    }
    var flag = 1
    
    for i in 0..<s.count{
        print("sort:\(sort)")
        let sortLarge = Set(sort).sorted(by: <)
        
        if number < sortLarge.count && flag == 1 {
            test(i, sortLarge, number)
            print("go")
            
            result[i] = sortLarge[number]
            number += 1
        } else if number == sortLarge.count - 1 && flag == 1 {
            test(i, sortLarge, number)
            print("stop")
            result[i] = sortLarge[number]
//            sortLarge.reverse()
            number -= 1
            flag += 1
            print("wowow:\(sortLarge)")
            print("flag:\(flag)")
        } else if number > 0 && flag == 2 {
            test(i, sortLarge, number)
            print("back")
            result[i] = sortLarge[number]
            number -= 1
        } else if number == 0 && flag == 2 {
            test(i, sortLarge, number)
            
            print("stop")
            result[i] = sortLarge[number]
            number += 1
            flag = 1
        }
    }
    
    return String(result)
}

//print(sortString("aaaabbbbcccc"))
print(sortString("leetcode"))
print("cdelotee")


//print("hello".replacingOccurrences(of: "l", with: ""))
//
//let characterArray: [Character] = ["J", "o", "h", "n"]
//let string = String(characterArray)
//
//print(string)
// prints "John"
/*
 for i in 0...s.count - 1 {
     print("sortLarge: \(sortLarge), number: \(number), result:\(result), sort:\(sort)")
     if number == 1 {
         print(">,1")
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         result[i] = sortLarge[0]
         sort.removeFirst()
         number += 1
     } else if number == 2 {
         print(">,2")
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         sort.removeFirst()
         result[i] = sortLarge[1]
         number += 1
     } else if number == 3 {
         print(">,3")
         
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         sort.removeFirst()
         result[i] = sortLarge[2]
         number += 1
         
     } else if number == 4 {
         print("<,1")
         
         sortLarge.reverse()
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         sort.reverse()
         print("reverse:\(sort)")
         sort.removeFirst()
         result[i] = sortLarge[0]
         number += 1
         
     } else if number == 5 {
         print("<,2")
         
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         sort.removeLast()
         result[i] = sortLarge[1]
         number += 1
         
     } else if number == 6 {
         print("<,3")
         
         if !sort.contains(Array(s)[i]) {
             sortLarge.removeFirst()
         }
         sort.removeLast()
         result[i] = sortLarge[2]
         number = 1
         sort.reverse()
         sortLarge.reverse()
         
     }
 }
 
 */
