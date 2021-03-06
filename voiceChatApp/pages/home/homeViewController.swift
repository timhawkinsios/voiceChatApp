//
//  ViewController.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 03/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {
    var dashboardView: UIView!
    var tableOptionView: UIView!
    var contactsView: UITableView!
    
    var addContactButton: UIButton!
    var userButton: UIButton!
    var contactsButton: UIButton!
    var recentsButton: UIButton!
    
    var displayWidth: CGFloat = 0.0
    var displayHeight: CGFloat = 0.0
    var barHeight: CGFloat = 0.0
    
    var contactArray = [
        ["Jack", "Jonny", "Barry", "Bruno"],
        ["Jackson", "Drax"],
        ["Gwen"],
        ["Jack", "Jonny", "Barry", "Bruno"]
    ]

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        barHeight = UIApplication.shared.statusBarFrame.size.height
        
        self.addDashboardView()
        self.addTableOptionView()
        self.addContactsView()
        self.view.backgroundColor = style.chirpsColour
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
    
    @objc func userButtonPressed() {
        routeToUserViewController()
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}

