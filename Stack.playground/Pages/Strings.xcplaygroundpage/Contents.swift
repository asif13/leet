
import Foundation

var greeting = "Hello, playground"

func reverseString2(strs: String) {
  
    var str = Array(strs)
    var left = 0
    var right = str.count - 1
    
    while (left < right) {
        let temp = str[left]
        str[left] = str[right]
        str[right] = str[left]
    }
    print(str)
}

reverseString2(strs: "hellow")


func reverseString(str: String) {
    var str2 = ""
    for char in str {
        str2 = "\(char)" + str2
    }
    print(str2)
}


