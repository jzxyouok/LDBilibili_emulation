//
//  HomepageViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/2.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import SnapKit


class HomepageViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    let cellIdentifier = "RecommendContentCell"
    var recommendList: Array<RecommendObject> = []
    
    lazy var tableView: UITableView = {
        
        let tableView = UITableView()
        self.view.addSubview(tableView)
        tableView.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
            make.bottom.equalTo(0)
        })
        tableView.rowHeight = 115
        return tableView
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(RecommendContentCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)

        let model = RecommendModel()
        model.getRecommendList { (recommendList) in
            self.recommendList = recommendList
            self.tableView.reloadData()
        }
    }
    
    // MARK: - UITableViewDataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recommendList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell: RecommendContentCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RecommendContentCell
        
        let recommend = recommendList[indexPath.row]
        cell.recommend = recommend
        
        return cell
    }
    
    // MARK: - UITableViewDelegate
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        var recommend = recommendList[indexPath.row]
        let vc = VideoDetailViewController()
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }
}
