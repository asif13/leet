//
//  Sorting.swift
//  Leetcode
//
//  Created by Asif on 27/07/25.
//

//https://neetcode.io/courses/dsa-for-beginners/10
//Insertion Sort
//2,4, 3,1
// Time complexity - O(n^2)
// space complexit - O(1)
func insertionSort(arr: inout [Int]) {
    /*
    for index in 1 ..< arr.count {
        var j = index - 1
        while (j >= 0 && arr[j] > arr[j + 1]) {
            let temp = arr[j + 1]
            arr[j + 1] = arr[j]
            arr[j] = temp
            j -= 1
        }
    }*/
    
    
    for index in 1..<arr.count {
        var j = index - 1
        while (j >= 0 && arr[j] < arr[j + 1]) {
            var temp = arr[j + 1]
            arr[j + 1] = arr[j]
            arr[j] = temp
            j -= 1
        }
    }
}

/**
 
 scan the elements and know hrange of elements you need, pass the maximum range
create a count of legth of distinc element
 then update the index
 [0,1,2,2,3]
 [1, 1, 2, 3]
 */
func bucketSort(arr: inout [Int], maximumRange : Int) {
    var count = Array(repeating: 0, count: maximumRange)
    
    for index in 0..<arr.count {
        count[arr[index]] += 1
    }
    var i = 0
    for index in 0..<count.count {
        for j in 0 ..< count[index] {
            arr[i] = index
            i += 1
        }
    }
    
}
