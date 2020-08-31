//
//  Leetcode\array partition 1(561).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int arrayPairSum(int[] nums) {
    Arrays.sort(nums);
    int answer = 0;
    for (int i = 0; i < nums.length; i += 2) {
        answer += nums[i];
    }
    return answer;
}
