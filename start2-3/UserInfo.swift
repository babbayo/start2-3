//
//  UserInfo.swift
//  start2-3
//
//  Created by MacBook on 09/11/2019.
//  Copyright © 2019 yaco. All rights reserved.
//

import Foundation

class UserInfo {
    static let shard: UserInfo = UserInfo()
    
    var id: String?
    var password: String?
    var phone: String?
    var birth: String?
    var created: Bool?
    
}
