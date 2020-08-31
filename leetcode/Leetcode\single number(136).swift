//
//  Leetcode\single number(136).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public int singleNumber(int[] nums) {
    Arrays.sort(nums);
    if (nums.length <2) {
        return nums[0];
    }
    for (int i = 1; i < nums.length-1; i++) {
        if (nums[i] != nums[i-1] && nums[i] != nums[i+1]) {
            return nums[i];
        }
    } if (nums[0] != nums[1]) {
        return nums[0];
    } return nums[nums.length-1];
}
