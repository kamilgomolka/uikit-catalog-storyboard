//
//  PickersMenuItem.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 22/05/2022.
//

import Foundation

struct PickersMenuItem {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Date picker",
                storyboardName: "DatePicker"
            )
            //			MenuItem(
            //				name: "PickerView",
            //				storyboardName: "PickerViewMenu"
            //			)
        ]
    }
}
