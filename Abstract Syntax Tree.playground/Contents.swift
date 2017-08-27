//: Playground - noun: a place where people can play

import UIKit

// Example:
// 4 + 24 * 7
4 + 24 * 7


//represent the equation above in a tree
//              '+'
//             /   \
//           '*'    4
//           / \
//          7  24

class Node {
    var operation: String?
    var value: Float?
    var leftChild: Node?
    var rightChild: Node?
    init(operation: String?, value: Float?, leftChild: Node?, rightChild: Node?){
        self.operation = operation
        self.value = value
        self.leftChild = leftChild
        self.rightChild = rightChild
        
    }
    
    
}

// nodes
let sevenNode = Node(operation: nil, value: 7, leftChild: nil, rightChild: nil)
let twentyFourNode = Node(operation: nil, value: 24, leftChild: nil, rightChild: nil)
let fourNode = Node(operation: nil, value: 4, leftChild: nil, rightChild: nil)
let multiNode = Node(operation: "*", value: nil, leftChild: sevenNode, rightChild: twentyFourNode)
let plusNode = Node(operation: "+", value: nil, leftChild: multiNode, rightChild: fourNode)




// Implement this algorithm,
func evaluate(node: Node) -> Float {
    if node.value != nil {
        return node.value!
    }
    
    
    if node.operation == "+" || node.operation == "-" || node.operation == "*" || node.operation == "/" {
        if node.leftChild == nil || node.rightChild == nil {
            print("Missing one of the Arrguements!")
            return 0
        }
    }
    
    if node.operation == "+" {
        
        
        return evaluate(node: node.leftChild!) + evaluate(node: node.rightChild!)
    } else if node.operation == "*" {
        return evaluate(node: node.leftChild!) * evaluate(node: node.rightChild!)
    } else if node.operation == "-" {
        return evaluate(node: node.leftChild!) - evaluate(node: node.rightChild!)
    } else if node.operation == "/" {
        if node.rightChild?.value! != 0 {
        return evaluate(node: node.leftChild!) / evaluate(node: node.rightChild!)
        } else {
            // handel the dividing by zero case
            print("Can't Divid by Zero!!")}
        
        
    }
    
    return 0
    
}

evaluate(node: plusNode)







