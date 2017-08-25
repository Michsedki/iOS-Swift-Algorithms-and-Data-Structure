//: Playground - noun: a place where people can play

import UIKit
print("123")
public struct HashTable<key : Hashable , Value> {
    
    private typealias Element = (key: key , value: Value)
    private typealias Bucket = [Element]
    
    private var buckets: [Bucket]
    
    private(set) public var count = 0
    public var isEmpty : Bool {return count == 0}
    public init (capacity : Int ) {
        assert(capacity > 0)
        buckets = Array<Bucket>(repeatElement([], count: capacity))
    }
    
    private func index(forkey key: key) -> Int {
        return abs(key.hashValue) % buckets.count
    }
    
    public subscript(key: key) -> Value? {
        get { return value(forkey : key) }
        set { if let value = newValue {
            updateValue(value, forkey: key)
        } else {
            removeValue(forkey: key)
            }
        }
    }
    
    
    
    // 1. convert the key into an array of index
    // 2. find the bucket
    // 3. loop through that bucket's chain and perform the desired operation
    public func value(forkey key: key) -> Value? {
        let index = self.index(forkey: key)
        for element in buckets[index] {
            if element.key == key {
                return element.value
            }
        }
        return nil // key not in hash table
    }
    
    public mutating func updateValue (_ value: Value , forkey key: key) -> Value? {
        let index = self.index(forkey: key)
        
        // Do we Already have this Key in the bucket?
        
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                let oldValue = element.value
                buckets[index][i].value = value
                return oldValue
            }
        }
        
            // this key isn't in the bucket yet; add it to the chain
        
        buckets[index].append((key: key, value: value))
        count += 1
        return nil
            
        }
        
    public mutating func removeValue (forkey key: key) -> Value? {
        let index = self.index(forkey: key)
        
        // find the element in the buckets chain and remove it.
        
        for (i, element) in buckets[index].enumerated() {
            if element.key == key {
                buckets[index].remove(at: i)
                count -= 1
                return element.value
            }
        }
        
        return nil // key not in hash table
        
            }
    
    
    
}




var hashTable = HashTable<String, String>(capacity: 5)


// insert
hashTable["firstName"] = "Steve"
// look up
let x = hashTable["firstName"]
// update
hashTable["firstName"] = "Tim"

// remove
hashTable["firstName"] = nil







