//
//  Leetcode\cheapest flight within k stops(787){swift}.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findCheapestPrice(_ n: Int, _ flights: [[Int]], _ src: Int, _ dst: Int, _ K: Int) -> Int {
    struct Edge {
        let to: Int
        let weight: Int
    }
    var adj = [[Edge]](repeating: [], count: n)
    var time = [Int](repeating: Int.max, count: n)

    for i in 0..<flights.count {
        let from = flights[i][0]
        let to = flights[i][1]
        let weight = flights[i][2]
        adj[from].append(Edge(to: to, weight: weight))
    }

    time[src] = 0

    for _ in 0..<K + 1 {
        var tempTime = time
        for i in 0..<n {
            for edge in adj[i] {
                let v = edge.to
                if time[i] == Int.max {
                    continue
                }
                if tempTime[v] > time[i] + edge.weight {
                    tempTime[v] = time[i] + edge.weight
                }
            }
        }
        time = tempTime
    }
    if time[dst] == Int.max {
        return -1
    }
    return time[dst]
}
