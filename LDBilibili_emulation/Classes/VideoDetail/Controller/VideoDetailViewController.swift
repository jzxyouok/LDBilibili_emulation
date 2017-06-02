//
//  VideoDetailViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/10.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import Kingfisher
import SnapKit

class VideoDetailViewController: UIViewController {

    var recommend: RecommendObject? {
        didSet{
            
        }
    }
    
    lazy var videoView: UIView = {
        let videoView = UIView()
//        videoView.
        return videoView
    }()
    
    lazy var coverImg: UIImageView = {
        let coverImg = UIImageView()
        self.view.addSubview(coverImg)
        coverImg.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.height.equalTo(210)
            make.width.equalTo(self.view.width)
        })
        return coverImg
    }()
    
    lazy var playBtn: UIButton = {
        let playBtn = UIButton()
        
        playBtn.setImage(UIImage.init(named: "play_btn"), for: UIControlState.normal)
        
        return playBtn
    }()
    
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
