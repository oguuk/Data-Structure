//
//  Queue.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/08.
//

import Foundation

struct Queue<T> {
    
    private var inputArr: [T] = []
    private var outputArr: [T] = []
    
    var front: T? {
        return outputArr.last ?? inputArr.first
    }
    
    var back: T? {
        return inputArr.last ?? outputArr.first
    }
    
    var count: Int {
        return inputArr.count + outputArr.count
    }
    
    var isEmpty: Bool {
        return inputArr.isEmpty && outputArr.isEmpty
    }
    
    mutating func push(_ element: T) {
        inputArr.append(element)
    }
    
    mutating func pop() -> T? {
        if outputArr.isEmpty {
            outputArr = inputArr.reversed()
            inputArr = []
        }
        return outputArr.popLast()
    }
    
    mutating func clear() {
        inputArr = []
        outputArr = []
    }
}
