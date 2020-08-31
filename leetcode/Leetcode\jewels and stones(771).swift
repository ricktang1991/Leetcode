//
//  Leetcode\jewels and stones(771).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int numJewelsInStones(String J, String S) {
    int count = 0;
    for (int i = 0; i < J.length(); i++) {
        for (int j = 0; j < S.length(); j++) {
            if (J.charAt(i) == S.charAt(j)) {
                count++;
            }
        }
    } return count;

}
