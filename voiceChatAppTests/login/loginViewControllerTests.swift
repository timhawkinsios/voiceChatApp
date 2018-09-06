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
    
    func testPasswordIsNotSecureTextWhenShowHidePasswordButtonPressed() {
        controller.showHidePasswordButtonPressed()
        XCTAssertEqual(controller.passwordTextField.isSecureTextEntry, false)
    }
    
    func testPasswordIsSecureTextWhenShowHidePasswordButtonPressedTwice() {
        controller.showHidePasswordButtonPressed()
        XCTAssertEqual(controller.passwordTextField.isSecureTextEntry, false)
        controller.showHidePasswordButtonPressed()
        XCTAssertEqual(controller.passwordTextField.isSecureTextEntry, true)
    }
    
    func testCreateAccountButtonPressedHidesLoginViewAndShowsSignUpView() {
        controller.createAccountButtonPressed()
        XCTAssertEqual(controller.loginInputsView.isHidden, true)
        XCTAssertEqual(controller.signupInputsView.isHidden, false)
    }
    
    func testCreateAccountButtonPressedTwiceHidesSignupViewAndShowsLoginView() {
        controller.createAccountButtonPressed()
        XCTAssertEqual(controller.loginInputsView.isHidden, true)
        XCTAssertEqual(controller.signupInputsView.isHidden, false)
        controller.createAccountButtonPressed()
        XCTAssertEqual(controller.loginInputsView.isHidden, false)
        XCTAssertEqual(controller.signupInputsView.isHidden, true)
    }
    
    func testsCreateAccountButtonPressedChangesButtonText() {
        controller.createAccountButtonPressed()
        XCTAssertEqual(controller.createAccountButton.titleLabel?.text, "back")
    }
}
