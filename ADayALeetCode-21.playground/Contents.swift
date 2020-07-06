import UIKit

var str = "Hello, playground"

/*
 Example 1:

 Input: grid = [[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]
 Output: 8
 Explanation: There are 8 negatives number in the matrix.
 Example 2:

 Input: grid = [[3,2],[1,0]]
 Output: 0
 Example 3:

 Input: grid = [[1,-1],[-1,-1]]
 Output: 3
 Example 4:

 Input: grid = [[-1]]
 Output: 1
  

 Constraints:

 m == grid.length
 n == grid[i].length
 1 <= m, n <= 100
 -100 <= grid[i][j] <= 100
 */

func countNegatives(_ grid: [[Int]]) -> Int {
//    print(grid.flatMap{ $0 })
    let flatArr = grid.flatMap({ $0 }).sorted(by: >)
    let count = flatArr.count
    var result = 0
    print(flatArr.sorted(by: >))
    for (index, value) in flatArr.enumerated() {
        print("index:\(index)")
        if value < 0 {
            result = count - index
            break
        }
    }
    return result
}

print("ans:\(countNegatives([[4,3,2,-1],[3,2,1,-1],[1,1,-1,-2],[-1,-1,-2,-3]]))")
print(countNegatives([[3,2],[1,0]]))
print(countNegatives([[1,-1],[-1,-1]]))
print(countNegatives([[-1]]))
