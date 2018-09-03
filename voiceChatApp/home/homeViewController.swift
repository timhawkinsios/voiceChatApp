//
//  ViewController.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    
    public var dashboardView: UIView!
    public var displayWidth: CGFloat = 0.0
    public var displayHeight: CGFloat = 0.0
    public let dashboardHeight: CGFloat = 48.0
    public var barHeight: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        barHeight = UIApplication.shared.statusBarFrame.size.height
        
        self.addDashboard()
        self.view.backgroundColor = UIColor.red
    }
}

