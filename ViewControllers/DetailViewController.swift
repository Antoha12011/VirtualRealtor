//
//  DetailViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import Foundation
import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet var imageView: UIImageView!
    @IBOutlet weak var textView: UITextView!
    
    var complex: Complex?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let complex = complex {
            navigationItem.title = complex.name
            imageView.image = UIImage(named: complex.picName)
            textView.text = complex.textView
        }
    }
}

