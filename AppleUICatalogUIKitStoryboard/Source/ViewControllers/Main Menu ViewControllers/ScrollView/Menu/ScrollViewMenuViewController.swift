//
//  ScrollViewMenuViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 06/12/2021.
//

import UIKit

class ScrollViewMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        ScrollViewMenuItems.all
    }
}
