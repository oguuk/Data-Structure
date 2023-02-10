//
//  BinaryTree.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/10.
//
// BFS 사용해서 Node를 채워야함

import Foundation

struct BinaryTree<T: Comparable> {
    
    var root: TreeNode<T>?
    
    mutating func add(_ data: T) {
        let node = TreeNode(value: data)
        if root == nil {
            root = node
            return
        }
        add(node)
    }
    
    func printPreorder() {
        print("\n==== Preorder ====")
        self.printPreorder(node: self.root)
        print("\n")
    }
    
    private func printPreorder(node: TreeNode<T>?) {
        guard let node = node else { return }
        print(node.value, terminator: " ")
        self.printPreorder(node: node.leftChild)
        self.printPreorder(node: node.rightChild)
    }
    
    private func add(_ node: TreeNode<T>) {
        var queue = Queue<TreeNode<T>>()
        queue.push(root!)
        
        while !queue.isEmpty {
            let curr = queue.pop()
            guard let leftChild = curr?.leftChild else {
                curr?.leftChild = node
                return
            }
            guard let rightChild = curr?.rightChild else {
                curr?.rightChild = node
                return
            }
            queue.push(leftChild)
            queue.push(rightChild)
        }
    }
}

