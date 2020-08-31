//
//  Leetcode\n-repeated elements in size 2n array(961).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int repeatedNTimes(int[] A) {
    for (int i = 2; i < A.length; i++) {
        if (A[i] == A[i-1] || A[i] == A[i-2]) {
            return A[i];
        }
    } return A[0];
} 
