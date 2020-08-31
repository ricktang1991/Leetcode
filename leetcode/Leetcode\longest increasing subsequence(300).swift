//
//  Leetcode\longest increasing subsequence(300).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func lengthOfLIS(_ nums: [Int]) -> Int {
    if nums.count == 0 {
        return 0
    }
    var dp = [Int](repeating: 0, count: nums.count)
    dp[0] = 1
    var maxAns = 1
    for i in 0..<dp.count {
        var maxVal = 0
        for j in 0..<i {
            if nums[i] > nums[j] {
                maxVal = max(maxVal, dp[j])
            }
        }
        dp[i] = maxVal + 1
        maxAns = max(maxAns, dp[i])
    }
    return maxAns
}
