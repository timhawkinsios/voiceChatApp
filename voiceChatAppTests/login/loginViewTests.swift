//
//  loginViewTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

extension loginViewController {
    
    func startViewLifecycle() {
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
}

class loginViewTests: XCTestCase {
    
    var controller: loginViewController!
    
    override func setUp() {
        super.setUp()
        controller = loginViewController()
        controller.startViewLifecycle()
    }
    
    func testAddLoginViewRendersLoginView() {
        controller.addLoginView()
        XCTAssertNotNil(controller.loginInputsView)
        XCTAssertNotNil(controller.loginInputsView.superview)
    }
    
    func testUserNameTextInputIsRendered() {
        controller.addLoginView()
        XCTAssertNotNil(controller.usernameTextField)
        XCTAssertNotNil(controller.usernameTextField.superview)
    }
}
