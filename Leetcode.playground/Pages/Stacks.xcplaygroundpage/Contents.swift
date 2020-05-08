import UIKit

import Foundation

// Leetcode question Min Stack 155.
class MinStack {
    var stack:[Int]
    var minStack: [Int]
    
    init() {
        self.stack = [Int]()
        self.minStack = [Int]()
    }
    
    func push(_ x: Int) {
        stack.append(x)
        if minStack.isEmpty || x <= minStack.last! {
            minStack.append(x)
        }
    }
    
    func pop() {
        guard stack.count > 0 else { return }
        if stack.last == minStack.last {
            minStack.removeLast()
        }
        stack.removeLast()
        
    }
    
    func top()-> Int {
        guard stack.count > 0 else { return 0 }
        return stack.last ?? 0
        
    }
    
    func getMin() -> Int {
        return minStack.last ?? 0
    }
    
}


