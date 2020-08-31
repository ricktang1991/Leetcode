//
//  Leetcode\defanging an ip address(1108).swift
//  leetcode
//
//  Created by 桑染 on 2020-08-30.
//  Copyright © 2020 Rick. All rights reserved.
//

import Foundation

public String defangIPaddr(String address) {
    return address.replace(".", "[.]");
}
