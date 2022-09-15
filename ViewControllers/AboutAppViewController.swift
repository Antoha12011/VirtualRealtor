//
//  AboutAppViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import Foundation
import UIKit

class AboutAppViewController: UIViewController {
    
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        image.layer.cornerRadius = image.frame.size.width / 2
        image.clipsToBounds = true
    }
    
    
    @IBAction func linkToTelegram(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https:t.me/PavlovAnton1999")! , options: [:], completionHandler: nil)
    }
    @IBAction func linkToGitHub(_ sender: UIButton) {
        UIApplication.shared.open(URL(string: "https://github.com/Antoha12011")! , options: [:], completionHandler: nil)
    }
}

