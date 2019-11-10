//
//  TextView.swift
//  Example
//
//  Created by Atsushi Kiwaki on 2019/11/11.
//  Copyright © 2019 Atsushi Kiwaki. All rights reserved.
//

import SwiftUI
#if targetEnvironment(macCatalyst)
import CatalystAdditions
#endif

final class TextView: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<TextView>) -> UITextView {
        let textView = UITextView()

        #if targetEnvironment(macCatalyst)
        textView.focusRingType = .none
        #endif

        return textView
    }

    func updateUIView(_ uiView: UITextView, context: UIViewRepresentableContext<TextView>) {
    }
}
