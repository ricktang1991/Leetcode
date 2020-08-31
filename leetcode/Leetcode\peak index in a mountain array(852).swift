//
//  Leetcode\peak index in a mountain array(852).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int peakIndexInMountainArray(int[] A) {
    int i = 0;
    while (A[i] < A[i+1]) i++;
    return i;
}
