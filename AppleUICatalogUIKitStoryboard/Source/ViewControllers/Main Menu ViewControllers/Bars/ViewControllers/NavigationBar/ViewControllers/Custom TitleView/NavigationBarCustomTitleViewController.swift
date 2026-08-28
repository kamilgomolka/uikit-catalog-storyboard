//
//  NavigationBarCustomTitleViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 20/04/2022.
//

import UIKit

class NavigationBarCustomTitleViewController: BaseNavigationBarViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }
}
