//: Playground - noun: a place where people can play

import UIKit

func mostCommanNameInArray(array: [String]) -> String {
    
    
    var nameCountDictionary = [String : Int]()
    
    for name in array {
        if let count = nameCountDictionary[name] {
            nameCountDictionary[name] = count + 1
        } else {
            nameCountDictionary[name] = 1
            
        }
        }
    
    var mostCommanName = ""
    
    for key in nameCountDictionary.keys {
        if mostCommanName == "" {
            mostCommanName = key
        } else {
             let count = nameCountDictionary[key]
            
            
            if count! > nameCountDictionary[mostCommanName]! {
            mostCommanName = key
            }
            }
        print("\(key): \(nameCountDictionary[key]!)")
        
        
    }
    
        return mostCommanName
}

mostCommanNameInArray(array: ["bob", "mina", "bob" , "mina", "Michael"])