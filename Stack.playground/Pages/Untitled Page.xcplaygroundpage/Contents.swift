import UIKit

var greeting = "Hello, playground"


/**
 
 https://leetcode.com/problems/min-stack/
 */

class MinStack {
    
    var objects = [(Int, Int)]()

    init() {
        
    }
    
    func push(_ val: Int) {
        let min = getMin()
        if val < min {
            objects.append((val, val))
        } else {
            objects.append((val, min))
        }
    }
    
    func pop() {
        objects.removeLast()
    }
    
    func top() -> Int {
        objects.last!.0
    }
    
    func getMin() -> Int {
        objects.last?.1 ?? Int.max
    }
}

/**
 
 20. Valid Parentheses
 */


class ValidParenthesis {
    func isValid(_ s: String) -> Bool {
        
        var stack = Stack<Character>()
        var mapping: [Character: Character] = [")":"(", "]": "[", "}":"{"]
        for char in s {
            if mapping.keys.contains(char) {
                let correspondingBracket = mapping[char]
                if stack.peek() == correspondingBracket {
                    stack.pop()
                } else {
                    return false
                }
            } else {
                stack.push(object: char)
            }
        }
        return stack.objects.isEmpty
    }
    
    
    class Stack <T> {
        
        var objects = [T]()
        
        func push(object: T) {
            objects.append(object)
        }
        
        func pop() -> T {
            return objects.removeLast()
        }
        
        func peek() -> T? {
            return objects.last
        }
    }
}

print(ValidParenthesis().isValid("(())"))
