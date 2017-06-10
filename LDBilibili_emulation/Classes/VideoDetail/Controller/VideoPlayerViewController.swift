//
//  VideoPlayerViewController.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/6.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class VideoPlayerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
//        // 设置Log信息打印
//        [IJKFFMoviePlayerController setLogReport:YES];
//        // 设置Log等级
//        [IJKFFMoviePlayerController setLogLevel:k_IJK_LOG_DEBUG];
//        // 检查当前FFmpeg版本是否匹配
//        [IJKFFMoviePlayerController checkIfFFmpegVersionMatch:YES];
//        
//        // IJKFFOptions 是对视频的配置信息
//        IJKFFOptions *options = [IJKFFOptions optionsByDefault];
//        
//        // 是否要展示配置信息指示器(默认为NO)
//        options.showHudView = NO;
//        
//        // 配置Player
//        self.player = [[IJKFFMoviePlayerController alloc] initWithContentURL:self.url withOptions:options];
//        self.player.view.autoresizingMask = UIViewAutoresizingFlexibleWidth |UIViewAutoresizingFlexibleHeight;
//        self.player.view.frame = self.view.bounds;
//        self.player.scalingMode = IJKMPMovieScalingModeAspectFit;
//        self.player.shouldAutoplay = YES;
//        self.view.autoresizesSubviews = YES;
//        [self.view addSubview:self.player.view];
//        
//        // 视频控制界面
//        YPMediaControl *mediaControl = [YPMediaControl mediaControlWithGobackBlock:^{
//            [self dismissViewControllerAnimated:YES completion:nil];
//            }];
//        mediaControl.frame = self.view.bounds;
//        mediaControl.delegatePlayer = self.player;
//        [self.view addSubview:mediaControl];

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    


}
