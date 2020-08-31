//
//  Leetcode\sort array by parity(905).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

def sortArrayByParity(self, A: List[int]) -> List[int]:
alist_even = []
alist_odd = []
for i in A:
    if i % 2 == 0:
        alist_even.append(i)
for j in A:
    if j % 2 != 0:
        alist_odd.append(j)
return alist_even + alist_odd
