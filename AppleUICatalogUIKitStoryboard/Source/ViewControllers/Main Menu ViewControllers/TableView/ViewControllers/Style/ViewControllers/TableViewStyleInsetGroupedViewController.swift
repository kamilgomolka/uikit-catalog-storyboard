//
//  TableViewStyleInsetGroupedViewController.swift
//  AppleUICatalogUIKitStoryboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import UIKit

class TableViewStyleInsetGroupedViewController: SimpleTableViewController {

    // MARK: - Properties

    @IBOutlet weak var tableViewOutlet: UITableView!

    override var tableView: UITableView {
        tableViewOutlet
    }

    // MARK: - UITableViewDataSource

    override func numberOfSections(in tableView: UITableView) -> Int {
        3
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        3
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)

        cell.textLabel?.text = "IndexPath [\(indexPath.section), \(indexPath.row)]"

        return cell
    }
}
