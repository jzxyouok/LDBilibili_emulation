//
//  YPBufferingProgressView.h
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/19.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface YPBufferingProgressView : UIView

+ (instancetype)shareInstance;

+ (void)showInView:(UIView *)view;

+ (void)dismiss;

@property (nonatomic, assign) NSUInteger progress;

@end
