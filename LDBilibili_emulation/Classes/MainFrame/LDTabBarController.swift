//
//  LDTabBarController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tabBar.tintColor = UIColor.themeColor()
        addChildViewController(childViewController: HomepageViewController(), title: "首页", selectImage: "home_tab")
    }
    
    func addChildViewController(childViewController: UIViewController, title: NSString, selectImage: NSString) {
        
        childViewController.title = title as String
        childViewController.tabBarItem.image = UIImage(named:selectImage as String)
        childViewController.tabBarItem.selectedImage = UIImage(named:selectImage as String)
        
        let nav = LDNavigationController(rootViewController:childViewController)
        addChildViewController(nav)
    }
}
