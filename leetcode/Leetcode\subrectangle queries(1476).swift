//
//  Leetcode\subrectangle queries(1476).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

class SubrectangleQueries {
    
    var matrix: [[Int]]
    
    init(_ rectangle: [[Int]]) {
        matrix =  rectangle
    }
    
    func updateSubrectangle(_ row1: Int, _ col1: Int, _ row2: Int, _ col2: Int, _ newValue: Int) {
        for i in row1...row2 {
            for j in col1...col2 {
                matrix[i][j] = newValue
            }
        }
    }
    
    func getValue(_ row: Int, _ col: Int) -> Int {
        return matrix[row][col]
    }
}
