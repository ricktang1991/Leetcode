//
//  Leetcode\subarray sum equals k(560).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func subarraySum(_ nums: [Int], _ k: Int) -> Int {
    var dic = [Int: Int]()
    dic[0] = 1
    var sum: Int = 0
    var count: Int = 0

    for num in nums {
        sum += num
        if let temp = dic[sum - k] {
            count += temp
        }
        if let value = dic[sum] {
            dic[sum] = value + 1
        } else {
            dic[sum] = 1
        }
    }

    return count
}
