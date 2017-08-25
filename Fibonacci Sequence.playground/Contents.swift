//: Playground - noun: a place where people can play

import UIKit

// [0, 1, 1, 2, 3, 5, 8, 13, 21]

// Linear way
func fibNumSteps(numSteps: Int) -> [Int] {
    var sequence = [0, 1]
    if numSteps <= 1 {
        return sequence
    }
    for _ in 0...numSteps - 1 {
        let first = sequence[sequence.count - 2]
        let second = sequence.last!
        
        
        sequence.append(first + second )
    }
    
        return sequence
}

// Recursive Way
func fibRecursionForNumSteps (numSteps: Int, first: Int, second: Int) -> [Int] {
    if numSteps == 0 {
        return[]
    } else {
        return [first + second] + fibRecursionForNumSteps(numSteps: numSteps - 1, first: second, second: first + second)
    }
    
    
}

[0, 1] + fibRecursionForNumSteps(numSteps: 5, first: 0, second: 1)

fibNumSteps(numSteps: 5)



