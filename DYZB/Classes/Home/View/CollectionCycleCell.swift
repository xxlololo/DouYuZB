//
//  CollectionCycleCell.swift
//  DYZB
//
//  Created by 1 on 16/9/21.
//  Copyright © 2016年 小码哥. All rights reserved.
//

import UIKit
import Kingfisher

class CollectionCycleCell: UICollectionViewCell {
    
    // MARK: 控件属性
    @IBOutlet weak var iconImageView: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    
    // MARK: 定义模型属性
    var cycleModel : CycleModel? {
        didSet {
            titleLabel.text = cycleModel?.title
            if let iconURL = URL(string: cycleModel?.pic_url ?? "") {
                iconImageView.kf.setImage(with: iconURL)
            } else {
                iconImageView.image = UIImage(named: "Img_default")
            }
        }
    }
}
