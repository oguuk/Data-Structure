//
//  DoublyNode.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/03/02.
//

import Foundation

class DoublyNode<T: Comparable> {
    
    let data: T
    var id: Int
    var prev: DoublyNode? = nil
    var next: DoublyNode? = nil
    
    init(data: T, id: Int) {
        self.data = data
        self.id = id
    }
}
