//
//  UIView+Extensions.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/15.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

extension UIView {
    var left: CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = left
            self.frame = frame
        }
        
        get {
            return self.frame.origin.x
        }
    }
    
    var right: CGFloat {
        set {
            var frame = self.frame
            frame.origin.x = right - frame.size.width
            self.frame = frame
        }
        
        get {
            return self.frame.origin.x + self.frame.size.width
        }
    }
    
    var top: CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = top
            self.frame = frame
        }
        
        get {
            return self.frame.origin.y
        }
    }
    
    var bottom: CGFloat {
        set {
            var frame = self.frame
            frame.origin.y = bottom - frame.size.height
            self.frame = frame
        }
        
        get {
            return self.frame.origin.y + self.frame.size.height
        }
    }
    
    var width: CGFloat {
        set {
            var frame = self.frame
            frame.size.width = width
            self.frame = frame
        }
        get {
            return self.frame.size.width
        }
    }
    
    var height: CGFloat {
        set {
            var frame = self.frame
            frame.size.height = height
            self.frame = frame
        }
        get {
            return self.frame.size.height
        }
    }
    
}
