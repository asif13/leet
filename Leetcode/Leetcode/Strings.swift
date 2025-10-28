//
//  Strings.swift
//  Leetcode
//
//  Created by Asif on 07/04/25.
//

class StringsLeet {
    
    func reverseString2(strs: String) {
      
        var str = Array(strs)
        var left = 0
        var right = str.count - 1
        
        while (left < right) {
            let temp = str[left]
            str[left] = str[right]
            str[right] = temp
            left += 1
            right -= 1
        }
        print(str)
    }

    func reverseString(str: String) {
        var str2 = ""
        for char in str {
            str2 = "\(char)" + str2
        }
        print(str2)
    }
    
    func isPalindrome(_ s: String) -> Bool {
        var start = s.startIndex
        var end = s.index(s.endIndex, offsetBy: -1)
        print(s[start])
        print(s[end])
        
        while (start < end) {
            if s[start]  != s[end] {
                return false
            }
            start = s.index(start, offsetBy: 1)
            end = s.index(end, offsetBy: -1)
        }
        return true
    }
  
    
    //https://leetcode.com/problems/permutation-in-string/
    /**
                        ab   ----    gfbap
            
     
     */
    func checkInclusion(_ s1: String, _ s2: String) -> Bool {
        
        var frequencyArrayS1 = Array(repeating: 0, count: 26)
        
        return false
    }
    
    
    
    
    
    //

}
