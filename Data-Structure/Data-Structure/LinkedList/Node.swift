//
//  Node.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/26.
//

import Foundation

class Node<T: Comparable> {
    
    let value: T
    var next: Node?
    
    init(value: T, next: Node? = nil) {
        self.value = value
        self.next = next
    }
}
