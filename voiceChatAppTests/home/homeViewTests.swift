//
//  homeViewTests.swift
//  voiceChatAppTests
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import XCTest
@testable import voiceChatApp

extension homeViewController {
    
    func startViewLifecycle() {
        view.setNeedsLayout()
        view.layoutIfNeeded()
    }
}

class homeViewTests: XCTestCase {
    
    var controller: homeViewController!
    
    override func setUp() {
        super.setUp()
        controller = homeViewController()
        controller.startViewLifecycle()
    }
    
    override func tearDown() {
        super.tearDown()
    }
    
    func testAddDashboardRendersDashboard() {
        controller.addDashboardView()
        XCTAssertNotNil(controller.dashboardView)
        XCTAssertNotNil(controller.dashboardView.superview, "dashboardView not added to homeViewController")
    }
    
    func testAddContactButtonIsRendered() {
        controller.addDashboardView()
        XCTAssertNotNil(controller.addContactButton)
        XCTAssertNotNil(controller.addContactButton.superview, "addContactButton not added to dashboardView")
    }
    
    func testTableOptionViewIsRendered() {
        controller.addTableOptionView()
        XCTAssertNotNil(controller.tableOptionView)
        XCTAssertNotNil(controller.tableOptionView.superview, "tableOptionView not added to homeViewController")
    }
    
    func testContactsButtonIsRendered() {
        controller.addTableOptionView()
        XCTAssertNotNil(controller.contactsButton)
        XCTAssertNotNil(controller.contactsButton.superview, "contactsButton not added to homeViewController")
    }
    
    func testRecentsButtonIsRendered() {
        controller.addTableOptionView()
        XCTAssertNotNil(controller.recentsButton)
        XCTAssertNotNil(controller.recentsButton.superview, "recentsButton not added to homeViewController")
    }
}
