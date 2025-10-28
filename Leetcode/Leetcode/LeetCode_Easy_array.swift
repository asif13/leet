//
//  LeetCode_Easy_array.swift
//  Leetcode
//
//  Created by Asif on 13/04/25.
//

class LeetCodeEasy {
    //https://leetcode.com/problems/most-common-word/solutions/
    func mostCommonWord(_ paragraph: String, _ banned: [String]) -> String {
        let words = paragraph.lowercased().split(whereSeparator: {!$0.isLetter}).compactMap { sub in
            return String(sub)
        }
        var hashMap = [String: Int]()
        for word in words {
            hashMap[word] = (hashMap[word] ?? 0) + 1
        }
        
        let hashSort = hashMap.sorted { $0.value > $1.value}
        let filter = hashSort.filter{ !banned.contains([$0.key])}
        return filter.first?.key ?? ""
    }
    
    //https://leetcode.com/problems/majority-element/
    
    func majorityElement(_ nums: [Int]) -> Int {
        var map = [Int: Int]()
        for num in nums {
            map[num, default: 0] += 1
        }
        print(map)
        let map2 = map.sorted(by: { map1, map2 in
            return map1.value > map2.value
        })

        return map2.first?.key ?? -1
    }
    
    func reverseString(_ s: inout [Character]) {
        var left = 0
        var right = s.count - 1
        
        while (left < right) {
            let temp = s[left]
            s[left] = s[right]
            s[right] = temp
            left += 1
            right -= 1
        }
    }
    
    func mergeAlternately(_ word1: String, _ word2: String) -> String {
        let word1: [Character] = Array(word1)
        let word2: [Character] = Array(word2)
        
        var newWord = ""
        var index = 0
        while (index < word1.count && index < word2.count) {
            newWord = newWord + "\(word1[index])"
            newWord = newWord + "\(word2[index])"
            index += 1
        }
        
        while (index < word1.count) {
            newWord = newWord + "\(word1[index])"
            index += 1
        }
        
        while (index < word2.count) {
            newWord = newWord + "\(word2[index])"
            index += 1
        }
        
        return newWord
    }
    
    func lemonadeChange(_ bills: [Int]) -> Bool {
        var savings = 0
        for bill in bills {
            if bill == 5 {
                savings += bill
            } else {
                let toReturn = bill - 5
                if savings >= toReturn {
                    savings -= toReturn
                } else {
                    return false
                }
                savings += 5
            }
        }
        return true
    }
    
    
    //https://leetcode.com/problems/merge-intervals
    
    // [[1,3],[2,6],[8,10],[15,18]]
    func mergeIntervals(_ intervals: [[Int]]) -> [[Int]] {
        var nuvoIntervals = intervals
        var pointer = 0
        while ( pointer < nuvoIntervals.count - 1 ) {
            let first = nuvoIntervals[pointer]
            let second = nuvoIntervals[pointer + 1]
            if first[1] >= second[0] {
                nuvoIntervals[pointer] = [first[0], second[1]]
                nuvoIntervals.remove(at: pointer + 1)
            } else {
                pointer += 1
            }
        }
        return nuvoIntervals
    }
}
