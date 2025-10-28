//
//  Swift-Fundementals.swift
//  Leetcode
//
//  Created by Asif on 26/04/25.
//


//Test Protocol associated type

protocol StackP {
    associatedtype T
    func push(obj: T)
    func pop() -> T
}

class StackInt: StackP {
    typealias T = Int

    func push(obj: Int) {
        
    }
    
    func pop() -> Int {
        return 0
    }
    
}


func concurrency() {
    DispatchQueue.main.sync {
        print("Hello main thread \(Thread.isMainThread)")
    }
}


class Test {
    unowned var opt: OptionalTest?
}

class OptionalTest {
    
}


func testReduce() {
    
    let numbers = [0,1,3,5,6,7]
    let total = numbers.reduce(0) { partialResult, num in
        return partialResult + num
    }
    
    print(total)
}
