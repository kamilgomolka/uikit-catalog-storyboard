//
//  BarsMenuViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class BarsMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        BarsMenuItems.all
    }
}
