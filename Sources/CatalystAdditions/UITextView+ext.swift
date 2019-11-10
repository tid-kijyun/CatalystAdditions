//
//  UITextView+ext.swift
//  CatalystAdditions
//
//  Created by Atsushi Kiwaki on 2019/11/11.
//  Copyright © 2019 Atsushi Kiwaki. All rights reserved.
//

#if targetEnvironment(macCatalyst)
import SwiftUI

extension UITextView {
    public enum FocusRingType: UInt {
        case `default` = 0
        case none      = 1
        case exterior  = 2
    }

    @available(iOS, deprecated: 14.0, message: "There is a possibility that new method have been added to Apple's framework. If so, you should use it.")
    public var focusRingType: FocusRingType {
        get {
            guard let v = value(forKey: "focusRingType") as? UInt,
            let type = FocusRingType(rawValue: v) else {
                return .default
            }
            return type
        }

        set {
            setValue(newValue.rawValue, forKey: "focusRingType")
        }
    }
}
#endif
