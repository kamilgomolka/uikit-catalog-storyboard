//
//  BigNumberCollectionViewCell.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 10/02/2022.
//

import UIKit

class BigNumberCollectionViewCell: UICollectionViewCell {

    // MARK: - Properties

    static let nibName = "BigNumberCollectionViewCell"

    @IBOutlet weak var label: UILabel!

    // MARK: - Lifecycle

    nonisolated override func awakeFromNib() {
        super.awakeFromNib()

        MainActor.assumeIsolated {
            contentView.layer.borderColor = UIColor.systemGray3.cgColor
            contentView.layer.borderWidth = 1.0
            contentView.layer.cornerRadius = 8.0
        }
    }

    // MARK: - Update cell with data

    func updateView(number: Int) {
        label.text = "\(number)"
    }
}
