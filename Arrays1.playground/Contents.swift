import Foundation

var greeting = "Hello, playground"

/***
 1929. Concatenation of Array
 */


class Concatenation {
    func getConcatenation(_ nums: [Int]) -> [Int] {
        var nums2 = Array(repeating: 0, count: 2*nums.count)
        let length = nums.count
        for index in 0..<nums.count {
            nums2[index] = nums[index]
            nums2[index + length] = nums[index]
        }
        return nums2
    }
}

print(Concatenation().getConcatenation([0,1,3]))


/***
 
 https://leetcode.com/problems/remove-element/description/
 
 
 0132234 - 2

 left <><><> right
 
 
 */


class RemoveElement2 {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }

       if nums.count == 1 {
            return nums[0] == val  ? 0 : 1
        }

        var reader = 0
        var writter = 0
        
        while(reader < nums.count) {
            if nums[reader] != val {
                nums[writter] = nums[reader]
                writter += 1
                reader += 1
            } else {
                reader += 1
            }
        }
        return writter
    }
}

var nums3 = [3,2,2,3]
print(RemoveElement2().removeElement(&nums3, 3))
print(nums3)

class RemoveElement {
    func removeElement(_ nums: inout [Int], _ val: Int) -> Int {
        guard nums.count > 0 else {
            return 0
        }
        
        if nums.count == 1 {
            return nums[0] == val  ? 0 : 1
        }
            
        
        var left = 0
        var right = nums.count - 1
        
        while(left < right) {
            if nums[left] == val {
                nums[left] = nums[right]
                right -= 1
            } else {
                left += 1
            }
        }
        return left + 1
    }
}
var nums2 = [3,2,2,3]
print(RemoveElement().removeElement(&nums2, 3))
print(nums2)

/**
 
 26. Remove Duplicates from Sorted Array
 https://leetcode.com/problems/remove-duplicates-from-sorted-array/description/
 
 
 00123
 011223
 */


class RemoveDuplicates {
    func removeDuplicates(_ nums: inout [Int]) -> Int {
        guard nums.count > 1 else {
            return nums.count
        }
        var first = 1
        var second = 1
        
        while(second < nums.count) {
            if nums[second - 1] == nums[second] {
                second = second + 1
            } else {
                nums[first] = nums[second]
                first = first + 1
                second += 1
            }
        }
        return first
    }
}
var nums = [0,1]
print(RemoveDuplicates().removeDuplicates(&nums))
print(nums)


/**
 
 https://leetcode.com/problems/valid-anagram/description/
 
 */

class ValidAnagram {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        var hash = [Character: Int]()
        for char in s {
            hash[char] = (hash[char] ?? 0) + 1
        }
        for char in t {
            if let count = hash[char] {
                if count > 1 {
                    hash[char] = hash[char]! - 1
                } else {
                    hash.removeValue(forKey: char)
                }
            }
        }
        return hash.isEmpty
    }
}

let validAnagram = ValidAnagram()
validAnagram.isAnagram("aacc", "ccac")


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
