//
//  Search.swift
//  Leetcode
//
//  Created by Asif DE on 23/10/25.
//

func search(_ nums: [Int], _ target: Int) -> Int {
    var left = 0
    var right = nums.count - 1
    while (left < right) {
        var mid = (left + right) / 2
        if nums[mid] == target {
            return mid
        } else if target < nums[mid] {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    return -1
}
/**
 
 1, 2, 3,
 4, 5, 6,
 7, 8, 9
 
 
 */

func searchMatrix(_ matrix: [[Int]], _ target: Int) -> Bool {
    let ROWS = matrix.count
    let COLLUMNS = matrix[0].count
    
    var top = 0
    var bottom = ROWS - 1
    
    while (top > bottom) {
        var mid = (top + bottom) / 2
        if target == matrix[mid][COLLUMNS - 1] {
            return true
        } else if target < matrix[mid][COLLUMNS - 1] {
            bottom = mid - 1
        } else {
            top = mid + 1
        }
    }
    
    let row = (top + bottom ) / 2
    
    var left = 0
    var right = COLLUMNS - 1
    
    while (left < right ) {
        var mid = ( left + right ) / 2
        if target == matrix[row][mid] {
            return true
        } else if target < matrix[row][mid] {
            right = mid - 1
        } else {
            left = mid + 1
        }
    }
    
    
    
    return false
}
