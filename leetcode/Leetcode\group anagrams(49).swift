//
//  Leetcode\group anagrams(49).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

func groupAnagrams(_ strs: [String]) -> [[String]] {
    var dic = [String:[String]]()
    var answer = [[String]]()
    for str in strs {
        let temp = String(str.sorted())
        dic[temp, default: []].append(str)
    }
    for value in dic.values {
        answer.append(value)
    }
    return answer
}
