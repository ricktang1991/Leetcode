//
//  Leetcode\find the duplicate number.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findDuplicate(_ nums: [Int]) -> Int {
    var dic = [Int:Int]()
    var answer = 0
    for num in nums {
        dic[num, default: 0] += 1
    }
    for (key, value) in dic {
        if value >= 2 {
            answer = key
        }
    }
    return answer
}
