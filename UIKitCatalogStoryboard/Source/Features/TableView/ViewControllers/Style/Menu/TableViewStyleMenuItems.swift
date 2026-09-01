//
//  TableViewStyleMenuItems.swift
//  UIKitCatalogStoryboard
//
//  Created by Kamil Gomółka on 28/01/2022.
//

import Foundation

struct TableViewStyleMenuItems {

    static var all: [MenuItem] {
        [
            MenuItem(
                name: "Plain",
                storyboardName: "TableView",
                viewControllerIdentifier: "TableViewStylePlainViewController"
            ),
            MenuItem(
                name: "Grouped",
                storyboardName: "TableView",
                viewControllerIdentifier: "TableViewStyleGroupedViewController"
            ),
            MenuItem(
                name: "Inset grouped",
                storyboardName: "TableView",
                viewControllerIdentifier: "TableViewStyleInsetGroupedViewController"
            ),
        ]
    }
}
