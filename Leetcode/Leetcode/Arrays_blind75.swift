//
//  Arrays_blind75.swift
//  Leetcode
//
//  Created by Asif on 08/04/25.
//

class NeetArray {
    //https://leetcode.com/problems/two-sum/
    /**
     7
                [2,3,4,6]
     */
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var indices = [Int: Int]()
        for (i, n) in nums.enumerated() {
            indices[n] = i
        }
        
        for (i, n) in nums.enumerated() {
            let diff = target - n
            if let j = indices[diff], j != i {
                return [i,j]
            }
        }
        return []
    }
    
    
    //https://leetcode.com/problems/contains-duplicate/
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var hash = [Int: Bool]()
        for num in nums {
            if hash[num] == true {
                return true
            } else {
                hash[num] = true
            }
        }
        return false
    }
    
    
    //https://leetcode.com/problems/valid-anagram/description/
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sCount = [Character: Int]()
        for char in s {
            if let count = sCount[char] {
                sCount[char]! += 1
            } else {
                sCount[char] = 1
            }
        }
        
        for char in t {
            if let count = sCount[char] {
                sCount[char]! -= 1
                if sCount[char]! < 0 {
                    return false
                }
            } else {
                return false
            }
        }
        return true
        
    }

    func isAnagram2(_ s: String, _ t: String) -> Bool {
        guard s.count == t.count else {
            return false
        }
        
        var sCount = [Character: Int]()
        var tCount = [Character: Int]()
        var sArray = Array(s)
        var tArray = Array(t)
        for index in 0..<s.count {
            sCount[sArray[index], default: 0]  += 1
            tCount[tArray[index], default: 0]  += 1
        }
        
      
        return sCount == tCount
        
    }
    
    
    //https://neetcode.io/problems/buy-and-sell-crypto
    //https://leetcode.com/problems/best-time-to-buy-and-sell-stock/description/
    // 3,4,5,1,2,9,5
    
    func maxProfit(_ prices: [Int]) -> Int {
        var left = 0
        var right = 1
        var maxProfit = 0
        while (right < prices.count) {
            if prices[left] < prices[right] {
                let localProfit = prices[right] - prices[left]
                if localProfit > maxProfit {
                    maxProfit = localProfit
                }
                right += 1
            } else {
                left = right
                right += 1
            }
        }
        return maxProfit
    }
    
    
    
}


class Blind75 {
    // https://leetcode.com/problems/top-k-frequent-elements/
//    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
//        
//    }
    
    
    //https://leetcode.com/problems/two-sum/
    /**
     
     1. since we want to return indexes it will be better to create a map of value and index
     2. Iterate over all the elements, calculate the difference and check if this is equal to target
     3. if found then we can return the indexes

     */
    
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var count = [Int: Int]()
        for index in 0..<nums.count {
            count[nums[index]] = index
        }
        
        for index in 0..<nums.count {
            let difference = target - nums[index]
            if let j = count[index], j != index {
                return [j, index]
            }
        }
        
        return []
    }
    
    // https://leetcode.com/problems/contains-duplicate/description/
    /**
        1. Iterate through num, add num to a map if its not present, return
     
     */
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var map = [Int: Bool]()
        for num in nums {
            if map[num] == true {
                return true
            } else {
                map[num] = true
            }
        }
        return false
    }
    
    /**
     https://leetcode.com/problems/valid-anagram/
        Here we will create a map of character and it's count, if both are same then its a valid anagram
     
     
     */
    
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var sCount = [Character: Int]()
        var tCount = [Character: Int]()
        for char in Array(s) {
            sCount[char, default: 0] += 1
        }
        
        for char in Array(t) {
            tCount[char, default: 0] += 1
        }
        
        return sCount == tCount
    }
    
    /**
     https://leetcode.com/problems/group-anagrams/
     
     1. anagrams are words with same characters
     2. To uniquely idenitfy a word which can be compared easily, we will create a array of mapped out character ascii
     3. get asciee of lower case, then subtract the ascii of each character in lower case, so that we can idenitfy it in array of 26
     4 add map : key will be above array and value will be the array words that match it
     
     */
    
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        let a = Character("a").asciiValue ?? 0
        var map = [[UInt8]: [String]]()
        for str in strs {
            var array = Array(repeating: UInt8(0), count: 26)
            for char in str.lowercased() {
                let index = char.asciiValue! - a
                array[Int(index)] += 1
            }
            map[array, default: []].append(str)
        }
        
        return Array(map.values)
    }
    
    
    /*
     https://leetcode.com/problems/valid-palindrome/description/
     so the problems asks us to remove any non alpha numeric, for this we will use a regex and replace occurence of
     [^a-zA-Z0-9]+
     We will start with a pointer in left
     
     */
    func isPalindrome(_ s: String) -> Bool {
        
    }

}
