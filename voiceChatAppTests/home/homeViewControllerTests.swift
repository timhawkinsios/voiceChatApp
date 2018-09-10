//
//  homeViewControllerTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 10/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class homeViewControllerTests: XCTestCase {
    
    var controller: homeViewController!
    
    override func setUp() {
        super.setUp()
        controller = homeViewController()
        controller.startViewLifecycle()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testRadioButtonsPressedSetsCorrectParamsWhenContactsButtonPressed() {
        controller.radioButtonsPressed(sender: controller.contactsButton)
        XCTAssertEqual(controller.contactsButton.titleColor(for: .normal), .white)
        XCTAssertEqual(controller.recentsButton.titleColor(for: .normal), .gray)
        XCTAssertEqual(controller.contactsButton.layer.sublayers?[0].name, "bottomBorder")
        XCTAssertEqual(controller.contactsButton.layer.sublayers?[0].borderColor, UIColor.white.cgColor)
    }
    
    func testRadioButtonsPressedSetsCorrectParamsWhenRecentsButtonPressed() {
        controller.radioButtonsPressed(sender: controller.recentsButton)
        XCTAssertEqual(controller.recentsButton.titleColor(for: .normal), .white)
        XCTAssertEqual(controller.contactsButton.titleColor(for: .normal), .gray)
    }
    
    func testStatusBarStyleIsSetTooLight() {
        XCTAssertEqual(controller.preferredStatusBarStyle, .lightContent)
    }
}
