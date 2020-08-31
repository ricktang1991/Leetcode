//
//  Leetcode\squares of a sorted array(977).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int[] sortedSquares(int[] A) {
    for (int i = 0; i < A.length; i++) {
        A[i] = A[i] * A[i];
    }
    Arrays.sort(A);
    return A;
}
