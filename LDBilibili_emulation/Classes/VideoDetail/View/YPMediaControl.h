//
//  YPMediaControl.h
//  LDBilibili_emulation
//
//  Created by xlDon on 17/6/7.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef void(^YPMediaControlNormalBlock)(void);

// 枚举值，包含水平移动方向和垂直移动方向
typedef NS_ENUM(NSInteger, PanDirection){
    PanDirectionHorizontalMoved, // 横向移动
    PanDirectionVerticalMoved    // 纵向移动
};

@protocol IJKMediaPlayback;

@interface YPMediaControl : UIView

/** 代理播放器 */
@property(nonatomic,weak) id<IJKMediaPlayback> delegatePlayer;

+ (instancetype)mediaControlWithGobackBlock:(YPMediaControlNormalBlock)goBackBlock;

@end
