//
//  main.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/08.
//

import Foundation

var stack = Stack<Int>()
var queue = Queue<Int>()
var heap = Heap<Int>(sortMethod: <)

print("\n======Test Min Heap ======")

for number in [0, 5, 4, 2, 1, 7, 9, 8, 3, 6] {
    heap.push(number)
}
print("!@#")
while !heap.isEmpty {
    print(heap.pop())
}

//Optional(0)
//Optional(1)
//Optional(2)
//Optional(3)
//Optional(4)
//Optional(5)
//Optional(6)
//Optional(7)
//Optional(8)
//Optional(9)
print("\n======Test Max Heap ======")
heap = Heap<Int>(sortMethod: >)

for number in [0, 5, 4, 2, 1, 7, 9, 8, 3, 6] {
    heap.push(number)
}
while !heap.isEmpty {
    print(heap.pop())
}

//Optional(9)
//Optional(8)
//Optional(7)
//Optional(6)
//Optional(5)
//Optional(4)
//Optional(3)
//Optional(2)
//Optional(1)
//Optional(0)
print("\n======Test Build Heap ======")
heap = Heap<Int>(elements: [0, 5, 4, 2, 1, 7, 9, 8, 3, 6], sortMethod: <)

while !heap.isEmpty {
    print(heap.pop())
}
