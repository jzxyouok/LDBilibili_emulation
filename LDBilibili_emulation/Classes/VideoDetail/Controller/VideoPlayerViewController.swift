//
//  VideoPlayerViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/6.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import SnapKit

class VideoPlayerViewController: UIViewController {

    var videoUrl: URL?
    weak var player: IJKMediaPlayback?
    
    init(url: URL) {
        super.init(nibName: nil, bundle: nil)
        self.videoUrl = url
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 检查当前FFmpeg版本是否匹配
        IJKFFMoviePlayerController.checkIfFFmpegVersionMatch(true)
        // IJKFFOptions是对视频的配置信息
        let options = IJKFFOptions.byDefault()
        
        player = IJKFFMoviePlayerController.init(contentURL: videoUrl, with: options)
        view.addSubview((player?.view)!)
        player?.view.snp.makeConstraints({ (make) in
            make.top.equalTo(0)
            make.bottom.equalTo(0)
            make.left.equalTo(0)
            make.right.equalTo(0)
        })
        player?.scalingMode = IJKMPMovieScalingMode.aspectFit
        player?.shouldAutoplay = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.isStatusBarHidden = false
        player?.prepareToPlay()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        
        UIApplication.shared.isStatusBarHidden = false
        player?.shutdown()
    }
    
    class func presentFromViewController(viewController: UIViewController, url: URL, animated: Bool) {
        viewController.present(VideoPlayerViewController.init(url: url), animated: animated, completion: nil)
    }
    
    func addMovieNotificationObservers() {
        let notificationCenter = NotificationCenter.default
        notificationCenter.addObserver(self, selector: #selector(moviePlayerLoadStateDidChange), name: NSNotification.Name.IJKMPMoviePlayerLoadStateDidChange, object: self.player)
    }
    
    func moviePlayerLoadStateDidChange() {
//        let loadState = self.player?.loadState
//        print(Int(loadState))
    }
}
