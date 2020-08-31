//
//  leetcode\container with most water(11){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func maxArea(_ height: [Int]) -> Int {
    var width = height.count - 1
    var start = 0
    var end = height.count - 1
    var temp = [Int]()
    while start < end {
        if height[start] < height[end] {
            temp.append(height[start] * width)
            start += 1
            width -= 1
        } else {
            temp.append(height[end] * width)
            end -= 1
            width -= 1
        }
    }
    let answer = temp.sorted().last!
    return answer
}
