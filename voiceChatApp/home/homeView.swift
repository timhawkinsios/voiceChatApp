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
        self.view.addSubview(dashboardView)
    }
}
