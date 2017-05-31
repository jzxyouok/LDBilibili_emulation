//
//  LDNavigationController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDNavigationController: UINavigationController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override class func initialize() {
        // 当导航栏用在LDNavigationController中appearance才会生效
        let navigationBar = UINavigationBar.appearance()
        navigationBar.tintColor = UIColor.themeColor()
        
//        let titleAttrs = NSMutableDictionary()
//        titleAttrs[NSForegroundColorAttributeName] = UIColor.black
//        titleAttrs[NSFontAttributeName] = UIFont.systemFont(ofSize: 17)
//        navigationBar.titleTextAttributes = titleAttrs
    }
    
}
