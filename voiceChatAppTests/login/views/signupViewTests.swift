//
//  signupViewTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class singupViewTests: XCTestCase {
    
    var controller: loginViewController!
    
    override func setUp() {
        super.setUp()
        controller = loginViewController()
        controller.startViewLifecycle()
    }
    
    func testAddsSignUpInputsViewRendersSignUpView() {
        controller.addSignupInputsView()
        XCTAssertNotNil(controller.signUpInputsView)
        XCTAssertNotNil(controller.signUpInputsView.superview)
    }
    
    func testSignUpButtonIsRendered() {
        controller.addFooterButtons()
        XCTAssertNotNil(controller.signUpButton)
        XCTAssertNotNil(controller.signUpButton.superview)
    }
    
    func testSignUpPasswordTextFieldIsRendered() {
        controller.addFooterButtons()
        XCTAssertNotNil(controller.signUpPasswordTextField)
        XCTAssertNotNil(controller.signUpPasswordTextField.superview)
    }
    
    func testSignUpUsernameTextFieldIsRendered() {
        controller.addFooterButtons()
        XCTAssertNotNil(controller.signUpUsernameTextField)
        XCTAssertNotNil(controller.signUpUsernameTextField.superview)
    }
    
    func testEmailIsRendered() {
        controller.addFooterButtons()
        XCTAssertNotNil(controller.emailTextField)
        XCTAssertNotNil(controller.emailTextField.superview)
    }
    
    func testSignUpShowHidePasswordButtonIsRendered() {
        controller.addLoginView()
        XCTAssertNotNil(controller.signUpShowHidePasswordButton)
        XCTAssertNotNil(controller.signUpShowHidePasswordButton.superview)
    }
    
    func testSignupShowHidePasswordButtonCallsShowHidePasswordButtonAction() {
        let actionMethod = self.controller.signUpShowHidePasswordButton.actions(forTarget: self.controller, forControlEvent: UIControlEvents.touchUpInside)
        let actualMethodName = actionMethod?.first
        let expectedMethodName = "showHidePasswordButtonPressedWithSender:"
        XCTAssertEqual(actualMethodName, expectedMethodName)
    }
}
