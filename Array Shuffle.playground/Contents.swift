//: Playground - noun: a place where people can play

import UIKit


var list = [1, 2, 3, 4, 5, 6, 7]

extension Array {
    
    public mutating func shuffleArrayInPlace () {
        
        for i in 0..<count {
            
            let random = Int(arc4random_uniform(UInt32(i)))
            if i != random {
                swap(&self[i], &self[random])
            }
        
        
        
        }
        
        
        
    }
    
    
}





// Shufle using temp array O(n2)
extension Array {
    public mutating func shuffleArray() {
        var temp = [Element]()
        
        while !isEmpty {
            let i = Int(arc4random_uniform(UInt32(count)))
        let obj = remove(at: i)
            temp.append(obj)
            
        }
        self = temp
        
    }
    
}



list.shuffleArray()
for i in 0..<100
{
//    print(String())
}
//list.shuffleArrayInPlace()



list.shuffleArrayInPlace()











