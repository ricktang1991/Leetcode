//
//  Leetcode\combination sum(39){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func combinationSum(_ candidates: [Int], _ target: Int) -> [[Int]] {
    var answer = [[Int]]()
    var candidate = [Int]()

    backtracking(&answer, &candidate, candidates.sorted(), target, 0)

    return answer
}

func backtracking(_ answer: inout [[Int]], _ candidate: inout [Int], _ candidates: [Int], _ remain: Int, _ start: Int) {
    if remain < 0 {
        return
    } else if remain == 0 {
        answer.append(candidate)
    } else {
        for i in start..<candidates.count {
            candidate.append(candidates[i])
            backtracking(&answer, &candidate, candidates, remain - candidates[i], i)
            candidate.removeLast()
        }
    }

}
