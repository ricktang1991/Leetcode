//
//  Leetcode\maximum subarray(53).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func maxSubArray(_ nums: [Int]) -> Int {
    var list = [Int]()
    for i in 0..<nums.count {
        var temp = nums[i]
        var max = temp
        for j in i+1..<nums.count {
            temp += nums[j]
            if temp > max {
                max = temp
            }
        }
        list.append(max)
    }
    print(list.max()!)
    return list.max()!
}
