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
    
    func testPasswordTextFieldIsRendered() {
        controller.addLoginView()
        XCTAssertNotNil(controller.passwordTextField)
        XCTAssertNotNil(controller.passwordTextField.superview)
    }
    
    func testShowHidePasswordButtonIsRendered() {
        controller.addLoginView()
        XCTAssertNotNil(controller.showHidePasswordButton)
        XCTAssertNotNil(controller.showHidePasswordButton.superview)
    }
    
    func testShowHidePasswordButtonCallsShowHidePasswordButtonAction() {
        let actionMethod = self.controller.showHidePasswordButton.actions(forTarget: self.controller, forControlEvent: UIControlEvents.touchUpInside)
        let actualMethodName = actionMethod?.first
        let expectedMethodName = "showHidePasswordButtonPressedWithSender:"
        XCTAssertEqual(actualMethodName, expectedMethodName)
    }
    
    func testLoginButtonIsRendered() {
        controller.addLoginView()
        XCTAssertNotNil(controller.loginButton)
        XCTAssertNotNil(controller.loginButton.superview)
    }
    
    func testSignUpButtonIsRendered() {
        controller.addFooterButtons()
        XCTAssertNotNil(controller.createAccountButton)
        XCTAssertNotNil(controller.createAccountButton.superview)
    }
    
    func testSignUpButtonCallsSignUpButtonPressed() {
        let actionMethod = self.controller.createAccountButton.actions(forTarget: self.controller, forControlEvent: UIControlEvents.touchUpInside)
        let actualMethodName = actionMethod?.first
        let expectedMethodName = "createAccountButtonPressed"
        XCTAssertEqual(actualMethodName, expectedMethodName)
    }
}
