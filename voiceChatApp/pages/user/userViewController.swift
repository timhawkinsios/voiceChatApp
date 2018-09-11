//
//  userViewController.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 10/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import UIKit

class userViewController: UIViewController {
    
    var dashboardView: UIView!
    var backButton: UIButton!
    
    var displayWidth: CGFloat = 0.0
    var displayHeight: CGFloat = 0.0
    var barHeight: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        barHeight = UIApplication.shared.statusBarFrame.size.height
        
        self.addDashboardView()
        self.view.backgroundColor = style.chirpsColour
    }
    
    @objc func backButtonPressed() {
        routeToHomeView()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
