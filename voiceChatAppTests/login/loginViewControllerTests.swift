//
//  loginViewControllerTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class loginViewControllerTests: XCTestCase {
    
    var controller: loginViewController!
    
    override func setUp() {
        super.setUp()
        controller = loginViewController()
        controller.startViewLifecycle()
    }
    
    func testPasswordIsInitiallySecureText() {
        XCTAssertEqual(controller.passwordTextField.isSecureTextEntry, true)
    }
    
    func testShowHidePasswordButtonPressedShowsPasswordWhenItIsHidden() {
        controller.showHidePasswordButtonPressed()
    }
}
