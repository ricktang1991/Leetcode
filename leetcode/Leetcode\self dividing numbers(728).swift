//
//  Leetcode\self dividing numbers(728).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public List<Integer> selfDividingNumbers(int left, int right) {
    List<Integer> answer = new ArrayList();
    for (int i = left; i <= right; i++) {
        if (selfDividble(i)) {
            answer.add(i);
        }
    
    }
    return answer;
}

private boolean selfDividble(int a) {
    int b = a;
    while (b > 0) {
        int c = b % 10;
        if (c == 0 || a % c > 0) {
            return false;
        } b /= 10;
    }
    return true;
}
