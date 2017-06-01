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
        
        // 临时解决方案
        let statusView = UIView.init(frame: CGRect.init(x: 0, y: -20, width: navigationBar.width, height: 20))
        statusView.backgroundColor = UIColor.themeColor()
        navigationBar.addSubview(statusView)
    }
    
    override class func initialize() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        navigationBar.tintColor = UIColor.themeColor()
    }
    
}
