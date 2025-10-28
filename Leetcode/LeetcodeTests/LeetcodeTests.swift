//
//  LeetcodeTests.swift
//  LeetcodeTests
//
//  Created by Asif on 07/04/25.
//

import XCTest
@testable import Leetcode

final class LeetcodeTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        // Any test you write for XCTest can be annotated as throws and async.
        // Mark your test throws to produce an unexpected failure when your test encounters an uncaught error.
        // Mark your test async to allow awaiting for asynchronous code to complete. Check the results with assertions afterwards.
    }

    func testStrings() {
        let sut = StringsLeet()
        sut.reverseString2(strs: "abcbcba")
    }

    
    func testPalindrom() {
        let sut = StringsLeet()
        print("is palindrom \(sut.isPalindrome("abcbcba"))")
        
    }
    
    func testMaxProfitStock() {
        let sut = NeetArray()
//        print(sut.maxProfit([7,1,5,3,6,4]))
        print(sut.maxProfit([1,2,4,2,5,7,2,4,9,0,9]))
    }
    
    func testMostCommonWord() {
        let sut = LeetCodeEasy()
        print(sut.mostCommonWord("Bob hit a ball, the hit BALL flew far after it was hit.", ["hit"]))
    }
    
    func testMajorityElement() {
        let sut = LeetCodeEasy()
//        print(sut.majorityElement([1,2,3,4,2,5,2]))
        
        var chara: [Character] = Array("hello")
        sut.reverseString(&chara)
        print(chara)
        let pattern = "[^A-Za-z0-9]+"
      let result = "hello 123 ".replacingOccurrences(of: pattern, with: "", options: [.regularExpression]).lowercased()
        print(result)
    }
    
    func testIntervals() {
        let sut = Neet250()
        let result = sut.canAttendMeetings([[0,30],[5,10],[15,20]])
        print("result \(result)")
                
    }
    
    func testNeet250() {
//        let sut = Neet250()
//        print(sut.evalRPN(["4","13","5","/","+"]))
//
//        concurrency()
        
//        let result = LeetCodeEasy().lemonadeChange([5,5,5,10,20])
//        print(result)
        
//        let result = LeetCodeEasy().mergeIntervals([[1,3],[2,6],[8,10],[15,18]])
//        print(result)
        
//        var nums1 = [0]
//        Leet_easy().mergeSortedArray(&nums1, 0, [1], 1)
//        print(nums1)
        
        
//        let result = Leet_easy().validWordAbbreviation("internationalization", "i12iz4n")
//        let result = Leet_easy().validWordAbbreviation("apple", "a2e")
//        print(result)
        
//        
//        let result = Leet_easy().findMissingAndRepeatedValues([[1,3],[2,2]])
//        print(result)
        
//        let result = Leet_easy().groupAnagrams(["eat","tea","tan","ate","nat","bat"])
//        print(result)
//        
        
//        let num1 = "-2"
//        let num2 = "2"
//        print(Int(num2)! + Int(num1)!)
//        
        testReduce()
    }
    
    
    func testInsertionSort() {
        var arr = [1,3,2,4,7,5]
        insertionSort(arr: &arr)
        XCTAssert(arr == [1,2,3,4,5,7])
    }
    
    
    func testSearchMatrix() {
        let matrix = [[1,3,5,7],[10,11,16,20],[23,30,34,60]]
        let search = searchMatrix(matrix, 3)
        print(search)
    }
    
    func testBucketSort() {
        var arr: [Int] = [0,2,1]
        bucketSort(arr: &arr, maximumRange: 3)
        print(arr)
    }
    
    func testBlind75() {
        let blind = Blind75()
        print(blind.containsDuplicate([1,2,3,4]))       
    }
}
