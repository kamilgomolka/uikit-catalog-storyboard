//
//  TextFieldKeyboardTypeViewController.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 22/01/2022.
//

import UIKit

class TextFieldKeyboardTypeViewController: BaseTextFieldViewController {

    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var stackView: UIStackView!

    override var scrollViewToAdjst: UIScrollView? {
        scrollView
    }

    override var mainStackView: UIStackView? {
        stackView
    }
}
