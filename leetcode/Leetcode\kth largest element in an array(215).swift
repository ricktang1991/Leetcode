//
//  Leetcode\kth largest element in an array.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findKthLargest(_ nums: [Int], _ k: Int) -> Int {
    var sorted = nums.sorted()
    return sorted[sorted.count - k]
}
