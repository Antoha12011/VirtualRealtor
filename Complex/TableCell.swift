//
//  TableCell.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import Foundation
import UIKit

class TableCell: UITableViewCell {
    
    @IBOutlet private var nameLabel: UILabel!
    @IBOutlet private var prepTimeLabel: UILabel!
    @IBOutlet private var thumbnailImageView: UIImageView!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
        prepTimeLabel.text = nil
        thumbnailImageView.image = nil
    }
    
    func configurateTheCell(_ complex: Complex) {
        nameLabel.text = complex.name
        prepTimeLabel.text = complex.textView
        thumbnailImageView.image = UIImage(named: complex.picName)
    }
}
