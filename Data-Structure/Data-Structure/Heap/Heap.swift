//
//  Heap.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/22.
//

import Foundation

struct Heap<T: Comparable> {
    
    private var elements: [T] = []
    private let sortMethod: (T, T) -> Bool
    
    init(elements: [T] = [], sortMethod: @escaping (T, T) -> Bool) {
        self.sortMethod = sortMethod
        if !elements.isEmpty {
            self.elements = [elements.first!] + elements
            heapify()
        }
    }
    
    var isEmpty: Bool { // elements가 0번부터 시작하면 자식노드 index 찾을 때 번거로워짐
        return elements.count <= 1
    }
    
    var peek: T? {
        return isEmpty ? nil : elements[1]
    }
    
    var count: Int {
        return elements.count - 1
    }
    
    func leftChild(_ index: Int) -> Int {
        return index * 2
    }
    
    func rightChild(_ index: Int) -> Int {
        return index * 2 + 1
    }
    
    func parent(_ index: Int) -> Int {
        return index / 2
    }
    
    mutating func push(_ element: T) {
        if isEmpty { elements.append(element) }
        elements.append(element)
        if !elements.isEmpty {
            swimUp(from: elements.endIndex - 1) // - 1을 하는 이유는 0을 예외처리 하고 있으므로
        }
    }
    
    mutating func pop() -> T? {
        if isEmpty { return nil }
        elements.swapAt(1, elements.endIndex - 1)
        let element = elements.popLast()
        diveDown(from: 1)
        return element
    }
    
    mutating func swimUp(from index: Int) { // 자식 노드에서 부모 노드와 비교하며 peek을 바꾸는 과정
        var index = index
        while index > 1 && sortMethod(elements[index], elements[parent(index)]) {
            elements.swapAt(index, parent(index))
            index = parent(index)
        }
    }
    
    mutating func diveDown(from index: Int) { // pop을 위해 마지막 노드와 루트노드를 바꾼 뒤 정리해가는 과정
        var priorityIndex = index
        
        
        if rightChild(index) < elements.endIndex && sortMethod(elements[rightChild(index)], elements[priorityIndex]) {
            priorityIndex = rightChild(index)
        }
        
        if leftChild(index) < elements.endIndex && sortMethod(elements[leftChild(index)], elements[priorityIndex]) {
            priorityIndex = leftChild(index)
        }
        
        if priorityIndex != index {
            elements.swapAt(priorityIndex, index)
            diveDown(from: priorityIndex)
        }
    }
    
    mutating func heapify() {
        (1...(elements.count / 2)).forEach {
            diveDown(from: $0)
        }
    }
}
