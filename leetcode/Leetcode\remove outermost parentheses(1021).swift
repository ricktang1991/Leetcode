//
//  Leetcode\remove outermost parentheses.swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public String removeOuterParentheses(String S) {
    String alist = "";
    int count = 0;
    int start = 0;
    for (int i = 1; i < len(S); i++) {
        if (S[i] == "(") {
            count += 1;
        } if (S[i] == ")") {
            count -= 1;
        } if (count == 0) {
            alist += "("＋S[start+1:i]＋")";
            start = i+1;
        }
    } return alist
}
