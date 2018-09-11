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
        dashboardView = UIView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: style.dashboardHeight))
        dashboardView.backgroundColor = .clear
        
        addContactButton = UIButton(frame: CGRect(x: 0, y: 0, width: style.dashboardHeight, height: style.dashboardHeight))
        addContactButton.backgroundColor = .clear
        addContactButton.setTitle("+", for: .normal)
        
        userButton = UIButton(frame: CGRect(x: displayWidth - style.dashboardHeight, y: 0, width: style.dashboardHeight, height: style.dashboardHeight))
        userButton.backgroundColor = .clear
        userButton.setTitle("U", for: .normal)
        userButton.addTarget(self, action: #selector(userButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(dashboardView)
        dashboardView.addSubview(addContactButton)
        dashboardView.addSubview(userButton)
    }
    
    func addTableOptionView() {
        tableOptionView = UIView(frame: CGRect(x: 0, y: barHeight + style.dashboardHeight, width: displayWidth, height: style.dashboardHeight))
        tableOptionView.backgroundColor = .clear
        
        contactsButton = UIButton(frame: CGRect(x: 0, y: 0, width: displayWidth / 2.0, height: style.dashboardHeight))
        contactsButton.backgroundColor = .clear
        contactsButton.setTitle("CONTACTS", for: .normal)
        contactsButton.addBorderToBottom(colour: .white)
        contactsButton.tag = 1
        contactsButton.addTarget(self, action: #selector(radioButtonsPressed), for: .touchUpInside)
        
        recentsButton = UIButton(frame: CGRect(x: displayWidth / 2.0, y: 0, width: displayWidth / 2.0, height: style.dashboardHeight))
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
