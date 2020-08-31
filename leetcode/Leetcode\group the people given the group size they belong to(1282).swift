//
//  Leetcode\group the people given the group size they belong to(1282).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func groupThePeople(_ groupSizes: [Int]) -> [[Int]] {
    var dic = [Int:[Int]]()
    var answer = [[Int]]()
    for i in 0..<groupSizes.count {
        dic[groupSizes[i], default:[]].append(i)
    }
    for (key, value) in dic {
        var temp = [Int]()
        for i in value {
            temp.append(i)
            if temp.count == key {
                answer.append(temp)
                temp.removeAll()
            }
        }
    }
    return answer
}
