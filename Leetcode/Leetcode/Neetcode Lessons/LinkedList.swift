//
//  LinkedList.swift
//  Leetcode
//
//  Created by Asif on 22/07/25.
//

//MARK: https://leetcode.com/problems/reverse-linked-list/

class ListNode {
    public var val: Int
    public var next: ListNode?
    public init() { self.val = 0; self.next = nil; }
    public init(_ val: Int) { self.val = val; self.next = nil; }
    public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
}



///
///
class ListNode1<T> {
    public var val: T
    public var next: ListNode1?
    init(val: T, next: ListNode1? = nil) {
        self.val = val
        self.next = next
    }
    
}
/**
a {1, b }
b {2, c } head
c {3, nil }
 */
func reverseList(_ head: ListNode?) -> ListNode? {
    var prev: ListNode? = nil
    var current = head
    while (current?.next != nil ) {
        var next = current?.next
        current?.next = prev
        prev = current
        current = next
    }
    return current
}

//MARK: https://leetcode.com/problems/merge-two-sorted-lists/

func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
    var list1 = list1
    var list2 = list2
    var head: ListNode?
    var curr: ListNode?
    head?.next = curr

    while (list1 != nil && list2 != nil) {
        if list1!.val < list2!.val {
            curr?.next = list1
            curr = curr?.next
            list1 = list1?.next
        } else {
            curr?.next = list2
            curr = curr?.next
            list2 = list2?.next
        }
    }
    
    while (list1 != nil) {
        curr?.next = list1
        curr = curr?.next
        list1 = list1?.next
    }
    
    while (list2 != nil) {
        curr?.next = list2
        curr = curr?.next
        list2 = list2?.next
    }
    
    return head?.next
}
