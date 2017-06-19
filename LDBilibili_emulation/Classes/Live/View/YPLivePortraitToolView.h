//
//  YPLivePortraitToolView.h
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/19.
//  Copyright © 2017年 xlDon. All rights reserved.
//  直播竖屏工具View

#import <UIKit/UIKit.h>

typedef void(^YPLivePortraitToolViewCallBack)(void);

@protocol IJKMediaPlayback;

@interface YPLivePortraitToolView : UIView

/** 代理播放器 */
@property(nonatomic, weak) id<IJKMediaPlayback> delegatePlayer;

+ (instancetype)livePortraitToolViewWithBackBtnDidTouchCallBack:(YPLivePortraitToolViewCallBack)backBtnCallBack fullScreenBtnDidTouchCallBack:(YPLivePortraitToolViewCallBack)fullScreenBtnCallBack;

@end
