//
//  Leetcode\hamming distance(461).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int hammingDistance(int x, int y) {
    int a = 0;
    int b = 0;
    int answer = 0;
    while (x > 0 || y >0) {
        a = x % 2;
        b = y % 2;
        x /= 2;
        y /= 2;
        if (a != b) {
            answer++;
        }
    } return answer;
}
