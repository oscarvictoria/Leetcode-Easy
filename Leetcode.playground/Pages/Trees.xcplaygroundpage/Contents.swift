import UIKit

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

