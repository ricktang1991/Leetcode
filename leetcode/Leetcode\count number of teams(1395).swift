//
//  Leetcode\count number of teams(1395){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func numTeams(_ rating: [Int]) -> Int {
    var count = 0
    if rating.count < 3 {
        return 0
    } else {
        for i in 0..<rating.count - 2 {
            for j in i+1..<rating.count - 1 {
                for k in j+1..<rating.count {
                    if rating[i] < rating[j] && rating[j] < rating[k] {
                        count += 1
                    }
                    if rating[i] > rating[j] && rating[j] > rating[k] {
                        count += 1
                    }
                }
            }
        }
    }
    return count
}
