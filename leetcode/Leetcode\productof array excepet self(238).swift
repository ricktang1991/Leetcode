//
//  Leetcode\productof array excepet self(238).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func productExceptSelf(_ nums: [Int]) -> [Int] {
    var count = 0
    var total = 0
    var temp = [Int]()
    var answer = [Int]()
    for i in 0..<nums.count {
        if nums[i] == 0 {
            count += 1
            temp.append(1)
        } else {
            temp.append(nums[i])
        }
    }
    if count < 1 {
        total = nums.reduce(1, *)
        for num in nums {
            if num != 0 {
                answer.append(total / num)
            } else {
                answer.append(0)
            }
        }
    }
    if count == 1 {
        total = temp.reduce(1, *)
        for num in nums {
            if num == 0 {
                answer.append(total)
            } else {
                answer.append(0)
            }
        }
    }
    if count > 1 {
        for _ in nums {
            answer.append(0)
        }
    }
    return answer
}
