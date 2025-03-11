import UIKit

var greeting = "Hello, playground"

/**
 
 //217. Contains Duplicate
 //https://leetcode.com/problems/contains-duplicate/
 
 Given an integer array nums, return true if any value appears at least twice in the array, and return false if every element is distinct.
 
 */


class ContainsDuplicate {
    func test() {
        let nums = [1,2,3,4,5]
        containsDuplicate(nums)
    }
    /**
     
        Space - O(n)
        Time - O(n)
     */
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hash = [Int: Bool]()
        for num in nums {
            if hash[num] == true {
                return false
            } else {
                hash[num] = true
            }
        }
        return true
    }
}

let containsDuplicate = ContainsDuplicate()
containsDuplicate.test()
