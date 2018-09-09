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
        passwordTextField.isSecureTextEntry = true
        
        loginButton = UIButton(frame: CGRect(x: 0, y: 112, width: displayWidth - 32, height: 48))
        loginButton.backgroundColor = .clear
        loginButton.setTitle("login", for: .normal)
        loginButton.setTitleColor(.white, for: .normal)
        loginButton.layer.borderWidth = 1.0
        loginButton.layer.borderColor = UIColor.white.cgColor
        loginButton.addTarget(self, action: #selector(loginButtonPressed), for: .touchUpInside)
        
        showHidePasswordButton = UIButton(frame: CGRect(x: displayWidth - 80, y: 56, width: 48, height: 48))
        showHidePasswordButton.backgroundColor = .clear
        showHidePasswordButton.setTitle("+", for: .normal)
        showHidePasswordButton.setTitleColor(style.backgroundColour, for: .normal)
        showHidePasswordButton.tag = 0
        showHidePasswordButton.addTarget(self, action: #selector(showHidePasswordButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(loginInputsView)
        loginInputsView.addSubview(usernameTextField)
        loginInputsView.addSubview(passwordTextField)
        loginInputsView.addSubview(loginButton)
        loginInputsView.addSubview(showHidePasswordButton)
    }
    
    func addSignUpButton() {
        createAccountButton = UIButton(frame: CGRect(x: 16, y: displayHeight - 48, width: displayWidth - 32, height: 48))
        createAccountButton.backgroundColor = .clear
        createAccountButton.setTitle("Don't have an account? Create one", for: .normal)
        createAccountButton.setTitleColor(.white, for: .normal)
        createAccountButton.addTarget(self, action: #selector(createAccountButtonPressed), for: .touchUpInside)
        
        self.view.addSubview(createAccountButton)
    }
}
