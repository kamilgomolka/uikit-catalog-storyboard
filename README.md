# Apple UI Catalog — UIKit (Storyboard)

[![CI](https://github.com/kamilgomolka/apple-ui-catalog-uikit-storyboard/actions/workflows/ci.yml/badge.svg)](https://github.com/kamilgomolka/apple-ui-catalog-uikit-storyboard/actions/workflows/ci.yml)
[![Swift](https://img.shields.io/badge/Swift-6.0-F05138.svg)](https://swift.org)
[![Platform](https://img.shields.io/badge/iOS-26.0%2B-000000.svg)](https://developer.apple.com/ios/)
[![Xcode](https://img.shields.io/badge/Xcode-26-1575F9.svg)](https://developer.apple.com/xcode/)
[![License](https://img.shields.io/badge/License-MIT-lightgrey.svg)](LICENSE)

UIKit reference app, built with Storyboard/Xib files. Each view is laid out in Interface Builder, and - if needed - accessed from Swift code. No third-party libraries, no `UIControl` subclasses, no kitchen-sink extensions.

iPhone (portrait) and iPad (all orientations). Light and Dark Mode follow the system appearance.

## What It Shows

The root menu is a tree of nested `MenuItem`s. Each leaf instantiates a `UIViewController` from a Storyboard that configures one UIKit surface and nothing else.

| Demo | What it shows | Key API |
| --- | --- | --- |
| Bars | Navigation bar (small/large titles, grouped, custom `titleView`, buttons, prompt), tab bar (simple, overflow, badge), toolbar (styles, system items, with a table) | `UINavigationBar`, `UINavigationItem`, `UITabBarController`, `UIToolbar`, `UIBarButtonItem` |
| CollectionView | Compositional grid, section headers, badge supplementary views, orthogonal paging | `UICollectionViewCompositionalLayout`, `NSCollectionLayoutSection.orthogonalScrollingBehavior` |
| Controls | Activity indicator, `UIButton.Configuration` (style, size, corner, image placement, toggle), Dynamic Type labels, page control, progress, segmented control, slider, stepper, switch, text field traits, text view editing / data detectors | `UIButton.Configuration`, `UIFont.TextStyle`, `UITextInputTraits`, `UIDataDetectorTypes` |
| Pickers | Date picker styles (wheels, compact, inline) across time, date, date-and-time, and countdown | `UIDatePicker`, `UIDatePickerStyle`, `UIDatePicker.Mode` |
| ScrollView | Vertical, horizontal, both axes, without `contentLayoutGuide`, with keyboard | `UIScrollView`, `contentLayoutGuide`, `KeyboardHelper` |
| TableView | Style, separators, selection, cell style / accessory / insets, headers and footers, section index | `UITableView.Style`, `UITableViewCell.AccessoryType`, `sectionIndexTitles(for:)` |
| ViewController transitions | Show, show detail, modal presentation and transition styles, page sheet, sheet detents | Storyboard segues, `UIModalPresentationStyle`, `UIModalTransitionStyle`, `UISheetPresentationController.Detent` |

## Architecture

Storyboard UIKit — layout lives in Storyboards and XIBs, no third-party dependencies. The scene's `UISceneStoryboardFile` is `MainMenu`: a `UINavigationController` rooted at `MainMenuViewController`. Nested menus push another `MenuViewController`; leaves instantiate the demo Storyboard.

Navigation is data, not a coordinator: `MenuItem` loads a Storyboard by name (and optional view-controller identifier) and pushes it. Transitions are IB segues, not presentation code. Shared bases (`BaseViewController` + `KeyboardHelper`) keep keyboard avoidance out of the demos.

```
Config/
├── Local.xcconfig.example                       # Template for the untracked Local.xcconfig (Team ID)
└── AppleUICatalogUIKitStoryboard.xcconfig       # Platform, Swift, signing, versioning, Info.plist keys

AppleUICatalogUIKitStoryboard/
├── Source/
│   ├── Application/
│   │   ├── AppDelegate.swift
│   │   └── SceneDelegate.swift                  # Empty: the window comes from MainMenu.storyboard
│   ├── Models/
│   ├── Utils/                                   # Keyboard avoidance, bundled mock data
│   └── ViewControllers/
│       ├── Base ViewController/                 # Menu, keyboard-aware base, MenuCell.xib
│       ├── Main Menu/                           # Root catalog + MainMenu.storyboard
│       └── Main Menu ViewControllers/           # One folder per UIKit surface (Storyboard + code)
└── SupportingFiles/
    ├── Assets.xcassets
    ├── Base.lproj/LaunchScreen.storyboard
    └── Info.plist                               # Scene manifest only; the rest comes from xcconfig
```

Xcode's own default warning flags still live in `project.pbxproj`; everything this project decides for itself lives in `Config/`.

## Requirements

- Xcode 26 or later
- iOS 26.0+ (`IPHONEOS_DEPLOYMENT_TARGET`)
- Swift 6 language mode, approachable concurrency, strict memory safety, `MainActor` default isolation

## Getting Started

```bash
git clone https://github.com/kamilgomolka/apple-ui-catalog-uikit-storyboard.git
cd apple-ui-catalog-uikit-storyboard
open AppleUICatalogUIKitStoryboard.xcodeproj
```

Build and run the `AppleUICatalogUIKitStoryboard` scheme on an iOS 26+ Simulator. Signing is not required for the Simulator. To run on a device, copy the local configuration template and fill in your Apple Developer Team ID:

```bash
cp Config/Local.xcconfig.example Config/Local.xcconfig
```

`Config/Local.xcconfig` is untracked, so no Team ID ever lands in version control.

## Tooling

```bash
make build         # compile for the Simulator
make format        # apply swift-format in place
make destinations  # list available Simulator destinations
```

`swift-format` ships with the Xcode toolchain, so there is nothing to install.
Automation: Command `make format` is configured as a Run Script build phase (before Compile Sources), so every build formats sources in place.

Override the Simulator with `make build SIMULATOR='iPhone 17 Pro'`.

## License

MIT — see [LICENSE](LICENSE).
