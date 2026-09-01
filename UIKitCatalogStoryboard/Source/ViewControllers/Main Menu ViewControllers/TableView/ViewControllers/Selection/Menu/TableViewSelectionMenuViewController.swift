//
//  TableViewSelectionMenuViewController.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

class TableViewSelectionMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        TableViewSelectionMenuItems.all
    }
}
