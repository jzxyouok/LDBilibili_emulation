//
//  YPWaterflowLayout.h
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/6/20.
//  Copyright © 2017年 xlDon. All rights reserved.
//

#import <UIKit/UIKit.h>
@class YPWaterflowLayout;

@protocol YPWaterflowLayoutDelegate <NSObject>

@required
- (CGFloat)waterflowLayout:(YPWaterflowLayout *)waterflowLayout heightForItemAtIndex:(NSUInteger)index itemWidth:(CGFloat)itemWidth;

@optional
- (NSUInteger)columnCountInWaterflowLayout:(YPWaterflowLayout *)waterflowLayout;
- (CGFloat)columnMarginInWaterflowLayout:(YPWaterflowLayout *)waterflowLayout;
- (CGFloat)rowMarginInWaterflowLayout:(YPWaterflowLayout *)waterflowLayout;
- (UIEdgeInsets)edgeInsetsInWaterflowLayout:(YPWaterflowLayout *)waterflowLayout;

@end

@interface YPWaterflowLayout : UICollectionViewLayout
@property (nonatomic, weak) id<YPWaterflowLayoutDelegate> delegate;
@end
