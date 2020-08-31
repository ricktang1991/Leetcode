//
//  Leetcode\find peak element(162){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findPeakElement(_ nums: [Int]) -> Int {
    var answer = 0
    if nums.count < 3 {
        let max = nums.max()
        for i in 0..<nums.count {
            if nums[i] == max {
                answer = i
            }
        }
    } else {
        for i in 0..<nums.count - 2 {
            let j = i + 1
            let k = j + 1
            if nums[j] > nums[i] && nums[j] > nums[k] {
                answer = j
            }
            if nums[i] > nums[j] && nums[i] > nums[k] && i == 0 {
                answer = i
            }
            if nums[i] < nums[k] && nums[j] < nums[k] && k == nums.count - 1 {
                answer = k
            }
        }
    }
    return answer
}
