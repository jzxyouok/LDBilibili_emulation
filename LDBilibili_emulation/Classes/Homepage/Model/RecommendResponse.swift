//
//  RecommendResponse.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/8.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import HandyJSON

class RecommendResponse: HandyJSON {

    var code: Int?
    var data: Array<RecommendObject>?
    var message: String?
    var ttl: Int?
    
    required init() {}
}
