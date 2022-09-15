//
//  ArticlesTableViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import UIKit
import Foundation

class ArticlesTableViewController: UITableViewController {
    
    private var articles = Articles.createArticles()
    private let cellIdentifier: String = "tableCellArticles"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detail",
           let indexPath = tableView?.indexPathForSelectedRow,
           let destinationViewController: DetailArticlesViewController = segue.destination as? DetailArticlesViewController {
            destinationViewController.articles = articles[indexPath.row]
        }
    }
}

extension ArticlesTableViewController {
    private func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        navigationItem.title = "Статьи"
        tableView.reloadData()
    }
    
}

extension ArticlesTableViewController {
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return articles.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TableCellArticles {
            cell.configurateCell(articles[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
