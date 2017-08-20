//: Playground - noun: a place where people can play

import UIKit



class Node<T> {
    let value: T
    var next: Node?
    init(value: T) {
        self.value = value
        
    }
}

class Stack<T> {
    
    var top : Node<T>?
    
    func push(_ value : T) {
        let oldTop = top
        top = Node(value: value)
        top?.next = oldTop
    
    }
    
    func pop () -> T? {
        let currentTop = top
        top = top?.next
        
        return currentTop?.value
    }
    
    
    func peak() -> T? {
        return top?.value
    }
    
    
    
}


struct User {
    let name: String
    let userName: String
}

let me = User(name: "Michael", userName: "Sedki")
let you = User(name: "Peter", userName: "Matta")

let usersStack = Stack<User>()
usersStack.push(me)
usersStack.push(you)

let firstUser = usersStack.pop()
let secondUser = usersStack.pop()



let stack = Stack<Int>()
stack.push(1)
stack.push(2)
stack.push(3)


stack.peak()
let firstPop = stack.pop() // Should return 3
stack.peak()
let secondPop = stack.pop()






