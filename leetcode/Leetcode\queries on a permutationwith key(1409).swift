//
//  Leetcode\queries on a permutationwith key(1409).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func processQueries(_ queries: [Int], _ m: Int) -> [Int] {
    var p = [Int]()
    var answer = [Int]()
    for i in 1...m {
        p.append(i)
    }
    for query in queries {
        let index = p.firstIndex(of: query)
        answer.append(index!)
        p.remove(at: index!)
        p.insert(query, at: 0)
    }
    return answer
}
