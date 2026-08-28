//
//  TableViewSeparatorStyleNoneViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

class TableViewSeparatorStyleNoneViewController: SimpleTableViewController {

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }
}
