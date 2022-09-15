//
//  ComplexTableViewController.swift
//  VirtualRealtor
//
//  Created by Антон Павлов on 15.09.2022.
//

import Foundation
import UIKit

class ComplexTableViewController: UITableViewController {
    
    private var complex = Complex.createComplex()
    private let cellIdentifier: String = "tableCell"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupUI()
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "recipeDetail",
           let indexPath = tableView?.indexPathForSelectedRow,
           let destinationViewController: DetailViewController = segue.destination as? DetailViewController {
            destinationViewController.complex = complex[indexPath.row]
        }
    }
}

extension ComplexTableViewController {
    
    private func setupUI() {
        navigationItem.backBarButtonItem = UIBarButtonItem(title: "", style: .done, target: self, action: nil)
        navigationItem.title = "Комплексы"
        tableView.reloadData()
    }
}

extension ComplexTableViewController {
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return complex.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentifier) as? TableCell {
            cell.configurateTheCell(complex[indexPath.row])
            return cell
        }
        return UITableViewCell()
    }
}
