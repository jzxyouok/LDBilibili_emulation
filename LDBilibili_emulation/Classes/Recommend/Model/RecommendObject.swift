//
//  RecommendObject.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/3.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import HandyJSON

class RecommendObject: HandyJSON {
    
    var title: String?
    var cover: String?
    var uri: String?
    var param: String?
    var goto: String?
    var desc: String?
    var tname: String?
    var play: Int?
    var danmaku: Int?
    var idx: Int?
    var duration: Int?
    var name: String?
    var face: String?
    
    required init() {}
}
