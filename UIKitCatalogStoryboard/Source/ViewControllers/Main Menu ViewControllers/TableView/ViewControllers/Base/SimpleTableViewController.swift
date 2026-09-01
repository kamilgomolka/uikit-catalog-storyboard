//
//  SimpleTableViewController.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 31/01/2022.
//

import UIKit

class SimpleTableViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {

    // MARK: - Properties

    let cellNibName = "SimpleTableViewCell"

    var tableView: UITableView {
        fatalError("Please override 'var tableView' in subclass!")
    }

    // MARK: - Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        tableView.dataSource = self
        tableView.register(UINib(nibName: cellNibName, bundle: nil), forCellReuseIdentifier: cellNibName)
        tableView.tableHeaderView = UIView(
            frame: CGRect(x: 0, y: 0, width: 0, height: CGFloat.leastNormalMagnitude)
        )
    }

    // MARK: - UITableViewDataSource

    func numberOfSections(in tableView: UITableView) -> Int {
        1
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        10
    }

    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellNibName, for: indexPath)

        cell.textLabel?.text = "Cell number \(indexPath.row)"

        return cell
    }

    // MARK: - UITableViewDelegate

    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}
