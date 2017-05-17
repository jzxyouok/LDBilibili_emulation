//
//  LDSubfieldViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/15.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDSubfieldViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    // 索引控制器
    var selectIndex: NSInteger? {
        didSet {
            
        
        }
    }
    
    lazy var contentView: UIView = {
        var view = UIView()
        self.view.addSubview(view)
        return view
    }()
    
    lazy var contentScrollView: UICollectionView = {
        var collectionView = UICollectionView()
        var flowLayout = LDSubfieldFlowLayout()
        collectionView.collectionViewLayout = flowLayout
        collectionView.isPagingEnabled = true
        collectionView.bounces = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.scrollsToTop = false
        collectionView.backgroundColor = self.view.backgroundColor
        
        self.contentView.addSubview(collectionView)
        return collectionView
    }()
    
    lazy var titleScrollView: UIScrollView = {
        var scrollView = UIScrollView()
        
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    // MARK - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.childViewControllers.count
    }
    
//    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
//        <#code#>
//    }
    
}
