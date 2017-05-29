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
        let lVC = LiveViewController()
        lVC.title = "直播"
        
        let rVC = RecommendViewController()
        rVC.title = "推荐"
        
        let bVC = BangumiViewController()
        bVC.title = "追番"
        
        var style = ZPStyle()
        style.isScrollEnabled = true; //标题是否可以滚动,默认为true;
        style.isShowCover = false    //标题是否显示遮盖,默认为true;
        style.isShowBottomLine = true //标题下方是否显示BottomLine,默认为true;
        style.isNeedScale = true      //标题文字是否缩放,默认为true;
        
        let frame = CGRect(x: 0, y: 0, width: view.bounds.width, height: view.bounds.height)
        let segmentView = ZPSegmentBarView(frame: frame, titles: titles, style: style, childVcs: childVcs, parentVc: self)
        view.addSubview(segmentView)
        
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
}

extension HomepageViewController : ZPPageBarViewDataSource
{
    func numberOfSections(in pageBarView: ZPPageBarView) -> Int {
        return 3
    }
    
    func pageBarView(_ pageBarView: ZPPageBarView, numberOfItemsInSection section: Int) -> Int {
        if section == 0 {
            return 61
        } else if section == 1 {
            return 18
        } else if section == 2 {
            return 40
        }
    }
    
    func pageBarView(_ pageBarView: ZPPageBarView, collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: kCollectionViewCellID, for: indexPath)
        cell.backgroundColor = UIColor.randomColor()
        return cell
    }
}

