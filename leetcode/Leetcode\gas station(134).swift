//
//  Leetcode\gas station(134).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func canCompleteCircuit(_ gas: [Int], _ cost: [Int]) -> Int {
    var diff = [Int]()
    for i in 0..<gas.count {
        diff.append(gas[i] - cost[i])
    }
    for i in 0..<gas.count {
        diff.append(diff[i])
    }
    var index = 0
    var remain = 0
    var count = 0
    func findIndex(answer: Int) -> Int {
        if count == gas.count {
            return answer
        } else {
            for i in answer..<gas.count + answer {
                remain += diff[i]
                if answer < gas.count && remain < 0 {
                    remain = 0
                    count = 0
                    return findIndex(answer: answer + 1)

                }
                if answer < gas.count && remain >= 0 {
                    count += 1
                    if count == gas.count {
                        break
                    }
                
                } else {
                    return -1
                }
            }
        }
        return answer
    }
    return findIndex(answer: index)
}
