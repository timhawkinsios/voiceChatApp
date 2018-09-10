//
//  UIButtonTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 09/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class UIButtonTests: XCTestCase {
    
    var button: UIButton!
    
    override func setUp() {
        super.setUp()
        button = UIButton()
    }
    
    func testAddBorderToBottomAddsBorderToButton() {
        button.addBorderToBottom(colour: .white)
        XCTAssertEqual(button.layer.sublayers?[0].name, "bottomBorder")
        XCTAssertEqual(button.layer.sublayers?[0].borderColor, UIColor.white.cgColor)
    }
    
    func testRemoveBordersRemovesTheBottomBorder() {
        button.addBorderToBottom(colour: .white)
        XCTAssertEqual(button.layer.sublayers?.count, 1)
        button.removeBorders()
        XCTAssertNil(button.layer.sublayers?.count)
    }
}
