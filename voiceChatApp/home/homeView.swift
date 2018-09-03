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
    
    func addDashboard() {
        dashboardView = UIView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: dashboardHeight))
        dashboardView.backgroundColor = .blue
        
        addContactButton = UIButton(frame: CGRect(x: 0, y: 0, width: dashboardHeight, height: dashboardHeight))
        addContactButton.backgroundColor = .green
        addContactButton.setTitle("+", for: .normal)
        
        self.view.addSubview(dashboardView)
        dashboardView.addSubview(addContactButton)
    }
}
