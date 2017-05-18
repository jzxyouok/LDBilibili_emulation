//
//  LDSubfieldViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/15.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDSubfieldViewController: UIViewController, UICollectionViewDataSource, UICollectionViewDelegate {

    let cellIdentity = "LDSubfieldCell"
    let style = LDSubfieldStyle()
    let statusHeight = UIApplication.shared.statusBarFrame.size.height
    
    // 索引控制器
    var selectIndex: NSInteger? {
        didSet {
            
        
        }
    }
    
    lazy var contentView: UIView = {
        var view = UIView()
        view.frame = self.view.frame
        self.view.addSubview(view)
        return view
    }()
    
    lazy var contentScrollView: UICollectionView = {
        var flowLayout = LDSubfieldFlowLayout()
        let frame = CGRect.init(x: 0, y: self.style.titleViewHeight + self.statusHeight, width: self.view.width, height: self.view.height)
        var collectionView = UICollectionView.init(frame: frame, collectionViewLayout: flowLayout)
        self.contentView.addSubview(collectionView)
        collectionView.collectionViewLayout = flowLayout
        collectionView.isPagingEnabled = true
        collectionView.bounces = false
        collectionView.showsHorizontalScrollIndicator = false
        collectionView.delegate = self
        collectionView.dataSource = self
        collectionView.scrollsToTop = false
        collectionView.backgroundColor = self.view.backgroundColor
        collectionView.register(UICollectionViewCell.classForCoder(), forCellWithReuseIdentifier: self.cellIdentity)
        return collectionView
    }()
    
    lazy var titleScrollView: UIScrollView = {
        var scrollView = UIScrollView()
        let frame = CGRect.init(x: 0, y: self.statusHeight, width: self.view.width, height: self.style.titleViewHeight)
        scrollView.frame = frame
        self.contentView.addSubview(scrollView)
        return scrollView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTitleView()
    }

    func setupTitleView() {
        let count = self.childViewControllers.count
        var titleLabelX : CGFloat = 0
        for index in 0...count-1 {
            
            let label = UILabel()
            let vc = self.childViewControllers[index]
            label.font = style.titleFont
            label.text = vc.title
            let titleLabelW = (label.text! as NSString).boundingRect(with: CGSize(width: CGFloat(MAXFLOAT), height: 0), options: .usesLineFragmentOrigin, attributes: [NSFontAttributeName : style.titleFont], context: nil).width
            label.frame = CGRect.init(x: titleLabelX, y: 0, width: titleLabelW, height: style.titleViewHeight)
            self.titleScrollView.addSubview(label)
            
            titleLabelX = style.titleMargin + label.right
        }
    }
    
    // MARK: - UICollectionViewDataSource
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.childViewControllers.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentity, for: indexPath)
//        cell.contentView.subviews.forEach { (view) in
//            print(view)
//            view.removeFromSuperview()
//        }
        let vc = self.childViewControllers[indexPath.row]
        vc.view.frame = self.view.frame
        cell.contentView.addSubview(vc.view)
        
        let bottom = self.tabBarController != nil ? 49 : 0
        let top = self.titleScrollView.bottom
        
        if vc.isKind(of: UITableViewController.classForCoder()) {
            let tableViewVC =  vc as! UITableViewController
            tableViewVC.tableView.contentInset = UIEdgeInsetsMake(top, 0, CGFloat(bottom), 0)
        }
        
        return cell
    }
    
}
