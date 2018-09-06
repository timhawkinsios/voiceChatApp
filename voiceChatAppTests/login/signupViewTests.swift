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
        XCTAssertNotNil(controller.signupInputsView)
        XCTAssertNotNil(controller.signupInputsView.superview)
    }
    
}
