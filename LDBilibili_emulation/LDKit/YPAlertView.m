//
//  YPAlertView.m
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/29.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import "YPAlertView.h"

static inline BOOL versionBigger9()
{
    float sysVersion = [[UIDevice currentDevice].systemVersion floatValue];
    
    if (sysVersion >= 9.0) {
        return YES;
    } else {
        return NO;
    }
}

@interface UIView (YPSearchVcExtend)

- (UIViewController *)viewController;

@end

@implementation UIView (YPSearchVcExtend)

- (UIViewController*)viewController {
    for (UIView* next = self; next; next = next.superview) {
        UIResponder* nextResponder = [next nextResponder];
        if ([nextResponder isKindOfClass:[UIViewController class]]) {
            return (UIViewController*)nextResponder;
        }
    }
    return nil;
}
@end


@interface YPAlertView () <UIAlertViewDelegate>

/** 按钮点击触发的回调 */
@property (nonatomic, copy) YPAlertViewBlock block;

@end

@implementation YPAlertView

#pragma mark - Life Cycle -
- (instancetype)initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        [self setup];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)aDecoder
{
    if (self = [super initWithCoder:aDecoder]) {
        [self setup];
        
    }
    return self;
}

- (void)setup
{
    self.backgroundColor = [[UIColor alloc] initWithRed:0 green:0 blue:0 alpha:0.1];
}

- (void)willMoveToSuperview:(UIView *)newSuperview
{
    [super willMoveToSuperview:newSuperview];
    
    self.frame = newSuperview.bounds;
}

- (void)layoutSubviews
{
    [super layoutSubviews];
}

#pragma mark - 私有方法 -
- (void)showWithTitle:(NSString *)title andMessage:(NSString *)message andCancelButtonTitle:(NSString *)cancelButtonTitle andOtherButtonTitles:(NSArray *)otherButtonTitles;
{
    UIAlertView *alertView = [[UIAlertView alloc] initWithTitle:title message:message delegate:self cancelButtonTitle:cancelButtonTitle otherButtonTitles:nil];
    
    for (NSString *otherTitle in otherButtonTitles) {
        [alertView addButtonWithTitle:otherTitle];
    }
    
    [alertView show];
}

@end
