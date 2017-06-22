//
//  YPRefreshButton.m
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/22.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import "YPRefreshButton.h"

@interface YPRefreshButton ()

@property (weak, nonatomic) IBOutlet UIImageView *bgImageView;


/** 刷新图标 */
@property (weak, nonatomic) IBOutlet UIImageView *refreshIconImageView;

@end

@implementation YPRefreshButton

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    _bgImageView.layer.cornerRadius = 18;
    _bgImageView.layer.masksToBounds = YES;
}


@end
