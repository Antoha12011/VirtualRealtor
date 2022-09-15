//
//  TableCellArticles.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import Foundation
import UIKit

class TableCellArticles: UITableViewCell {
    
    @IBOutlet private var nameLabel: UILabel!
    
    override func prepareForReuse() {
        super.prepareForReuse()
        nameLabel.text = nil
    }
    
    func configurateCell(_ articles: Articles) {
        nameLabel.text = articles.name
    }
}
