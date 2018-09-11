//
//  userView.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 10/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension userViewController {
    func addDashboardView() {
        dashboardView = UIView(frame: CGRect(x: 0, y: barHeight, width: displayWidth, height: style.dashboardHeight))
        dashboardView.backgroundColor = .clear
        
        backButton = UIButton(frame: CGRect(x: 0, y: 0, width: style.dashboardHeight, height: style.dashboardHeight))
        backButton.backgroundColor = .clear
        backButton.setTitle("<", for: .normal)
        backButton.addTarget(self, action: #selector(backButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(dashboardView)
        dashboardView.addSubview(backButton)
    }
}

