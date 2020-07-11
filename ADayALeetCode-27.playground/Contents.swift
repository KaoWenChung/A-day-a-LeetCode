import UIKit

/*
 Given a string S that only contains "I" (increase) or "D" (decrease), let N = S.length.

 Return any permutation A of [0, 1, ..., N] such that for all i = 0, ..., N-1:

 If S[i] == "I", then A[i] < A[i+1]
 If S[i] == "D", then A[i] > A[i+1]
  

 Example 1:

 Input: "IDID"
 Output: [0,4,1,3,2]
 Example 2:

 Input: "III"
 Output: [0,1,2,3]
 Example 3:

 Input: "DDI"
 Output: [3,2,0,1]
  

 Note:

 1 <= S.length <= 10000
 S only contains characters "I" or "D".
 
 */




func diStringMatch(_ S: String) -> [Int] {
    
    var arrS = S
    arrS.append(S.last!)
    
    let number = Array(0...S.count)
    var iNum = 0
    var dNum = S.count

    var result = [Int]()
    
    for cha in arrS {
        if cha == "I" {
            result.append(number[iNum])
            iNum += 1
        } else if cha == "D" {
            result.append(number[dNum])
            dNum -= 1
        }
    }
    
    return result
}

func diStringMatch2(_ S: String) -> [Int] {
    var low = 0
    var high = S.count
    var result = [Int]()
    for char in S{
        if char == "I"{
            result.append(low)
            low += 1
        }
        else{
           //   char == "D"
            result.append(high)
            high -= 1
            print("high:\(high)")
        }
    }
    result.append(high)
    return result
}


print(diStringMatch("IDID"))
print(diStringMatch("III"))
print(diStringMatch("DDI"))

print(diStringMatch2("IDID"))
print(diStringMatch2("III"))
print(diStringMatch2("DDI"))
