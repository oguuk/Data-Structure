//
//  LinkedList.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/26.
//

import Foundation

struct LinkedList<T: Comparable> {
    
    private var head: Node<T>?
    
    var count: Int {
        var node = head
        var count = node != nil ? 1 : 0
        while node?.next != nil {
            count += 1
            node = node?.next
        }
        
        return count
    }
    
    var isEmpty: Bool {
        return head == nil ? true : false
    }
    
    func showList() {
        var now = head
        print("===== Linked List ======")
        while now != nil {
            now?.next == nil
            ? print("value: \(now!.value)")
            : print("value: \(now!.value) -> ")
            now = now?.next
        }
        print("========================")
    }
    
    func search(data element: T) -> Node<T>? {
        var node = head
        var target: Node<T>?
        
        while node != nil {
            if node?.value == element {
                target = node
                break
            }
            node = node?.next
        }
        
        return target
    }
    
    mutating func insert(node element: Node<T>) {
        var node = head
        
        if node == nil {
            head = element
            return
        }
        
        while true {
            if node === element { break } // 자기 자신 참조 방지
            if node?.next == nil {
                node?.next = element
                break
            }
            node = node?.next
        }
    }
    
    mutating func delete(node element: Node<T>) -> Bool {
        var node = head
        
        if node === element {
            head = node?.next
            return true
        }
        
        while node != nil {
            if node?.next === element {
                node?.next = nil
                node?.next = element.next
                
                return true
            }
            node = node?.next
        }
        
        return false
    }
    
    mutating func clear() {
        var node = head
        while node != nil {
            let temp = node?.next
            node?.next = nil
            node = temp
        }
        head = nil
    }
}
