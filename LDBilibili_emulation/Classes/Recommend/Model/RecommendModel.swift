//
//  RecommendModel.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/3.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import Alamofire
import HandyJSON

class RecommendModel: NSObject {
    
    func getRecommendList(completion: @escaping (Array<RecommendObject>) -> ()) {
        
        let parameters:Dictionary = [
            "access_key":"b7ebe69214eb03c56a2a29a80f5f7b43",
            "actionKey":"appkey",
            "appkey":"27eb53fc9058f8c3",
            "build":"4310",
            "device":"phone",
            "mobi_app":"iphone",
            "platform":"ios",
            "ts":"1493715169",
            "idx":"1492435224",
            "network":"wifi",
            "pull":"1",
            "sign":"ff7c18e0b6785cbb8ed51ca9cd3a565c",
            "style":"1",
            ]
        
        // 首页推荐接口
        Alamofire.request("https://app.bilibili.com/x/feed/index", method: .get, parameters: parameters).responseString {
            response in

            if let res = JSONDeserializer<RecommendResponse>.deserializeFrom(json: response.result.value){
                completion(res.data!)
            }
        }
    }
}
