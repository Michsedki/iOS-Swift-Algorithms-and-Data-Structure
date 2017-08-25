//: Playground - noun: a place where people can play

import UIKit

// Binary Tree

//           10
//          /  \
//         5   14
//        /    / \
//       1    11  20




class Node {
    var value: Int
    var leftChild: Node?
    var rightChild: Node?
    init(value: Int, leftChild: Node?, rightChild: Node?) {
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    }

    // left branch
    let oneNode = Node(value: 1, leftChild: nil, rightChild: nil)
    let fiveNode = Node(value: 5, leftChild: oneNode, rightChild: nil)
    
    // right brnch
    let twentyNode = Node(value: 20, leftChild: nil, rightChild: nil)
    let elevenNode = Node(value: 11, leftChild: nil, rightChild: nil)
    let fourteen = Node(value: 14, leftChild: elevenNode, rightChild: twentyNode)

    // root Node
    let roottenNode = Node(value: 10, leftChild: fiveNode, rightChild: fourteen)
    
    
 
    // implement search function
func search(node: Node?, searchValue: Int) -> Bool {
    if node == nil {
        return false
    }
    
    if node?.value == searchValue {
        return true
        
    } else {
        
        
        // recursion 
        // return search(node: node?.leftChild, searchValue: searchValue) ||search(node: node?.rightChild, searchValue: searchValue)
        
        
        
        // givin the tree stuctured like all leftChild
        
        if searchValue < node!.value   {
            return search(node: node?.leftChild, searchValue: searchValue)
        } else {
            return search(node: node?.rightChild, searchValue: searchValue)
        }
        
        
    }
    
    
  
}


let searchValue = 20

search(node: roottenNode, searchValue: searchValue)


// in array
let list = [1, 5, 10, 11, 14, 20]
let index = list.index(where: { $0 == searchValue })

    

