//
//  homeView.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension homeViewController {
    
    func addDashboardView() {
        dashboardView = UIView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: dashboardHeight))
        dashboardView.backgroundColor = .clear
        
        addContactButton = UIButton(frame: CGRect(x: 0, y: 0, width: dashboardHeight, height: dashboardHeight))
        addContactButton.backgroundColor = .clear
        addContactButton.setTitle("+", for: .normal)
        
        userProfileButton = UIButton(frame: CGRect(x: displayWidth - dashboardHeight, y: 0, width: dashboardHeight, height: dashboardHeight))
        userProfileButton.backgroundColor = .clear
        userProfileButton.setTitle("user", for: .normal)
        
        self.view.addSubview(dashboardView)
        dashboardView.addSubview(addContactButton)
        dashboardView.addSubview(userProfileButton)
    }
    
    func addTableOptionView() {
        tableOptionView = UIView(frame: CGRect(x: 0, y: barHeight + dashboardHeight, width: displayWidth, height: dashboardHeight))
        tableOptionView.backgroundColor = .clear
        
        contactsButton = UIButton(frame: CGRect(x: 0, y: 0, width: displayWidth / 2.0, height: dashboardHeight))
        contactsButton.backgroundColor = .clear
        contactsButton.setTitle("CONTACTS", for: .normal)
        contactsButton.addBorderToBottom(colour: .white)
        contactsButton.tag = 1
        contactsButton.addTarget(self, action: #selector(radioButtonsPressed), for: .touchUpInside)
        
        recentsButton = UIButton(frame: CGRect(x: displayWidth / 2.0, y: 0, width: displayWidth / 2.0, height: dashboardHeight))
        recentsButton.backgroundColor = .clear
        recentsButton.setTitle("RECENTS", for: .normal)
        recentsButton.setTitleColor(.gray, for: .normal)
        recentsButton.tag = 2
        recentsButton.addTarget(self, action: #selector(radioButtonsPressed), for: .touchUpInside)
        
        self.view.addSubview(tableOptionView)
        tableOptionView.addSubview(contactsButton)
        tableOptionView.addSubview(recentsButton)
    }
}
