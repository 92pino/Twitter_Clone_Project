//
//  TweetCell.swift
//  Twitter_Clone_App
//
//  Created by JinBae Jeong on 2020/03/29.
//  Copyright © 2020 pino. All rights reserved.
//

import UIKit

class TweetCell: UICollectionViewCell {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        backgroundColor = .red
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
