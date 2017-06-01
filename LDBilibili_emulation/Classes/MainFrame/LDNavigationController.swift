//
//  LDNavigationController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDNavigationController: UINavigationController {
    
    var statusHidden: Bool? {
        didSet{
            self.statusView.isHidden = statusHidden!
        }
    }
    
    // 临时解决方案
    lazy var statusView: UIView = {
        let statusView = UIView.init(frame: CGRect.init(x: 0, y: -20, width: self.navigationBar.width, height: 20))
        statusView.backgroundColor = UIColor.themeColor()
        self.navigationBar.addSubview(statusView)
        return statusView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        statusHidden = false
    }
    
    override class func initialize() {
        let navigationBar = UINavigationBar.appearance()
        navigationBar.titleTextAttributes = [NSForegroundColorAttributeName:UIColor.white]
        navigationBar.tintColor = UIColor.themeColor()
        navigationBar.barTintColor = UIColor.themeColor()
    }
}
