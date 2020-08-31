//
//  Leetcode\friend circles(547).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func findCircleNum(_ M: [[Int]]) -> Int {
    let n = M.count

    if n == 0 {
        return 0
    }
    var unionFind = UF(n)

    for i in 0..<n {
        for j in i + 1..<n {
            if M[i][j] == 1 {
                unionFind.union(i, j)
            }
        }
    }
    return unionFind.count
}

public struct UF {
    /// parent[i] = parent of i
    private var parent: [Int]
    /// size[i] = number of nodes in tree rooted at i
    private var size: [Int]
    /// number of components
    private(set) var count: Int
    
    /// Initializes an empty union-find data structure with **n** elements
    /// **0** through **n-1**.
    /// Initially, each elements is in its own set.
    /// - Parameter n: the number of elements
    public init(_ n: Int) {
        self.count = n
        self.parent = [Int](repeating: 0, count: n)
        self.size = [Int](repeating: 0, count: n)
        for i in 0..<n {
            self.parent[i] = i
        }
    }
    
    /// Returns the canonical element(root) of the set containing element `p`.
    /// - Parameter p: an element
    /// - Returns: the canonical element of the set containing `p`
    public mutating func find(_ p: Int) -> Int {
        var n = p
        while n != parent[n] {
            n = parent[n]
            size[n] += 1
        }
        return n
    }
    
    /// Returns `true` if the two elements are in the same set.
    /// - Parameters:
    ///   - p: one elememt
    ///   - q: the other element
    /// - Returns: `true` if `p` and `q` are in the same set; `false` otherwise
    public mutating func connected(_ p: Int, _ q: Int) -> Bool {
        return find(p) == find(q)
    }
    
    /// Merges the set containing element `p` with the set containing
    /// element `q`
    /// - Parameters:
    ///   - p: one element
    ///   - q: the other element
    public mutating func union(_ p: Int, _ q: Int) {
        let i = find(p)
        let j = find(q)
        if i == j {
            return
        }
        if size[i] < size[j] {
            parent[i] = j
            size[j] += size[i]
        } else {
            parent[j] = i
            size[i] += size[j]
        }
        count -= 1
    }
}
