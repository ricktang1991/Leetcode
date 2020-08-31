//
//  Leetcode\minimum add to  make parentheses valid(921).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func minAddToMakeValid(_ S: String) -> Int {
    var count = 0
    var balance = 0
    for char in S {
        if char == "(" {
            balance += 1
        }
        if char == ")" {
            balance -= 1
        }
        if balance < 0 {
            count += 1
            balance = 0
        }
    }
    if balance > 0 {
        count += balance
    }
    return count
}
