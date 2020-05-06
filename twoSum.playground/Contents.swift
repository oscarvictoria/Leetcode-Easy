import UIKit

class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        
        var hash: [Int : Int] = [:]
        var res : [Int] = []
        
        // n = [2,7,11,15]
        for (i, n) in nums.enumerated() {
            if let index = hash[target - n]{ // dictionary value is target - n
                res.append(index)
                res.append(i)
            }
            hash[n] = i // 0
        }
        return res
    }
}
