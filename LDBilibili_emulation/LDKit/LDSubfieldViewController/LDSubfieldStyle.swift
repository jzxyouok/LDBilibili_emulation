//
//  LDSubfieldStyle.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/18.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

public struct LDSubfieldStyle {
    
    // 标题高度
    let titleViewHeight: CGFloat = 44
    // 标题间隔
    let titleMargin: CGFloat = 20
    // 标题字号
    let titleFont: UIFont = UIFont.systemFont(ofSize: 14)
    
    public var normalColor : UIColor = .white                       //文本普通颜色
    public var selecteColor: UIColor = .orange                     //文本选中颜色
    
    public var isScrollEnabled : Bool = true //标题能否滚动
    public  var  titleMargin : CGFloat  = 20  //能滚动情况下,文字的间距
    
    public var isShowBottomLine : Bool = true //是否显示底部Line
    public   var bottomLineColor : UIColor = .orange //line颜色
    public  var bottomLineHeight : CGFloat = 2 //Line的高度
    
    
    public  var isNeedScale : Bool = true //是否需要缩放动画效果
    public  var maxScale : CGFloat = 1.2 //放大系数;
}
