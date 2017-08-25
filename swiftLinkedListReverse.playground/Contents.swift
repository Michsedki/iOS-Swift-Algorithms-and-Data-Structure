//: Playground - noun: a place where people can play

import UIKit

// Define a data structure that supports this list
class Node {
    let value: Int
    var next: Node?
    init(value: Int, next: Node?) {
        self.value = value
        self.next = next
    }
    
}

let sixNode = Node(value: 6, next: nil)
let fiveNode = Node(value: 5, next: sixNode)
let fourNode = Node(value: 4, next: fiveNode)
let threeNode = Node(value: 3, next: fourNode)
let twoNode = Node(value: 2, next: threeNode)
let oneNode = Node(value: 1, next: twoNode)

func printList(head: Node?) {
    print("Printing out list of nodes")
    var currentNode = head
    
    while (currentNode != nil) {
        
        print(currentNode?.value ?? -1)
        currentNode = currentNode?.next
    }

    
}

printList(head: oneNode)

func reverseList(head: Node?) -> Node? {
    var currentNode = head
    var prev: Node?
    var next: Node?
    
    while currentNode != nil {
        next = currentNode?.next
        currentNode?.next = prev
        
        print("Prev: \(prev?.value ?? -1 ), Curr:\(currentNode?.value ?? -1), Next:\(next?.value ?? -1 ) ")
        prev = currentNode
        currentNode = next
    }
    
    
    return prev
}

//let myReversedList = reverseList(head: oneNode)
//
//printList(head: myReversedList)



// needs to print out 3,2,1



// swap every two nodes 

func swapEveryCoupleNodes(head: Node?) -> Node? {
    var currentNode = head
    var nextNode : Node?
    var prevNode : Node?
    var newHead : Node?
    if currentNode?.next != nil {
        print("Why")
        newHead = currentNode?.next
    } else {
        
        print("Why why")
        newHead = currentNode
    }
    
    
    
//    var prevNode : Node?
    while currentNode?.next != nil {
        nextNode = currentNode?.next
       currentNode?.next = nextNode?.next
        nextNode?.next = currentNode
        if prevNode != nil {
            prevNode?.next = nextNode
        } else {
        prevNode = currentNode
        }
        prevNode = currentNode
        currentNode = currentNode?.next
        
        
    }
    
    
    
    
    return newHead
    
}

let swapCoupleNodes = swapEveryCoupleNodes( head: oneNode)
printList(head: swapCoupleNodes)












