import UIKit

var str = "Hello, playground"

/*
 On a plane there are n points with integer coordinates points[i] = [xi, yi]. Your task is to find the minimum time in seconds to visit all points.

 You can move according to the next rules:

 In one second always you can either move vertically, horizontally by one unit or diagonally (it means to move one unit vertically and one unit horizontally in one second).
 You have to visit the points in the same order as they appear in the array.
  

 Example 1:


 Input: points = [[1,1],[3,4],[-1,0]]
 Output: 7
 Explanation: One optimal path is [1,1] -> [2,2] -> [3,3] -> [3,4] -> [2,3] -> [1,2] -> [0,1] -> [-1,0]
 Time from [1,1] to [3,4] = 3 seconds
 Time from [3,4] to [-1,0] = 4 seconds
 Total time = 7 seconds
 Example 2:

 Input: points = [[3,2],[-2,2]]
 Output: 5
  

 Constraints:

 points.length == n
 1 <= n <= 100
 points[i].length == 2
 -1000 <= points[i][0], points[i][1] <= 1000
 */

class Solution {
    func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
        return 0
    }
}
func test(_ points: [[Int]]) -> Int {
    var xDistance = 0
    var yDistance = 0
    var sum = 0
    
    print(points.count)
    for (index, value) in points.enumerated() {
        guard index < points.count - 1 else{ break }
        xDistance = abs(points[index][0] - points[index + 1][0])
        yDistance = abs(points[index][1] - points[index + 1][1])
        print("index: \(index), value:\(value), xDistance:\(xDistance), yDistance:\(yDistance)" )
//        sum += abs(points[index][0] - points[index + 1][0]) - abs(points[index][1] - abs(points[index + 1][1]))
        
        if xDistance == yDistance {
            sum += xDistance
        } else if xDistance > yDistance {
            sum += abs(xDistance - yDistance) + yDistance
        } else if xDistance < yDistance {
            sum += abs(xDistance - yDistance) + xDistance
        }
        print(sum)
    }
    
    return sum
}


print(test([[1,1],[3,4],[-1,0]]))
print(test([[3,2],[-2,2]]))

func minTimeToVisitAllPoints(_ points: [[Int]]) -> Int {
    var xDistance = 0
    var yDistance = 0
    var sum = 0
    
    for (index, _) in points.enumerated() {
        guard index < points.count - 1 else{ break }
        xDistance = abs(points[index][0] - points[index + 1][0])
        yDistance = abs(points[index][1] - points[index + 1][1])
        if xDistance == yDistance {
            sum += xDistance
        }else if xDistance > yDistance {
            sum += xDistance
        }else if yDistance > xDistance {
            sum += yDistance
        }
    }
    return sum
}


print(minTimeToVisitAllPoints([[1,1],[3,4],[-1,0]]))
print(minTimeToVisitAllPoints([[3,2],[-2,2]]))
