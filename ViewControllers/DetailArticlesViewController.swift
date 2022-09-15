//
//  DetailArticlesViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//


import Foundation
import UIKit

class DetailArticlesViewController: UIViewController {
    
    @IBOutlet weak var textView: UITextView!
    
    var articles: Articles?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        if let articles = articles {
            navigationItem.title = articles.name
            textView.text = articles.textView
        }
    }
}


