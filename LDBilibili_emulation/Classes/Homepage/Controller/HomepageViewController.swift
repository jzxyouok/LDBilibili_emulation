//
//  HomepageViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import SnapKit


class HomepageViewController: UIViewController, UITableViewDataSource {
    
    let cellIdentifier = "RecommendContentCell"
    
    lazy var tableView: UITableView = {
        
        let tableView = UITableView()
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        })
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self as? UITableViewDelegate
        tableView.dataSource = self
        tableView.register(RecommendContentCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)

        let model = RecommendModel()
        model.getRecommendList()
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath)
        cell.textLabel?.text = "测试！！"
        
        return cell
    }
    
}
