//
//  Leetcode\split a string in balance strings(1221).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int balancedStringSplit(String s) {
    int count = 0;
    int answer = 0;
    for (int i = 0; i < s.length(); i++) {
        if (s.charAt(i) == 'L') {
            count++;
        } else {
            count--;
        }  if (count == 0) {
            answer++;
        }
    } return answer;
}
