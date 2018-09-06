//
//  ViewController.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    
    let dashboardHeight: CGFloat = 48.0
    
    var dashboardView: UIView!
    var tableOptionView: UIView!
    var addContactButton: UIButton!
    var contactsButton: UIButton!
    var recentsButton: UIButton!
    
    var displayWidth: CGFloat = 0.0
    var displayHeight: CGFloat = 0.0
    var barHeight: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        barHeight = UIApplication.shared.statusBarFrame.size.height
        
        self.addDashboardView()
        self.addTableOptionView()
        self.view.backgroundColor = UIColor.red
    }
}

