//
//  LivePlayerViewController.m
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/10.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import "LivePlayerViewController.h"

@interface LivePlayerViewController ()

@end

@implementation LivePlayerViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self installMovieNotificationObservers];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (void)installMovieNotificationObservers
{
//    @weakify(self);
//    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:IJKMPMoviePlayerLoadStateDidChangeNotification object:_player] subscribeNext:^(id x) {
//        @strongify(self);
//        //    MPMovieLoadStateUnknown        = 0,
//        //    MPMovieLoadStatePlayable       = 1 << 0,
//        //    MPMovieLoadStatePlaythroughOK  = 1 << 1, // Playback will be automatically started in this state when shouldAutoplay is YES
//        //    MPMovieLoadStateStalled        = 1 << 2, // Playback will be automatically paused in this state, if started
//        
//        IJKMPMovieLoadState loadState = self.player.loadState;
//        
//        if ((loadState & IJKMPMovieLoadStatePlaythroughOK) != 0) {
//            YPLog(@"loadStateDidChange: IJKMPMovieLoadStatePlaythroughOK: %d\n", (int)loadState);
//        } else if ((loadState & IJKMPMovieLoadStateStalled) != 0) {
//            YPLog(@"loadStateDidChange: IJKMPMovieLoadStateStalled: %d\n", (int)loadState);
//        } else {
//            YPLog(@"loadStateDidChange: ???: %d\n", (int)loadState);
//        }
//    }];
//    
//    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:IJKMPMoviePlayerPlaybackDidFinishNotification object:_player] subscribeNext:^(id x) {
//        //    MPMovieFinishReasonPlaybackEnded,
//        //    MPMovieFinishReasonPlaybackError,
//        //    MPMovieFinishReasonUserExited
//        
//        int reason = [[[x userInfo] valueForKey:IJKMPMoviePlayerPlaybackDidFinishReasonUserInfoKey] intValue];
//        
//        switch (reason)
//        {
//            case IJKMPMovieFinishReasonPlaybackEnded:
//                YPLog(@"playbackStateDidChange: IJKMPMovieFinishReasonPlaybackEnded: %d\n", reason);
//                break;
//                
//            case IJKMPMovieFinishReasonUserExited:
//                YPLog(@"playbackStateDidChange: IJKMPMovieFinishReasonUserExited: %d\n", reason);
//                break;
//                
//            case IJKMPMovieFinishReasonPlaybackError:
//                YPLog(@"playbackStateDidChange: IJKMPMovieFinishReasonPlaybackError: %d\n", reason);
//                break;
//                
//            default:
//                YPLog(@"playbackPlayBackDidFinish: ???: %d\n", reason);
//                break;
//        }
//    }];
//    
//    [[[NSNotificationCenter defaultCenter] rac_addObserverForName:IJKMPMediaPlaybackIsPreparedToPlayDidChangeNotification object:_player] subscribeNext:^(id x) {
//        YPLog(@"mediaIsPreparedToPlayDidChange\n");
//    }];
//    
//    [[YPNotificationCenter rac_addObserverForName:IJKMPMoviePlayerPlaybackStateDidChangeNotification object:_player] subscribeNext:^(id x) {
//        @strongify(self);
//        //    MPMoviePlaybackStateStopped,
//        //    MPMoviePlaybackStatePlaying,
//        //    MPMoviePlaybackStatePaused,
//        //    MPMoviePlaybackStateInterrupted,
//        //    MPMoviePlaybackStateSeekingForward,
//        //    MPMoviePlaybackStateSeekingBackward
//        
//        switch (self.player.playbackState)
//        {
//            case IJKMPMoviePlaybackStateStopped: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: stoped", (int)self.player.playbackState);
//                break;
//            }
//            case IJKMPMoviePlaybackStatePlaying: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: playing", (int)self.player.playbackState);
//                break;
//            }
//            case IJKMPMoviePlaybackStatePaused: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: paused", (int)self.player.playbackState);
//                break;
//            }
//            case IJKMPMoviePlaybackStateInterrupted: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: interrupted", (int)self.player.playbackState);
//                break;
//            }
//            case IJKMPMoviePlaybackStateSeekingForward:
//            case IJKMPMoviePlaybackStateSeekingBackward: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: seeking", (int)self.player.playbackState);
//                break;
//            }
//            default: {
//                YPLog(@"IJKMPMoviePlayBackStateDidChange %d: unknown", (int)self.player.playbackState);
//                break;
//            }
//        }
//    }];
}


@end
