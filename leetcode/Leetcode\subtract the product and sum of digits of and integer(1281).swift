//
//  Leetcode\subtract the product and sum of digits of and integer(1281).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int subtractProductAndSum(int n) {
    int prod = 1;
    int sum = 0;
    while (n > 0) {
        prod *= n % 10;
        sum += n % 10;
        n /= 10;
    }
    return prod - sum;
}
