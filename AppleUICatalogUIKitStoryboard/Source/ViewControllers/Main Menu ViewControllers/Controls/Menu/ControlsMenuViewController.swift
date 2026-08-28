//
//  ControlsMenuViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 30/04/2022.
//

import UIKit

class ControlsMenuViewController: MenuViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    override func createItems() -> [MenuItem] {
        ControlsMenuItems.all
    }
}
