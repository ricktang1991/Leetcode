//
//  Leetcode\majority element(169).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int majorityElement(int[] nums) {
    Arrays.sort(nums);
    int j = nums.length / 2;
    return nums[j];
}
