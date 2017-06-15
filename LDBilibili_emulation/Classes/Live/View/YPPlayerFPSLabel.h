//
//  YPPlayerFPSLabel.h
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/15.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <IJKMediaFramework/IJKMediaFramework.h>

@interface YPPlayerFPSLabel : UILabel

@property (nonatomic, weak) IJKFFMoviePlayerController *player;

+ (instancetype)shareFPSLabel;

+ (void)show;

+ (void)dismiss;

@end
