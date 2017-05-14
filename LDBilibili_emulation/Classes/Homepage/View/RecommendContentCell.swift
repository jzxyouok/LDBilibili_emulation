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
        label.font = UIFont.systemFont(ofSize: 12)
        label.numberOfLines = 2
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.top.equalTo(self.coverImageView)
            make.left.equalTo(self.coverImageView.snp.right).offset(15)
            make.right.equalTo(self.contentView).offset(-15)
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
        label.font = UIFont.systemFont(ofSize: 10)
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.left.equalTo(self.pageViewIcon.snp.right).offset(5)
            make.centerY.equalTo(self.pageViewIcon)
        })
        
        return label
    }()
    
    lazy var commentCountIcon: UIImageView = {
        let imageView = UIImageView()
        self.contentView.addSubview(imageView)
        imageView.snp.makeConstraints({ (make) in
            make.width.equalTo(self.pageViewIcon)
            make.height.equalTo(self.pageViewIcon)
            make.centerY.equalTo(self.pageViewIcon)
            make.left.equalTo(self.pageViewLabel.snp.right).offset(10)
            
        })
        return imageView
    }()
    
    
    lazy var commentCountLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.colorWithHexValue(hexValue: 0x999999)
        label.font = UIFont.systemFont(ofSize: 10)
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.left.equalTo(self.commentCountIcon.snp.right).offset(5)
            make.centerY.equalTo(self.commentCountIcon)
        })
        return label
    }()
    
    lazy var tagLabel: UILabel = {
        let label = UILabel()
        label.textColor = UIColor.colorWithHexValue(hexValue: 0xd5d5d5)
        label.font = UIFont.systemFont(ofSize: 10)
        self.contentView.addSubview(label)
        label.snp.makeConstraints({ (make) in
            make.left.equalTo(self.pageViewIcon)
            make.bottom.equalTo(self.coverImageView)
        })
        return label
    }()
    
    var recommend: RecommendObject? {
        didSet{
            self.coverImageView.kf.setImage(with: URL(string: (recommend?.cover)!))
            self.vtitleLabel.text = recommend?.title
            self.pageViewIcon.image = UIImage(named:"playCount")
            let play = recommend?.play ?? 0;
            self.pageViewLabel.text = String(format:"%d",(play))
            self.commentCountIcon.image = UIImage(named:"commentCount")
            let danmu = recommend?.danmaku ?? 0;
            self.commentCountLabel.text = String(format:"%d",(danmu))
            self.tagLabel.text = recommend?.tname
            showAdView(isShow: recommend?.goto == "ad_web")
        }
    }
    
    func showAdView(isShow: Bool) {
        if isShow {
            self.vtitleLabel.numberOfLines = 1
            self.vtitleLabel.snp.remakeConstraints { (make) in
                make.left.equalTo(15)
                make.right.equalTo(-15)
                make.bottom.equalTo(self.contentView).offset(-10)
            }
            
            self.coverImageView.snp.remakeConstraints { (make) in
                make.top.equalTo(15)
                make.left.equalTo(15)
                make.right.equalTo(-15)
                make.bottom.equalTo(self.vtitleLabel.snp.top).offset(-5)
            }
        }
        else
        {
            self.vtitleLabel.numberOfLines = 2
            self.coverImageView.snp.remakeConstraints({ (make) in
                make.left.equalTo(15)
                make.height.equalTo(90)
                make.width.equalTo(150)
                make.centerY.equalTo(self.contentView)
            })
            
            self.vtitleLabel.snp.remakeConstraints({ (make) in
                make.top.equalTo(self.coverImageView)
                make.left.equalTo(self.coverImageView.snp.right).offset(15)
                make.right.equalTo(self.contentView).offset(-15)
            })
        }
        self.pageViewIcon.isHidden = isShow
        self.pageViewLabel.isHidden = isShow
        self.commentCountIcon.isHidden = isShow
        self.commentCountLabel.isHidden = isShow
        self.tagLabel.isHidden = isShow
        
    }
    
    override init(style: UITableViewCellStyle, reuseIdentifier: String?) {
        super.init(style:style, reuseIdentifier: reuseIdentifier)
        
        selectionStyle = UITableViewCellSelectionStyle.none
        separatorInset = UIEdgeInsets.zero
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

}
