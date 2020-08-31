//
//  Leetcode\queue reconstruction by height(406).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func reconstructQueue(_ people: [[Int]]) -> [[Int]] {
    var array = people
    array.sort(by: { ($0[0] == $1[0]) ? $0[1] < $1[1] : $0[0] > $1[0]})
    var answer = [[Int]]()
    for person in array {
        answer.insert(person, at: person[1])
    }
    return answer
}
