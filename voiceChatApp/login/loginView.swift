//
//  loginView.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension loginViewController {
    
    func addLoginView() {
        loginInputsView = UIView(frame: CGRect(x: 16, y: (displayHeight/3*2) - 80, width: displayWidth - 32, height: 160))
        loginInputsView.backgroundColor = .clear
        
        usernameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: displayWidth - 32, height: 48))
        usernameTextField.backgroundColor = .white
        usernameTextField.placeholder = "username"
        usernameTextField.textAlignment = .center
        
        passwordTextField = UITextField(frame: CGRect(x: 0, y: 56, width: displayWidth - 32, height: 48))
        passwordTextField.backgroundColor = .white
        passwordTextField.placeholder = "password"
        passwordTextField.textAlignment = .center
        
        loginButton = UIButton(frame: CGRect(x: 0, y: 112, width: displayWidth - 32, height: 48))
        loginButton.backgroundColor = .white
        loginButton.setTitle("login", for: .normal)
        loginButton.setTitleColor(style.backgroundColour, for: .normal)
        
        self.view.addSubview(loginInputsView)
        loginInputsView.addSubview(usernameTextField)
        loginInputsView.addSubview(passwordTextField)
        loginInputsView.addSubview(loginButton)
    }
}
