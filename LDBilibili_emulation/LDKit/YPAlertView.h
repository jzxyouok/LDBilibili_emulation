//
//  YPAlertView.h
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/29.
//  Copyright © 2017年 xlDon. All rights reserved.
//


#import <UIKit/UIKit.h>

/** 按钮点击触发的回调 */
typedef void(^YPAlertViewBlock)(NSInteger buttonIndex);

@interface YPAlertView : UIView

/**
 *  总方法
 */
+ (void)showWithTitle:(NSString *)title message:(NSString *)message cancelButtonTitle:(NSString *)cancelButtonTitle otherButtonTitles:(NSArray *)otherButtonTitles andAction:(YPAlertViewBlock) block andParentView:(UIView *)view;

@end
