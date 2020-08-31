//
//  Leetcode\DI string match(942).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int[] diStringMatch(String S) {
    S += 'I';
    int[] a = new int[S.length()];
    int b = 0;
    int c = S.length() - 1;
    for(int i = 0; i < S.length(); i++) {
        if (S.charAt(i) == 'I') {
            a[i] = b;
            b++;
        } if (S.charAt(i) == 'D') {
            a[i] = c;
            c--;
        }
    } return a;
}
