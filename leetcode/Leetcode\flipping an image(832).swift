//
//  Leetcode\flipping an image(832).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int[][] flipAndInvertImage(int[][] A) {
    for (int i = 0; i < A.length; i++) {
        int k = A[i].length - 1;
        for (int j = 0; j <= k; j++, k--) {
            int temp = A[i][j] == 0 ? 1 : 0;
            A[i][j] = A[i][k] == 0 ? 1 : 0;
            A[i][k] = temp;
        }
    } return A;

}
