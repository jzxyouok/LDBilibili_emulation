//
//  RecommendContentCell.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/3.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit
import Kingfisher

class RecommendContentCell: UITableViewCell {

    lazy var coverImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.colorWithHexValue(hexValue: 0xd1d1d1)
        imageView.layer.cornerRadius = 5
        imageView.clipsToBounds = true
        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints({ (make) in
            make.left.equalTo(15)
            make.height.equalTo(90)
            make.width.equalTo(150)
            make.centerY.equalTo(self.contentView)
        })
        
        return imageView
    }()
    
    lazy var vtitleLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.colorWithHexValue(hexValue: 0x333333)
        label.numberOfLines = 2
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.top.equalTo(self.coverImageView)
            make.left.equalTo(self.coverImageView.snp.right).offset(15)
            make.right.equalTo(self.contentView).offset(15)
        })
        
        return label
    }()
    
    lazy var pageViewIcon: UIImageView = {
        let imageView = UIImageView()
        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints({ (make) in
            make.left.equalTo(self.vtitleLabel)
            make.top.equalTo(self.vtitleLabel.snp.bottom).offset(15)
            make.height.equalTo(10)
            make.width.equalTo(15)
        })
        return imageView
    }()
    
    lazy var pageViewLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.colorWithHexValue(hexValue: 0x999999)
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.left.equalTo(self.pageViewIcon.snp.right)
            make.centerY.equalTo(self.pageViewIcon)
        })
        
        return label
    }()
    
    
    var commentCountLabel: UILabel?
    var commentCountIcon: UIImageView?
    var tagLabel: UILabel?
    
    var recommend: RecommendObject? {
        didSet{
            self.coverImageView.kf.setImage(with: URL(string: "https://ss1.baidu.com/6ONXsjip0QIZ8tyhnq/it/u=521967817,670473589&fm=80&w=179&h=119&img.JPEG"))
            self.vtitleLabel.text = recommend?.title
            self.pageViewIcon.image = UIImage(named:"playCount")
            self.pageViewLabel.text = "111111"
        }
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = UITableViewCellSelectionStyle.none
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
