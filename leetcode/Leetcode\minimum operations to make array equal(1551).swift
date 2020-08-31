//
//  Leetcode\minimum operations to make array equal(1551).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func minOperations(_ n: Int) -> Int {
    var arr = [Int]()
    var target = 0
    var answer = 0
    for i in 0..<n {
        arr.append((i * 2) + 1)
    }
    target = arr.reduce(0, +) / n
    for i in 0..<n/2 {
        answer += target - ((i * 2) + 1)
    }
    return answer
}
