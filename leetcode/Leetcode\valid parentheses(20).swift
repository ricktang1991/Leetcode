//
//  Leetcode\valid parentheses(20).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public boolean isValid(String s) {
    Stack<Character> test = new Stack<>();
    for (int i = 0; i < s.length(); i++) {
        if (s.charAt(i) == '(' || s.charAt(i) == '[' || s.charAt(i) == '{') {
            test.add(s.charAt(i));
        }
        if (test.isEmpty()) {
            if (s.charAt(i) == ')' || s.charAt(i) == ']' || s.charAt(i) == '}') {
                return false;
            }
        } else {
            if (s.charAt(i) == ')' && test.pop() != '(') {
                return false;
            }
            if (s.charAt(i) == ']' && test.pop() != '[') {
                return false;
            }
            if (s.charAt(i) == '}' && test.pop() != '{') {
                return false;
            }
        }
    }
    return test.isEmpty();
}
