import UIKit

public class LRUCache<Value: Equatable> {
    var stack: [Value]
    
    var isEmpty: Bool {
        return stack.isEmpty
    }
    
    public init(stack: [Value]) {
    self.stack = stack
  }

    
  @discardableResult
  public func get(index: Int) -> Value? {
    guard stack.isEmpty else { return nil }
    let value = stack.remove(at: index)
    stack.insert(value, at: 0)
    return value
  }
  
  public func insert(value: Value) {
    stack.append(value)
  }
  
  @discardableResult
  public func remove(value: Value) -> Bool {
    guard stack.contains(value) else { return false }
    
    for (index, num) in stack.enumerated() {
        if num == value {
            stack.remove(at: index)
        }
    }
    return true
  }
    
}


var cache = LRUCache<Int>(stack: [])
cache.insert(value: 1)
cache.insert(value: 4)



