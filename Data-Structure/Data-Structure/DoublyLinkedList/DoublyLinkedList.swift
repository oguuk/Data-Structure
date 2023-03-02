//
//  DoubleLinkedList.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/03/02.
//

import Foundation

struct DoublyLinkedList<T: Comparable> {
    
    private var head: DoublyNode<T>?
    private var tail: DoublyNode<T>?
    
    var front: DoublyNode<T>? {
        return head
    }
    
    var back: DoublyNode<T>? {
        return tail
    }
    
    var isEmpty: Bool {
        return head == nil ? true : false
    }
    
    var count: Int {
        var currentNode = head
        var count = 0
        
        while currentNode != nil {
            currentNode = currentNode?.next
            count += 1
        }
        
        return count
    }
    
    func showList() {
        var currentNode = head
        print("===== Linked List ======")
        while currentNode != nil {
            currentNode?.next == nil
            ? print("id : \(currentNode?.id) / value: \(currentNode!.data)")
            : print("id : \(currentNode?.id) / value: \(currentNode!.data) -> ")
            currentNode = currentNode?.next
        }
        print("========================")
    }
    
    func search(data element: T) -> DoublyNode<T>? {
        var currentNode = head
        
        while element != currentNode?.data {
            currentNode = currentNode?.next
        }
        
        return currentNode
    }
    
    mutating func add(doublyNode node: DoublyNode<T>) {
        guard let tail = tail, let _ = head else {
            head = node
            tail = node
            return
        }
        tail.next = node
        node.prev = tail
        self.tail = node
    }
    
    mutating func insertAt(doublyNode node: DoublyNode<T>, id: Int, atPrev: Bool) -> Bool {
        guard let tail = tail, let head = head else {
            head = node
            tail = node
            return true
        }
        
        var currentNode = atPrev ? tail : head
        
        while true {
            if currentNode.id == id {
                if atPrev {
                    node.next = currentNode
                    node.prev = currentNode.prev
                    currentNode.prev = node
                    node.prev?.next = node
                    
                    if currentNode === self.head {
                        self.head = node
                    }
                } else {
                    node.prev = currentNode
                    node.next = currentNode.next
                    currentNode.next = node
                    node.next?.prev = node
                    
                    if currentNode === self.tail {
                        self.tail = node
                    }
                }
                return true
            }
            
            if atPrev {
                if let prev = currentNode.prev { currentNode = prev }
                else { break }
            } else {
                if let next = currentNode.next { currentNode = next }
                else { break }
            }
        }
        
        return false
    }
    
    mutating func delete(with id: Int) -> Bool {
        guard let head = head else { return false }
        
        var currentNode = head
        
        while true {
            if currentNode.id == id { break }
            if let next = currentNode.next { currentNode = next }
            else { break }
        }
        
        if currentNode.id == id {
            currentNode.next?.prev = currentNode.prev
            currentNode.prev?.next = currentNode.next
            
            if currentNode === head {
                self.head = currentNode.next
            } else if currentNode === tail {
                tail = currentNode.prev
            }
            
            return true
        }
        
        return false
    }
    
    mutating func clear() {
        var currentNode = head
        
        while currentNode != nil {
            let node = currentNode?.next
            node?.next = nil
            node?.prev = nil
            currentNode = node
        }
        head = nil
        tail = nil
    }
    
    
}
