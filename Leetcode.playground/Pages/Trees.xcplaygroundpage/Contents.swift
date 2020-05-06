import UIKit

//Fellow 1:
//Implement a Binary Tree.
//Implement Breadth-first traversal
//Fellow 2:
//Implement inorder traversal
//Implement post-order traversal
//Implement pre-order traversal

//   1
//  / \
//  2  3
// / \
// 4  5

//Breadth-first traversal = [1, 2, 3, 4, 5]
//inorder traversal = [2, 1, 3]
//post-order traversal = [2, 3, 1]
//pre-order traversal = [1,2,4,5,3]
//
//class BinaryTreeNode<T> {
//  var leftBranch: BinaryTreeNode?
//  var rightBranch: BinaryTreeNode?
//  var value: T
//
// init(_ value: T) {
//   self.value = value
// }
//
//}
//
//class Queue<T> {
// var elements = [T]()
//
// var top: T? {
//   return elements.first
// }
//
// var isEmpty: Bool {
//   return elements.isEmpty
// }
//
//init() {
//
//}
//
//func enqueue(_ element: T) {
//  elements.append(element)
//}
//
//func dequeue()-> T? {
//  guard !isEmpty else {return nil}
//  return elements.removeFirst()
//}
//
//}
//
//extension BinaryTreeNode {
//  func breadthFirstTraversal(visit: (BinaryTreeNode) -> ()) {
//    let queue = Queue<BinaryTreeNode>()
//    visit(self) // root = 1 binarytreenode.val = 1
//    queue.enqueue(self) // [1]
//
//    while let branch = queue.dequeue() {
//      if let leftBranch = branch.leftBranch {
//        visit(leftBranch)
//        queue.enqueue(leftBranch)
//      }
//      if let rightBranch = branch.rightBranch {
//        visit(rightBranch)
//        queue.enqueue(rightBranch)
//      }
//    }
//
//  }
//  func inOrderTraversal() {
//
//
//  }
//  func preOrderTraversal() {
//
//  }
//  func postOrderTraversal() {
//
//  }
//}


//var tree = BinaryTreeNode(1)
//tree.leftBranch = BinaryTreeNode(2)
//tree.rightBranch = BinaryTreeNode(3)
//tree.breadthFirstTraversal { (branch)
//print(tree.value, terminator: ",")
//}

public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    public init() { self.val = 0; self.left = nil; self.right = nil; }
    public init(_ val: Int) { self.val = val; self.left = nil; self.right = nil; }
    public init(_ val: Int, _ left: TreeNode?, _ right: TreeNode?) {
        self.val = val
        self.left = left
        self.right = right
        
    }
}

class Solution {
//    func maxDepth_DFS(_ root: TreeNode?) -> Int {
//        guard let root = root else {
//            return 0
//        }
//
//        return max(maxDepth(root.left), maxDepth(root.right)) + 1
//    }
    
    func maxDepth_BFS(_ root: TreeNode?) -> Int {
        guard let root = root else {
            return 0
        }
        
        var maxDepth = 0
        var queue = [TreeNode]()
        
        queue.append(root)
        while !queue.isEmpty {
            let count = queue.count
            for _ in 0..<count {
                let node = queue.removeFirst()
                if let leftNode = node.left {
                    queue.append(leftNode)
                }
                if let rightNode = node.right {
                    queue.append(rightNode)
                }
            }
            maxDepth += 1
        }
        
        return maxDepth
    }
}

