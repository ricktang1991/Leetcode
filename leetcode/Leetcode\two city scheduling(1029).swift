//
//  Leetcode\two city scheduling(1029).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func twoCitySchedCost(_ costs: [[Int]]) -> Int {
    var result = 0
    let cost = costs.sorted(by: { (a, b) -> Bool in return a[1] - a[0] > b[1] - b[0] })

    for i in 0..<cost.count {
        if i < cost.count / 2 {
            result += cost[i][0]
        } else {
            result += cost[i][1]
        }
    }
    return result
}
