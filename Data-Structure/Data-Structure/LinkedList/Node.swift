//
//  Node.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/26.
//

import Foundation

class Node<T: Comparable> {
    
    let data: T
    var next: Node?
    
    init(data: T, next: Node? = nil) {
        self.data = data
        self.next = next
    }
}
