//
//  Leetcode\find all duplicates in an array(442){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findDuplicates(_ nums: [Int]) -> [Int] {
    var dic = [Int:Int]()
    var answer = [Int]()
    for num in nums {
        dic[num, default:0] += 1
    }
    for (key, value) in dic {
        if value == 2 {
            answer.append(key)
        }
    }
    return answer
}
