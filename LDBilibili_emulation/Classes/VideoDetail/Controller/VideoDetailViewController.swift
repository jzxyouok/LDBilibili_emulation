//
//  VideoDetailViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/10.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class VideoDetailViewController: UIViewController {

    var recommend: RecommendObject?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let nav = self.navigationController as! LDNavigationController
        nav.statusHidden = true
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        let nav = self.navigationController as! LDNavigationController
        nav.statusHidden = false
    }
}
