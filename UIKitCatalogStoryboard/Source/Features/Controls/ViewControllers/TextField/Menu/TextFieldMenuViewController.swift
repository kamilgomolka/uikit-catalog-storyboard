//
//  TextFieldMenuViewController.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 21/01/2022.
//

import UIKit

class TextFieldMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        TextFieldMenuItems.all
    }
}
