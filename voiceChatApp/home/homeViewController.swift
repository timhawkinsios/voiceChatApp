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
    var userProfileButton: UIButton!
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
        self.view.backgroundColor = style.backgroundColour
    }
    
    @objc func radioButtonsPressed(sender: UIButton) {
        if sender.tag == 1 {
            contactsButton.addBorderToBottom(colour: .white)
            recentsButton.removeBorders()
            recentsButton.setTitle("RECENTS", for: .normal)
            contactsButton.setTitleColor(.white, for: .normal)
            recentsButton.setTitleColor(.gray, for: .normal)
        }
        if sender.tag == 2 {
            recentsButton.addBorderToBottom(colour: .white)
            contactsButton.removeBorders()
            contactsButton.setTitle("CONTACTS", for: .normal)
            contactsButton.setTitleColor(.gray, for: .normal)
            recentsButton.setTitleColor(.white, for: .normal)
        }
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

