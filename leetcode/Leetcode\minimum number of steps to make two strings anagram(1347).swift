//
//  Leetcode\minimum number of steps to make two strings anagram(1347).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func minSteps(_ s: String, _ t: String) -> Int {
    var map = [Character:Int]()
    var answer = 0
    for i in s {
        map[i,default:0] -= 1
    }
    for i in t {
        map[i,default:0] += 1
    }
    for key in map.keys {
        answer += map[key]! > 0 ? map[key]! : 0
    }
    return answer
}
