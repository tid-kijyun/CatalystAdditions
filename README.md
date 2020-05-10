# CatalystAdditions

[![GitHub release](https://img.shields.io/github/release/tid-kijyun/CatalystAdditions.svg)](https://github.com/tid-kijyun/CatalystAdditions/releases)
[![Swift Package Manager](https://img.shields.io/badge/Swift%20Package%20Manager-compatible-brightgreen.svg)](https://github.com/apple/swift-package-manager)

CatalystAdditions implements missing features in Mac Catalyst.

:warning: **Using this library may be rejected by AppStore reviews.** :warning: 

## Requirements
* Swift 5.1 or later
* iOS 13.0 or later
* macOS 10.15 or later

## Installation
We can add to your project using Swift Package Manager.

## Usage
All relevant code must be enclosed in a preprocessor, as shown below:

```swift
#if targetEnvironment(macCatalyst)
import CatalystAdditions
#endif

#if targetEnvironment(macCatalyst)
// use module APIs
#endif
```

### Put NSSearchField in the NSToolbar

```swift
let item = SearchToolbarItem(itemIdentifier: .search) { text in
    // do something
}
let item = SearchToolbarItem(itemIdentifier: .search, textChanged: { (textChanged) in
    // update search results as the user is typing
}) { (textReturned) in
    // update search results only after return/enter key is pressed
}
```
<details><summary>Screenshot</summary>

![Screen Shot 2019-11-11 at 10 12 44](https://user-images.githubusercontent.com/1665104/68554496-eea4a200-046b-11ea-9010-b9a2d3b423b8.png)
</details>

### Setting focus ring to UITextView
In the current Catalyst, UITextView cannot set the focus ring.
By default, the focus ring is displayed.

```swift
let textView: UITextView // A properly initialized TextView
textView.focusRingType = .none
```
