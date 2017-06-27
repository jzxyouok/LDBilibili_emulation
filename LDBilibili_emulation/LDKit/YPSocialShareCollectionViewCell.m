//
//  YPSocialShareCollectionViewCell.m
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/27.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import "YPSocialShareCollectionViewCell.h"
#import "YPSocialShareModel.h"

@interface YPSocialShareCollectionViewCell ()
@property (weak, nonatomic) IBOutlet UIImageView *iconImageView;
@property (weak, nonatomic) IBOutlet UILabel *titleLabel;

@end

@implementation YPSocialShareCollectionViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
}

- (void)setModel:(YPSocialShareModel *)model
{
    _model = model;
    
    _iconImageView.image = [UIImage imageNamed:model.image];
    _titleLabel.text = model.title;
}

@end
