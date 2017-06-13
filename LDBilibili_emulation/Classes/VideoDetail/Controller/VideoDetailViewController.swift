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
            self.coverImg.kf.setImage(with: URL(string: (recommend?.cover)!))
            self.playBtn.setImage(UIImage.init(named: "play_btn"), for: UIControlState.normal)
        }
    }
    
    lazy var videoView: UIView = {
        let videoView = UIView()
        self.view.addSubview(videoView)
        videoView.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.height.equalTo(210)
            make.width.equalTo(self.view.width)
        })
        return videoView
    }()
    
    lazy var coverImg: UIImageView = {
        let coverImg = UIImageView()
        self.videoView.addSubview(coverImg)
        coverImg.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.left.equalTo(0)
            make.bottom.equalTo(0)
            make.right.equalTo(0)
        })
        return coverImg
    }()
    
    lazy var playBtn: UIButton = {
        let playBtn = UIButton()
        self.videoView.addSubview(playBtn)
        playBtn.snp.makeConstraints({ (make) in
            make.bottom.equalTo(-20)
            make.height.equalTo(40)
            make.width.equalTo(50)
            make.right.equalTo(-10)
        })
        playBtn.addTarget(self, action: #selector(playVideo), for: UIControlEvents.touchUpInside)
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
    
    func playVideo(_ button:UIButton) {
        let vc = VideoPlayerViewController()
        self.navigationController.
    }
}
