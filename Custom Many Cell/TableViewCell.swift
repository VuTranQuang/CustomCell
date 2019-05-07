//
//  TableViewCell.swift
//  Custom Many Cell
//
//  Created by Vũ on 10/24/18.
//  Copyright © 2018 Vũ. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var imageViewCell: UIImageView!
    @IBOutlet weak var titleLabelCell: UILabel!
    
    func setImages(video: MainImage) {
        imageViewCell.image = video.image
        titleLabelCell.text = video.title
    }
}
