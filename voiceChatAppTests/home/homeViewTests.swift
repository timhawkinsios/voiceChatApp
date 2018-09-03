//
//  homeViewTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

class homeViewTests: XCTestCase {
    
    var controller: homeViewController!
    
    override func setUp() {
        super.setUp()
        controller = homeViewController()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddDashboardRendersDashboard() {
        controller.addDashboardView()
        XCTAssertNotNil(controller.dashboardView)
    }
    
    func testAddContactButtonIsRendered() {
        controller.addDashboardView()
        XCTAssertNotNil(controller.addContactButton)
    }
    
    func testTableOptionViewIsRendered() {
        controller.addTableOptionView()
        XCTAssertNotNil(controller.tableOptionView)
    }
    
    func testContactsButtonIsRendered() {
        controller.addTableOptionView()
        XCTAssertNotNil(controller.contactsButton)
    }
}
