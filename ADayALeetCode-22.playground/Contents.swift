import UIKit

var str = "Hello, playground"

/*
 Given a string s formed by digits ('0' - '9') and '#' . We want to map s to English lowercase characters as follows:

 Characters ('a' to 'i') are represented by ('1' to '9') respectively.
 Characters ('j' to 'z') are represented by ('10#' to '26#') respectively.
 Return the string formed after mapping.

 It's guaranteed that a unique mapping will always exist.

  

 Example 1:

 Input: s = "10#11#12"
 Output: "jkab"
 Explanation: "j" -> "10#" , "k" -> "11#" , "a" -> "1" , "b" -> "2".
 Example 2:

 Input: s = "1326#"
 Output: "acz"
 Example 3:

 Input: s = "25#"
 Output: "y"
 Example 4:

 Input: s = "12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"
 Output: "abcdefghijklmnopqrstuvwxyz"
  

 Constraints:

 1 <= s.length <= 1000
 s[i] only contains digits letters ('0'-'9') and '#' letter.
 s will be valid string such that mapping is always possible.
 */

/*
func freqAlphabets(_ s: String) -> String {
    let aZ = "abcdefghijklmnopqrstuvwxyz"
    var string = Array(s)
    var aStr = ""
    var result = ""
    for (index, value) in string.enumerated() {
        if value == "#" {
            aStr.append(string[index - 2])
            aStr.append(string[index - 1])
            
        }
    }
    return ""
}
*/


func freqAlphabets2(_ s:String) -> String {
    var map = [Int: Character]()
    "abcdefghijklmnopqrstuvwxyz".enumerated().forEach {
        map[$0 + 1] = $1
    }
    
    var i = 0
    var result = ""
    let characters = Array(s)
    
    while i < characters.count {
        var id = Int(String(characters[ i ]))!
        
        if i + 2 < characters.count && characters[ i + 2 ] == "#" {
            
            id = id * 10 + Int(String(characters[ i + 1 ]))!
            i += 2
            
        }
        if let letter = map[ id ] {
            result.append(letter)
        }
        i += 1
    }
    return result
}


print(freqAlphabets2("10#11#12"))
print(freqAlphabets2("1326#"))
print(freqAlphabets2("25#"))
print(freqAlphabets2("12345678910#11#12#13#14#15#16#17#18#19#20#21#22#23#24#25#26#"))
