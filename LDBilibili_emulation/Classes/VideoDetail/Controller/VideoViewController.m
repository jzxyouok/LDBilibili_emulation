//
//  VideoViewController.m
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/8.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import "VideoViewController.h"
#import <AVFoundation/AVFoundation.h>
#import <MediaPlayer/MediaPlayer.h>

@interface VideoViewController ()

@property (nonatomic, strong) AVPlayer *player;
@property (nonatomic, strong) MPMoviePlayerController *playerController;
@property (nonatomic, strong) MPMoviePlayerViewController *playerVc;

@end

@implementation VideoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}

- (MPMoviePlayerViewController *)playerVc
{
    if (!_playerVc) {
        
        // 1.获取url(远程/本地)
        NSURL *url = [NSURL URLWithString:@"http:v1.mukewang.com/a45016f4-08d6-4277-abe6-bcfd5244c201/L.mp4"];
        
        _playerVc = [[MPMoviePlayerViewController alloc] initWithContentURL:url];
    }
    return _playerVc;
}

- (MPMoviePlayerController *)playerController
{
    if (!_playerController) {
        // 1.获取url(远程/本地)
        NSURL *url = [NSURL URLWithString:@"http:v1.mukewang.com/a45016f4-08d6-4277-abe6-bcfd5244c201/L.mp4"];
        
        // 2.创建控制器
        _playerController = [[MPMoviePlayerController alloc] initWithContentURL:url];
        
        // 3.设置控制器view的位置
        _playerController.view.frame = CGRectMake(0, 0, self.view.width, self.view.width * 9 / 16);
        
        // 4.将view添加到控制器上
        [self.view addSubview:_playerController.view];
    }
    return _playerController;
}

- (AVPlayer *)player
{
    if (!_player) {
        
        // 1.获取url(远程/本地)
        NSURL *url = [NSURL URLWithString:@"http:v1.mukewang.com/a45016f4-08d6-4277-abe6-bcfd5244c201/L.mp4"];
        // 2.创建AVPlayerItem
        AVPlayerItem *item = [AVPlayerItem playerItemWithURL:url];
        // 3.创建AVPlayer
        _player = [AVPlayer playerWithPlayerItem:item];
        
        // 4.添加AVPlayerLayer
        AVPlayerLayer *layer = [AVPlayerLayer playerLayerWithPlayer:_player];
        layer.frame = CGRectMake(0, 0, self.view.bounds.size.width, self.view.bounds.size.width * 9 / 16);
        [self.view.layer addSublayer:layer];
    }
    return _player;
}


@end
