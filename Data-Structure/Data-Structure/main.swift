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
var list = DoublyLinkedList<Int>()

for id in 0..<30 {
    list.add(doublyNode: DoublyNode(data: (0...100).randomElement()!, id: id))
}

list.showList()

print("insert node with id -1 before node with id 0")
print(list.insertAt(doublyNode: DoublyNode(data: -1, id: 0), id: 0, atPrev: true))
list.showList()

print("insert node with id 100 before node with id 29")
print(list.insertAt(doublyNode: DoublyNode(data: 29, id: 100), id: 0, atPrev: false))
list.showList()

let deletedzero = list.delete(with: 0)
print("deleted node: id: 0")
list.showList()

let deletedtwenty = list.delete(with: 20)
print("deleted node: id: 20")
list.showList()

print("insert node with id 30 before node with id 21")
print(list.insertAt(doublyNode: DoublyNode(data: 30, id: 30), id: 21, atPrev: true))
list.showList()

print("insert node with id 31 after node with id 29")
print(list.insertAt(doublyNode: DoublyNode(data: 0, id: 31), id: 29, atPrev: false))
list.showList()

print("insert node with id 0 before node with id 31")
print(list.insertAt(doublyNode: DoublyNode(data: 1, id: 0), id: 31, atPrev: true))
list.showList()

print("node at front")
print("id: \(list.front?.id) data: \(list.front?.data)")

print("node at back")
print("id: \(list.back?.id) data: \(list.back?.data)")

list.delete(with: 29)
list.showList()

//===== Linked List ======
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(20) / value: 73 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//insert node with id -1 before node with id 0
//true
//===== Linked List ======
//id : Optional(0) / value: -1 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(20) / value: 73 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//insert node with id 100 before node with id 29
//true
//===== Linked List ======
//id : Optional(0) / value: -1 ->
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(20) / value: 73 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//deleted node: id: 0
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(20) / value: 73 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//deleted node: id: 20
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//insert node with id 30 before node with id 21
//true
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(30) / value: 30 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31
//========================
//insert node with id 31 after node with id 29
//true
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(30) / value: 30 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31 ->
//id : Optional(31) / value: 0
//========================
//insert node with id 0 before node with id 31
//true
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(30) / value: 30 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(29) / value: 31 ->
//id : Optional(0) / value: 1 ->
//id : Optional(31) / value: 0
//========================
//node at front
//id: Optional(100) data: Optional(29)
//node at back
//id: Optional(31) data: Optional(0)
//===== Linked List ======
//id : Optional(100) / value: 29 ->
//id : Optional(0) / value: 4 ->
//id : Optional(1) / value: 61 ->
//id : Optional(2) / value: 90 ->
//id : Optional(3) / value: 51 ->
//id : Optional(4) / value: 12 ->
//id : Optional(5) / value: 72 ->
//id : Optional(6) / value: 93 ->
//id : Optional(7) / value: 46 ->
//id : Optional(8) / value: 80 ->
//id : Optional(9) / value: 81 ->
//id : Optional(10) / value: 83 ->
//id : Optional(11) / value: 94 ->
//id : Optional(12) / value: 88 ->
//id : Optional(13) / value: 5 ->
//id : Optional(14) / value: 41 ->
//id : Optional(15) / value: 98 ->
//id : Optional(16) / value: 10 ->
//id : Optional(17) / value: 96 ->
//id : Optional(18) / value: 66 ->
//id : Optional(19) / value: 1 ->
//id : Optional(30) / value: 30 ->
//id : Optional(21) / value: 40 ->
//id : Optional(22) / value: 31 ->
//id : Optional(23) / value: 38 ->
//id : Optional(24) / value: 33 ->
//id : Optional(25) / value: 73 ->
//id : Optional(26) / value: 24 ->
//id : Optional(27) / value: 23 ->
//id : Optional(28) / value: 43 ->
//id : Optional(0) / value: 1 ->
//id : Optional(31) / value: 0
//========================
