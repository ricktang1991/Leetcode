//
//  Leetcode\counting bits(338){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func countBits(_ num: Int) -> [Int] {
    var answer = [Int]()
    for i in 0...num {
        var count = 0
        var num = i
        while num >= 2 {
            if num % 2 == 1 {
                count += 1
            }
            num /= 2
        }
        if num == 1 {
            count += 1
        }
        answer.append(count)
    }
    return answer
}
