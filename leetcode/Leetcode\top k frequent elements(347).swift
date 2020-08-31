//
//  Leetcode\top k frequent elements(347).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
   var dic = [Int:Int]()
    var answer = [Int]()
    for num in nums {
        dic[num, default: 0] += 1
    }
    let sorted = Array(dic.keys).sorted { (a, b) -> Bool in
        dic[a]! > dic[b]!
    }
    for i in 0..<k {
        answer.append(sorted[i])
    }
    return answer
}
