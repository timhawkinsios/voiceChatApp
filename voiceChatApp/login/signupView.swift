//
//  signupView.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension loginViewController {
    
    func addSignupInputsView() {
        signUpInputsView = UIView(frame: CGRect(x: 16, y: (displayHeight/3*2) - 108, width: displayWidth - 32, height: 216))
        signUpInputsView.backgroundColor = .clear
        signUpInputsView.isHidden = true
        
        signUpButton = UIButton(frame: CGRect(x: 0, y: 168, width: displayWidth - 32, height: 48))
        signUpButton.backgroundColor = .clear
        signUpButton.setTitle("sign up", for: .normal)
        signUpButton.setTitleColor(.white, for: .normal)
        signUpButton.layer.borderWidth = 1.0
        signUpButton.layer.borderColor = UIColor.white.cgColor
        
        signUpPasswordTextField = UITextField(frame: CGRect(x: 0, y: 112, width: displayWidth - 32, height: 48))
        signUpPasswordTextField.backgroundColor = .white
        signUpPasswordTextField.placeholder = "password"
        signUpPasswordTextField.textAlignment = .center
        signUpPasswordTextField.isSecureTextEntry = true
        
        signUpUsernameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: displayWidth - 32, height: 48))
        signUpUsernameTextField.backgroundColor = .white
        signUpUsernameTextField.placeholder = "username"
        signUpUsernameTextField.textAlignment = .center
        
        emailTextField = UITextField(frame: CGRect(x: 0, y: 56, width: displayWidth - 32, height: 48))
        emailTextField.backgroundColor = .white
        emailTextField.placeholder = "email"
        emailTextField.textAlignment = .center
        
        self.view.addSubview(signUpInputsView)
        signUpInputsView.addSubview(signUpButton)
        signUpInputsView.addSubview(signUpPasswordTextField)
        signUpInputsView.addSubview(signUpUsernameTextField)
        signUpInputsView.addSubview(emailTextField)
    }
}
