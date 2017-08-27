//: Playground - noun: a place where people can play

import UIKit

print("123")

//Example 1
let matrix : [[Int]] = [[1,2,3,4,5],
                        [6,7,8,9,10],
                        [11,12,13,14,15],
                        [16,17,18,19,20],
                        [21,22,23,24,25]]

// Example 2
let matrix2 : [[Int]] = [[1,2,3,4],
                         [5,6,7,8],
                         [9,10,11,12]]



func printSpiralMatrix(matrix: [[Int]]) {


// k - starting row index
    var k = 0
// m - ending row index
    var m = matrix.count
// l - starting column index
    var l = 0
// n - ending column index
    var n = matrix[0].count
//     i - iterator
    
    
//    get out if there is no raws and coulmn
    while k<m && l<n {
        print("k= \(k) m=\(m) l=\(l) n=\(n)")
        
        // print the first raw
        for i in l..<n {
            print("\(matrix[k][i]) ")
        }
        // decrease number of raws by one
        k += 1
         print("k= \(k) m=\(m) l=\(l) n=\(n)")
        // print last column
        for i in k..<m {
            print("\(matrix[i][n - 1])")
        }
        // decrease number of column by one
        n -= 1
         print("k= \(k) m=\(m) l=\(l) n=\(n)")
        // check if there is more raws
        if k < m {
            // print the last raw
            for i in stride(from: n - 1, to: l - 1, by: -1) {

                print("\(matrix[m - 1][i]) ")
            }
            // decrease raws by one
            m -= 1
             print("k= \(k) m=\(m) l=\(l) n=\(n)")
            
        }
        // check if there is more column
        if l < n  {
            // print the first column
            for i in stride(from: m - 1, to: k - 1 , by: -1) {
                
                print("\(matrix[i][l]) ")
            }
            // decrease the columns by one
            l += 1
            
             print("k= \(k) m=\(m) l=\(l) n=\(n)")
        }
        
    }
    
}



printSpiralMatrix(matrix: matrix2)
