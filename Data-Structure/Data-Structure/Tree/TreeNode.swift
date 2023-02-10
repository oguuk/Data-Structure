//
//  BinaryTree.swift
//  Data-Structure
//
//  Created by 오국원 on 2023/02/10.
// struct는 순환 오류 class는 미발생 왜?

import Foundation

final class TreeNode<T: Comparable> {
    
    var value: T
    var parent: TreeNode?
    var leftChild: TreeNode?
    var rightChild: TreeNode?
    var asString:String { return treeString(self){("\($0.value)",$0.leftChild,$0.rightChild)}  }
    
    init(value: T, parent: TreeNode? = nil, leftChild: TreeNode? = nil, rightChild: TreeNode? = nil) {
        self.value = value
        self.parent = parent
        self.leftChild = leftChild
        self.rightChild = rightChild
    }
    
}

