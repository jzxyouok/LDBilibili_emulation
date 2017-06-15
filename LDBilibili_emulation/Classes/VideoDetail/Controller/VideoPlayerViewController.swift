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
    var player: IJKMediaPlayback?
    
    init(url: URL) {
        super.init(nibName: nil, bundle: nil)
        self.videoUrl = url
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // 设置Log信息打印
        IJKFFMoviePlayerController.setLogReport(true)
        // 设置Log等级
        IJKFFMoviePlayerController.setLogLevel(k_IJK_LOG_DEBUG)
        // 检查当前FFmpeg版本是否匹配
        IJKFFMoviePlayerController.checkIfFFmpegVersionMatch(true)
        // IJKFFOptions是对视频的配置信息
        let options = IJKFFOptions.byDefault()
        
        player = IJKFFMoviePlayerController.init(contentURL: videoUrl, with: options)
        self.view.addSubview(player!.view)
        player!.scalingMode = IJKMPMovieScalingMode.aspectFit
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        UIApplication.shared.isStatusBarHidden = false
        if !self.player!.isPlaying() {
            self.player!.prepareToPlay()
        }
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
        notificationCenter.addObserver(self, selector: #selector(loadStateDidChange(notification:)), name: NSNotification.Name.IJKMPMoviePlayerLoadStateDidChange, object: self.player)
    }
    
    func loadStateDidChange(notification: NSNotification) {
        let loadState = self.player?.loadState
        print(loadState!)
    }
}
