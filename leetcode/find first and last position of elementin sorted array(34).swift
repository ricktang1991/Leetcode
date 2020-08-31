//
//  find first and last position of elementin sorted array(34){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func searchRange(_ nums: [Int], _ target: Int) -> [Int] {
    var answer = [Int]()
    var temp = [Int]()
    for i in 0..<nums.count {
        if nums[i] == target {
            temp.append(i)
        }
    }
    if temp.count == 2 {
        answer = temp
    } else if temp.count == 1 {
        for _ in 0..<2 {
            answer.append(temp[0])
        }
    } else if temp.count > 2 {
        answer.append(temp[0])
        answer.append(temp[temp.count - 1])
    } else if answer.isEmpty {
        for _ in 0..<2 {
            answer.append(-1)
        }
    }
    return answer
}
