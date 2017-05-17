//
//  LDSubfieldFlowLayout.swift
//  LDBilibili_emulation
//
//  Created by xlDon on 2017/5/17.
//  Copyright © 2017年 xlDon. All rights reserved.
//

import UIKit

class LDSubfieldFlowLayout: UICollectionViewFlowLayout {

    override func prepare() {
        super.prepare()
        
        self.minimumLineSpacing = 0
        self.minimumInteritemSpacing = 0
        
        if ((self.collectionView?.height) != nil) {
            self.itemSize = (self.collectionView?.bounds.size)!
        }
        
        self.scrollDirection = UICollectionViewScrollDirection.horizontal
    }
}
