//
//  Leetcode\sum of square numbers(633).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func judgeSquareSum(_ c: Int) -> Bool {
    var min = 0
    var max = Int(sqrt(Double(c)))
    while min * min + max * max != c && min <= max{
        if min * min + max * max > c {
            max -= 1
        } else {
            min += 1
        }
    }
    return min * min + max * max == c
}
