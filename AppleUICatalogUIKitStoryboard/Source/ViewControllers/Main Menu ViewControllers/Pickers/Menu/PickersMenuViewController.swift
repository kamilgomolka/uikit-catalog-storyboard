//
//  PickersMenuViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 22/05/2022.
//

import UIKit

class PickersMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        PickersMenuItem.all
    }
}
