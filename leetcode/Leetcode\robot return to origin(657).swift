//
//  Leetcode\robot return to origin.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public boolean judgeCircle(String moves) {
    int v = 0;
    int h = 0;
    for (char move : moves.toCharArray()) {
        if (move == 'U') {
            v++;
        }
        if (move == 'D') {
            v--;
        }
        if (move == 'R') {
            h++;
        }
        if (move == 'L') {
            h--;
        }
    }
    return v == 0 && h == 0;
}
