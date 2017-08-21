//: Playground - noun: a place where people can play

import UIKit

import Foundation


// read the integer n
let n = 3

// declare 2d array
var arr: [[Int]] = [[11, 2, 4], [4, 5, 6], [10, 8, -12]]


var leftDiagonalPointer = 0
var rightDiagonalPointer = n - 1

var sumLeftDiagonal = 0
var sumRightDiagonal = 0
for index in 0..<n {
    sumLeftDiagonal += arr[index][leftDiagonalPointer]
    leftDiagonalPointer += 1
    
    
    sumRightDiagonal += arr[index][rightDiagonalPointer]
    rightDiagonalPointer -= 1
    }


print(abs(sumLeftDiagonal - sumRightDiagonal))
