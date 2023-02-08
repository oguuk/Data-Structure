//
//  Stack.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/08.
//
// 데이터를 일시적으로 저장하기 위해 사용하는 자료구조로, LIFO( Last In First Out )
import Foundation

struct Stack<T> {
    
    private var elements: [T] = []
    
    var count: Int {
        return elements.count
    }
    
    var isEmpty: Bool {
        return elements.count == 0
    }
    
    mutating func pop() -> T? {
        return elements.popLast()
    }
    
    mutating func push(_ element: T) {
        elements.append(element)
    }
    
    mutating func clear() {
        elements = []
    }
    
    func size() -> Int {
        return elements.count
    }
    
    func top() -> T? {
        return elements.last
    }
    
    func bottom() -> T? {
        return elements.first
    }
}
