//
//  RecommendViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/15.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class RecommendViewController: UITableViewController {

    let cellIdentifier = "RecommendContentCell"
    var recommendList: Array<RecommendObject> = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.register(RecommendContentCell.classForCoder(), forCellReuseIdentifier: cellIdentifier)
        
        let model = RecommendModel()
        model.getRecommendList { (recommendList) in
            self.recommendList = recommendList
            self.tableView.reloadData()
        }
    }

    // MARK: - UITableViewDataSource
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return recommendList.count
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell: RecommendContentCell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier, for: indexPath) as! RecommendContentCell
        let recommend = recommendList[indexPath.row]
        cell.recommend = recommend

        return cell
    }
    
    // MARK: - UITableViewDelegate
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let recommend = recommendList[indexPath.row]
        let vc = VideoDetailViewController()
        vc.recommend = recommend
        vc.hidesBottomBarWhenPushed = true
        navigationController?.pushViewController(vc, animated: true)
    }

}
