//
//  Leetcode\reveal cardsin in creasing order(950).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func deckRevealedIncreasing(_ deck: [Int]) -> [Int] {
    let sorted = deck.sorted(by: >)
    var answer = [Int]()
    for i in 0..<sorted.count {
        if answer.isEmpty {
            answer.append(sorted[i])
        } else {
            answer.insert(answer.removeLast(), at: 0)
            answer.insert(sorted[i], at: 0)
        }
    }
    return answer
}
