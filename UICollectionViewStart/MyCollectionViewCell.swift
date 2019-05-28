//
//  MyCollectionViewCell.swift
//  UICollectionViewStart
//
//  Created by Артем on 5/28/19.
//  Copyright © 2019 Артем. All rights reserved.
//

import UIKit


class MyCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var cellLabel: UILabel!
    @IBOutlet weak var cellImageView: UIImageView!
    
    var menu: Menu? {
        didSet {
            cellLabel.text = menu?.name
            if let image = menu?.imagename {
                cellImageView.image = UIImage(named: image)
            }
        }
    }
    
}
