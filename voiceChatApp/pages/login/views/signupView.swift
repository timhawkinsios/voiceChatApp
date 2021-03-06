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
        signUpInputsView = UIView(frame: CGRect(x: 16, y: (displayHeight/3*2) - 126, width: displayWidth - 32, height: 252))
        signUpInputsView.backgroundColor = .clear
        signUpInputsView.isHidden = true
        
        signUpButton = UIButton(frame: CGRect(x: 0, y: 168, width: displayWidth - 32, height: 48))
        signUpButton.backgroundColor = .clear
        signUpButton.setTitle("sign up", for: .normal)
        signUpButton.setTitleColor(.white, for: .normal)
        signUpButton.layer.borderWidth = 1.0
        signUpButton.layer.borderColor = UIColor.white.cgColor
        signUpButton.addTarget(self, action: #selector(signUpButtonPressed), for: .touchUpInside)
        
        signUpPasswordTextField = UITextField(frame: CGRect(x: 0, y: 112, width: displayWidth - 32, height: 48))
        signUpPasswordTextField.backgroundColor = .white
        signUpPasswordTextField.placeholder = "password"
        signUpPasswordTextField.textAlignment = .center
        signUpPasswordTextField.isSecureTextEntry = true
        
        signUpShowHidePasswordButton = UIButton(frame: CGRect(x: displayWidth - 80, y: 112, width: 48, height: 48))
        signUpShowHidePasswordButton.backgroundColor = .clear
        signUpShowHidePasswordButton.setTitle("+", for: .normal)
        signUpShowHidePasswordButton.setTitleColor(style.chirpsColour, for: .normal)
        signUpShowHidePasswordButton.tag = 1
        signUpShowHidePasswordButton.addTarget(self, action: #selector(showHidePasswordButtonPressed), for: .touchUpInside)
        
        signUpUsernameTextField = UITextField(frame: CGRect(x: 0, y: 0, width: displayWidth - 32, height: 48))
        signUpUsernameTextField.backgroundColor = .white
        signUpUsernameTextField.placeholder = "username"
        signUpUsernameTextField.textAlignment = .center
        
        emailTextField = UITextField(frame: CGRect(x: 0, y: 56, width: displayWidth - 32, height: 48))
        emailTextField.backgroundColor = .white
        emailTextField.placeholder = "email"
        emailTextField.textAlignment = .center
        
        errorMessageView = UILabel(frame: CGRect(x: 0, y: 216, width: displayWidth - 32, height: 36))
        errorMessageView.backgroundColor = .clear
        errorMessageView.textAlignment = .center
        errorMessageView.textColor = .gray
        errorMessageView.font = errorMessageView.font.withSize(12)

        self.view.addSubview(createAccountButton)
        self.view.addSubview(errorMessageView)
        
        self.view.addSubview(signUpInputsView)
        signUpInputsView.addSubview(signUpButton)
        signUpInputsView.addSubview(signUpPasswordTextField)
        signUpInputsView.addSubview(signUpUsernameTextField)
        signUpInputsView.addSubview(emailTextField)
        signUpInputsView.addSubview(signUpShowHidePasswordButton)
        signUpInputsView.addSubview(errorMessageView)
    }
}
