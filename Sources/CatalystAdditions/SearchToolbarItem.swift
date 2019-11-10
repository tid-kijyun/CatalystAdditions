//
//  NSToolbarItem+ext.swift
//  ExtCatalyst
//
//  Created by Atsushi Kiwaki on 2019/11/11.
//  Copyright © 2019 Atsushi Kiwaki. All rights reserved.
//

#if targetEnvironment(macCatalyst)
import SwiftUI

@available(iOS, deprecated: 14.0, message: "There is a possibility that new method have been added to Apple's framework. If so, you should use it.")
public final class SearchToolbarItem: NSToolbarItem {
    public typealias TextChanged = ((String) -> Void)

    private let textChanged: TextChanged

    public init(itemIdentifier: NSToolbarItem.Identifier, textChanged: @escaping TextChanged) {
        self.textChanged = textChanged
        super.init(itemIdentifier: itemIdentifier)

        self.label = "Search"
        self.paletteLabel = "Search"

        let x = NSClassFromString("NSSearchField") as! NSObject.Type
        let searchField = x.init()
        searchField.setValue(self, forKey: "delegate")

        self.setValue(searchField, forKey: "view")
    }
}

extension SearchToolbarItem: WrapNSSearchFieldDelegate {
    private func getSearchText(_ object: Any?) -> String? {
        guard let obj = object as? NSObject,
            obj.isKind(of: NSClassFromString("NSSearchField")!),
            let text = obj.value(forKey: "stringValue") as? String else {
            return nil
        }
        return text
    }

    func controlTextDidChange(_ notification : Notification){
        guard let text = getSearchText(notification.object) else {
            return
        }
        textChanged(text)
    }
}

@objc protocol WrapNSSearchFieldDelegate {
    @objc optional func searchFieldDidStartSearching(_ sender: Any)
    @objc optional func searchFieldDidEndSearching(_ sender: Any)
    @objc optional func controlTextDidChange(_ obj: Notification)
}
#endif
