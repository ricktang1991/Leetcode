//
//  Leetcode\climbing stairs(70).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func climbStairs(_ n: Int) -> Int {
    var dp = [Int](repeating: 0, count: n + 1)
    if n == 1 {
        return 1
    }
    if n == 2 {
        return 2
    }
    dp[1] = 1
    dp[2] = 2
    for i in 3..<n + 1 {
        dp[i] = dp[i-1] + dp[i-2]
        
    }
    return dp[n]
}
