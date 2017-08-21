//: Playground - noun: a place where people can play

import UIKit


// array of number : List
var numbersList = [1, 2, 3, 4, 5]

// Shift Direction
var direction = "left"

// number of shift steps
let numberOfShift = 4



// loop with number of shift steps
for shift in 0..<numberOfShift {
    
    
    
    if direction == "left" {
        // left Shift
        var temp = numbersList[0]
        for index in 0..<numbersList.count - 1 {
            
            numbersList[index] = numbersList[index + 1]
            
        }
        numbersList[numbersList.endIndex - 1] = temp
    } else if direction == "right" {
        
        // right Shift
        var temp = numbersList[numbersList.endIndex - 1]
        
        for index in 1..<numbersList.count   {
            
        // Index Backword Count
            // print(numbersList.count - index )
            // print(numbersList.count - index - 1 )
            
            
             numbersList[numbersList.count - index ] = numbersList[numbersList.count - index - 1]
            
        }
        numbersList[0] = temp
        
    }
    
    
    
}

for number in numbersList {
    print(number, terminator:" ")
}

