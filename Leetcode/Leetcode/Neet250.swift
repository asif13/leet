//
//  Neet250.swift
//  Leetcode
//
//  Created by Asif on 25/04/25.
//


class Neet250 {
    //[[0,30],[5,10],[15,20]]
    func canAttendMeetings(_ intervals: [[Int]]) -> Bool {
        guard intervals.count > 1 else {
            return true
        }
        let sortedIntervals = intervals.sorted(by: { $0[0] < $1[1]})
        for index in 1 ..< sortedIntervals.count {
            if sortedIntervals[index - 1][1] > sortedIntervals[index][0] {
                return false
            }
        }
        return true
    }
    
    // ["2","1","+","3","*"]
    func evalRPN(_ tokens: [String]) -> Int {
        let stack = Stack<String>()
        for token in tokens {
            switch token {
            case "+":
                let result = Int(stack.pop()!)! + Int(stack.pop()!)!
                stack.push(obj: "\(result)")
            case "-":
                let result = Int(stack.pop()!)! - Int(stack.pop()!)!
                stack.push(obj: "\(result)")
            case "*":
                let result = Int(stack.pop()!)! * Int(stack.pop()!)!
                stack.push(obj: "\(result)")
            case "/":
                let first = Int(stack.pop()!)!
                let second = Int(stack.pop()!)!
                let result =  first / second
                print("\(first) / \(second) : \(result) ")
                stack.push(obj: "\(result)")
            default:
                stack.push(obj: token)
            }
            print("peek \(stack.peek())")
        }
        
        
        return Int(stack.peek()!)!
    }
}

//LIFO
class Stack<T> {
     var objects = [T]()
    
    func push(obj: T) {
        objects.append(obj)
    }
    
    func pop() -> T? {
        objects.removeLast()
    }
    
    func peek() -> T? {
        objects.last
    }
}

class Node<T> {
    var val: T?
    var next: Node?
}



