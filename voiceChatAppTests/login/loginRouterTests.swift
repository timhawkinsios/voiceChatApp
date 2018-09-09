//
//  loginRouterTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 09/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class loginRouterTests: XCTestCase {
    
    var controller: loginViewController!
    
    override func setUp() {
        super.setUp()
        controller = loginViewController()
        controller.startViewLifecycle()
    }
    
    func testRouteToHomePageRendersHomeViewController() {
        controller.routeToHomeViewController()
    }
}
