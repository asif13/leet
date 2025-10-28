//
//  Leet_array.swift
//  Leetcode
//
//  Created by Asif on 04/05/25.
//
//https://leetcode.com/problem-list/2145232c/
class Leet_easy {
    
    //https://leetcode.com/problems/two-sum/
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map = [Int: Int]()
        for index in 0 ..< nums.count {
            map[nums[index]] = index
        }
        
        for i in 0 ..< nums.count {
            let difference = target - nums[i]
            if let j = map[difference], j != i {
                return [i, j]
            }
        }
        
        return []
    }
    
    //https://leetcode.com/problems/merge-sorted-array/?envType=problem-list-v2&envId=2145232c
    /**
     
        nums1 = [1,2,3,0,0,0], m = 3, nums2 = [2,5,6], n = 3
     */
    func mergeSortedArray(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        var num1Pointer = m - 1
        var num2Pointer = n - 1
        var nums1LastPointer = nums1.count - 1
        print("nums \(nums1LastPointer) :: \(nums1) ")
        while (num1Pointer > 0 && num2Pointer > 0) {
            if nums1[num1Pointer] > nums2[num2Pointer] {
                nums1[nums1LastPointer] = nums1[num1Pointer]
                nums1LastPointer -= 1
                num1Pointer -= 1
            } else {
                nums1[nums1LastPointer] = nums2[num2Pointer]
                nums1LastPointer -= 1
                num2Pointer -= 1
            }
            print("nums \(nums1LastPointer) :: \(nums1) ")
        }
        
        while (num1Pointer > 0) {
            nums1[nums1LastPointer] = nums1[num1Pointer]
            nums1LastPointer -= 1
            num1Pointer -= 1
        }
        
        while (num2Pointer >= 0) {
            nums1[nums1LastPointer] = nums2[num2Pointer]
            nums1LastPointer -= 1
            num2Pointer -= 1
        }
    }
    
    
    //https://leetcode.com/problems/best-time-to-buy-and-sell-stock
    //[7,1,5,3,6,4]
    func maxProfit(_ prices: [Int]) -> Int {
       
        var maxProfit = 0
        
        var buyP = 0
        var sellP = 1
        while (sellP < prices.count) {
            if prices[buyP] < prices[sellP] {
                let localProfit = prices[sellP] - prices[buyP]
                if localProfit > maxProfit {
                    maxProfit = localProfit
                }
                sellP += 1
            } else {
                buyP = sellP
                sellP += 1
            }
            
        }
                
        return maxProfit
    }
    
    
    //https://leetcode.com/problems/valid-parentheses
    //"((())))[]{}"
    func isValidParentheses(_ s: String) -> Bool {
        let map: [Character: Character] = [")":"(", "]" : "[", "}" : "{"]
        let stack = Stack<Character>()
        let str: [Character] = Array(s)
        
        for character in str {
            if map.values.contains(character)  {
                stack.push(character)
            } else if let closer = map[character], closer == stack.peek() {
                _ = stack.pop()
            } else {
                return false
            }
        }
        
        return stack.objects.isEmpty
    }
    
    class Stack<T> {
        
        var objects = [T]()
        
        func push(_ obj: T) {
            objects.append(obj)
        }
        
        func pop() -> T? {
            return objects.removeLast()
        }
        
        func peek() -> T? {
            return objects.last
        }
    }
    
    
    ///https://leetcode.com/problems/majority-element
    func majorityElement(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        for num in nums {
            map[num] = map[num, default: 0] + 1
        }
        
        var sort = map.sorted(by: { $0.value > $1.value})
        return sort.first?.value ?? 0
    }
    
    class ListNode {
        var val: Int
        var next: ListNode?
        init(val: Int, next: ListNode? = nil) {
            self.val = val
            self.next = next
        }
    }
    
    //https://leetcode.com/problems/intersection-of-two-linked-lists/?envType=problem-list-v2&envId=hash-table
    func getIntersectionNode(_ headA: ListNode?, _ headB: ListNode?) -> ListNode? {
        
        var map = [ListNode]()
        var headA = headA
        var headB = headB
        while(headA != nil ) {
            if let headA = headA {
                map.append(headA)
            }
            headA = headA?.next
        }
        
        while (headB != nil) {
            if let headB = headB, map.contains(where: {$0 === headB}) {
                return headB
            }
            headB = headB?.next
        }
        return nil
    }
    
    //https://leetcode.com/problems/valid-word-abbreviation/?envType=problem-list-v2&envId=2145232c
    func validWordAbbreviation(_ word: String, _ abbr: String) -> Bool {
        
        var word: [Character] = Array(word)
        var abbr: [Character] = Array(abbr)
        
        var i = 0
        var j = 0
        
        while (i < word.count && j < abbr.count) {
            if word[i] == abbr[j] && word[i].isLetter {
                i += 1
                j += 1
            } else if abbr[j] == "0" || abbr[j].isNumber == false {
                return false
            } else {
                var sublen = 0
                while (j < abbr.count && abbr[j].isNumber) {
                    sublen = (sublen * 10) + (Int("\(abbr[j])") ?? 0)
                    j += 1
                }
                i += sublen
            }
        }
        
        return i == word.count && j == abbr.count
    }
    
    //https://leetcode.com/problems/longest-common-prefix/description/
    func longestCommonPrefix(_ strs: [String]) -> String {
        guard let firstStr = strs.first else {
            return ""
        }
        
        var first: [Character] = Array(firstStr)
        var res = ""
        for index in 0..<first.count {
            for str in strs {
                let str: [Character] = Array(str)
                if index == str.count || str[index] != first[index] {
                        return res
                }
            }
            res += "\(first[index])"
        }
        
        return res
    }
    
    
    func findMissingAndRepeatedValues(_ grid: [[Int]]) -> [Int] {
        var map = [Int: Int]()
        for i in 0 ..< grid.count {
            for j in 0 ..< grid.count {
                print(" \(i): \(j) :: \(grid[i][j])")
                map[grid[i][j], default: 0] += 1
            }
        }
        
        var duplicate = 0
        var missing = 0
        print("map -- \(map)")
        for num in 1 ... grid.count * grid.count {
            print("num -- \(num)")
            if map[num] == 0 || map[num] == nil {
                missing = num
            }
            
            if map[num] == 2 {
                duplicate = num
            }
        }
        return [duplicate, missing]
    }
    
    
    ///https://leetcode.com/problems/group-anagrams/
    ///
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        // build a frequency
        let aChar: Character = "a"
        var map = [[UInt]: [String]]()
        
        for str in strs {
            var alphabets = Array(repeating: UInt(0), count: 26)
            var str = str.lowercased()
            for char in str {
                let index = char.asciiValue! - aChar.asciiValue!
                alphabets[Int(index)] += 1
            }
            print("str \(str) \(alphabets)")
            map[alphabets] = (map[alphabets] ?? []) + [str]
        }
        
        var arraytoReturn = [[String]]()
        
        for values in map.values {
            arraytoReturn.append(values)
        }
        return arraytoReturn
        
    }
}
