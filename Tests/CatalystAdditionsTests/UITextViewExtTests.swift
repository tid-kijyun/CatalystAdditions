//
//  UITextViewExt.swift
//  CatalystAdditionsTests
//
//  Created by Atsushi Kiwaki on 2019/11/11.
//  Copyright © 2019 Atsushi Kiwaki. All rights reserved.
//

import XCTest
@testable import CatalystAdditions

class UITextViewExtTests: XCTestCase {

    override func setUp() {
    }

    override func tearDown() {
    }

    func testExample() {
        let textView = UITextView()
        XCTAssertEqual(textView.focusRingType, .default)
        textView.focusRingType = .none
        XCTAssertEqual(textView.focusRingType, .none)

        textView.focusRingType = .exterior
        XCTAssertEqual(textView.focusRingType, .exterior)
    }

}
