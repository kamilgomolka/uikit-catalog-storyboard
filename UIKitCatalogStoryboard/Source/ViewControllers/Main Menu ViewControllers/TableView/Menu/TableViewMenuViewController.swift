//
//  TableViewMenuViewController.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

class TableViewMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        TableViewMenuItems.all
    }
}
