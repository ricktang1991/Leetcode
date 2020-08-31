//
//  Leetcode\maximum number of coins you can get(1561).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func maxCoins(_ piles: [Int]) -> Int {
    let sorted = piles.sorted(by: >)
    var answer = 0
    var n = 1
    while n < sorted.count / 3 * 2 {
        answer += sorted[n]
        n += 2
    }
    return answer
}
