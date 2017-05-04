//
//  RecommendContentCell.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/3.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class RecommendContentCell: UITableViewCell {

    lazy var coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.colorWithHexValue(hexValue: 0xd1d1d1, alpha: 1.0)
        
        return imageView
    }()
    var titleLabel: UILabel?
    var pageViewLabel: UILabel?
    var pageViewIcon: UIImageView?
    var commentCountLabel: UILabel?
    var commentCountIcon: UIImageView?
    var tagLabel: UILabel?
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        
        self.coverImageView = UIImageView()
        self.titleLabel = UILabel()
        self.pageViewLabel = UILabel()
        self.pageViewIcon = UIImageView()
        self.commentCountLabel = UILabel()
        self.commentCountIcon = UIImageView()
        self.tagLabel = UILabel()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
