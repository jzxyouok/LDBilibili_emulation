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
        super.viewDidLoad()
        automaticallyAdjustsScrollViewInsets=false
        
        let lVC = LiveViewController()
        let rVC = RecommendViewController()
        let bVC = BangumiViewController()
        
        let vList = [lVC, rVC, bVC]
        let tList = ["直播", "推荐", "追番"]
        
        var style = ZPStyle()
        style.isScrollEnabled = true
        style.isShowBottomLine = true
        style.isNeedScale = true
        style.isNeedCenter = true
        style.titleViewBackgroundColor = UIColor.themeColor()
        
        let frame = CGRect(x: 0, y: 0, width: view.width, height: view.height - 69)
        let segmentView = ZPSegmentBarView(frame: frame, titles: tList, style: style, childVcs: vList, parentVc: self)
        view.addSubview(segmentView)
        view.bringSubview(toFront: segmentView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        self.navigationController?.navigationBar.superview?.sendSubview(toBack: (self.navigationController?.navigationBar)!)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        self.navigationController?.navigationBar.superview?.sendSubview(toBack: (self.navigationController?.navigationBar)!)
    }
}
