//
//  Leetcode\max increase to keep city skyline(807).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func maxIncreaseKeepingSkyline(_ grid: [[Int]]) -> Int {
    var top = [Int]()
    var left = [Int]()
    var answer = 0
    for i in 0..<grid.count {
        left.append(grid[i].max()!)
        var temp = 0
        for j in 0..<grid[i].count {
            temp = max(temp, grid[j][i])
        }
        top.append(temp)
    }
    for i in 0..<left.count {
        for j in 0..<top.count {
            answer += min(left[i], top[j]) - grid[i][j]
        }
    }
    return answer
}
