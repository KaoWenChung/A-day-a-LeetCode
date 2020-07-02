import UIKit

var str = "Hello, playground"

/*
 
 You are given the array paths, where paths[i] = [cityAi, cityBi] means there exists a direct path going from cityAi to cityBi. Return the destination city, that is, the city without any path outgoing to another city.

 It is guaranteed that the graph of paths forms a line without any loop, therefore, there will be exactly one destination city.

  

 Example 1:

 Input: paths = [["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]
 Output: "Sao Paulo"
 Explanation: Starting at "London" city you will reach "Sao Paulo" city which is the destination city. Your trip consist of: "London" -> "New York" -> "Lima" -> "Sao Paulo".
 Example 2:

 Input: paths = [["B","C"],["D","B"],["C","A"]]
 Output: "A"
 Explanation: All possible trips are:
 "D" -> "B" -> "C" -> "A".
 "B" -> "C" -> "A".
 "C" -> "A".
 "A".
 Clearly the destination city is "A".
 Example 3:

 Input: paths = [["A","Z"]]
 Output: "Z"
  

 Constraints:

 1 <= paths.length <= 100
 paths[i].length == 2
 1 <= cityAi.length, cityBi.length <= 10
 cityAi != cityBi
 All strings consist of lowercase and uppercase English letters and the space character.
 
 */

class Solution {
    func destCity(_ paths: [[String]]) -> String {
        return ""
    }
}

//func test(_ paths: [[String]]) -> String {
//    var fromCity: Set<String> = []
//    var destinationCity: Set<String> = []
//    for city in paths {
//        fromCity.insert(city.first!)
//        destinationCity.insert(city.last!)
//        print(fromCity)
//        print(destinationCity)
//        print("a:\(destinationCity.subtract(fromCity))")
//    }
//
//
//    return ""
//}
func test(_ paths: [[String]]) -> String {

    var fromCity: Set<String> = []
    var destinationCity: Set<String> = []
    for city in paths {
        fromCity.insert(city.first!)
        destinationCity.insert(city.last!)



    }
    print(fromCity)
    print(destinationCity)
    let a = destinationCity.subtracting(fromCity)
    print(String(a.first!))
    print("a:\(destinationCity.subtract(fromCity))")
    return String(a.first!)
}
//
print(test([["London","New York"],["New York","Lima"],["Lima","Sao Paulo"]]))
print(test([["B","C"],["D","B"],["C","A"]]))
print(test([["A","Z"]]))

//let mySet = Set(["a", "b", "a"])  // Set<String>
//let myArray = Array(mySet)        // Array<String>
//print(myArray)


//var set1 = Set([1, 2, 3])   //{2, 3, 1}
//var set2 = Set([2, 3, 4])   //{2, 3, 4}
////set2.intersect(set1)        //return: {2, 3}
//set2.union(set1)            //return: {2, 3, 4, 1}
////set2.exclusiveOr(set1)      //return: {4, 1}
//set2.subtract(set1)         //retunr: {4}
