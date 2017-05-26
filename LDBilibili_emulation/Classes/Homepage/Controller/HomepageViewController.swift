//
//  HomepageViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class HomepageViewController: UIViewController {
    
    override func viewDidLoad() {
        setupChildViewControllers()
        super.viewDidLoad()
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.navigationBar.superview?.sendSubview(toBack: (self.navigationController?.navigationBar)!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.navigationController?.navigationBar.alpha = 0
        self.navigationController?.navigationBar.superview?.sendSubview(toBack: (self.navigationController?.navigationBar)!)
    }
    
    
    func setupChildViewControllers() {
        let lVC = LiveViewController()
        lVC.title = "直播"
        addChildViewController(lVC)
        
        let rVC = RecommendViewController()
        rVC.title = "推荐"
        addChildViewController(rVC)
        
        let bVC = BangumiViewController()
        bVC.title = "追番"
        addChildViewController(bVC)
    }
}
