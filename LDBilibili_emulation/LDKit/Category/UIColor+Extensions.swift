//
//  UIColor+Extensions.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/4.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

extension UIColor {
    
    class func colorWithHexValue(hexValue: UInt, alpha: CGFloat) -> UIColor {
        
        let red = CGFloat(((hexValue & 0xFF0000) >> 16) / 255)
        let green = CGFloat(((hexValue & 0xFF00) >> 8) / 255)
        let blue = CGFloat((hexValue & 0xFF) / 255)
        return UIColor(red:red, green:green, blue:blue, alpha:alpha)
    }
    
    class func colorWithHexValue(hexValue: UInt) -> UIColor {
        return UIColor.colorWithHexValue(hexValue: hexValue, alpha: 1.0)
    }
    
}

