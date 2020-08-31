//
//  Leetcode:3Sum(15).{swift} .swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func threeSum(_ nums: [Int]) -> [[Int]] {
    var answer = Set<[Int]>()
    if nums.count < 3 {
        return []
    }
    let sorted = nums.sorted()
    for i in 0..<sorted.count {
        var j = i + 1
        var k = sorted.count - 1
        while j < k {
            let sum = sorted[i] + sorted[j] + sorted[k]
            if sum == 0 {
                answer.insert([sorted[i], sorted[j], sorted[k]])
                j += 1
            }
            if sum < 0 {
                j += 1
            }
            if sum > 0 {
                k -= 1
            }
        }
    }
    return Array(answer)
}
