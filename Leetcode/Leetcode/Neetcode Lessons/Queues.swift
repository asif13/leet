//
//  Queues.swift
//  Leetcode
//
//  Created by Asif on 27/07/25.
//
//https://neetcode.io/solutions/number-of-students-unable-to-eat-lunch
//https://leetcode.com/problems/number-of-students-unable-to-eat-lunch/
/*
 Given - number of sandwich is same as number of students
first we count the number of studenst total preference
 then we iterate through sandwich and see if that sandwich can be eaten, and sbustract corresponding student count
 the number of sandwich left will be same as number of students who are not able to eat
 **/
func countStudents(_ students: [Int], _ sandwiches: [Int]) -> Int {
        var count0 = 0
        var count1 = 0
        for stu in students {
            if stu == 0 {
                count0 += 1
            } else {
                count1 += 1
            }
        }

        for index in 0 ..< sandwiches.count {
            if sandwiches[index] == 0 && count0 > 0 {
                count0 -= 1
            } else if sandwiches[index] == 1 && count1 > 0 {
                count1 -= 1
            } else {
                return sandwiches.count - index
            }
        }
        return 0
    }
