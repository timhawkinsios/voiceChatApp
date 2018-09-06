//
//  loginViewController.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 06/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import UIKit

class loginViewController: UIViewController {
    
    var loginInputsView: UIView!
    var usernameTextField: UITextField!
    var passwordTextField: UITextField!
    var loginButton: UIButton!
    var showHidePasswordButton: UIButton!
    var signUpButton: UIButton!
    
    var signupInputsView: UIView!
    
    var displayWidth: CGFloat = 0.0
    var displayHeight: CGFloat = 0.0
    var barHeight: CGFloat = 0.0

    override func viewDidLoad() {
        super.viewDidLoad()
        
        displayWidth = self.view.frame.width
        displayHeight = self.view.frame.height
        barHeight = UIApplication.shared.statusBarFrame.size.height

        addLoginView()
        addSignUpButton()
        addSignupInputsView()
        self.view.backgroundColor = style.backgroundColour
    }
    
    @objc func showHidePasswordButtonPressed() {
        if passwordTextField.isSecureTextEntry == true {
            passwordTextField.isSecureTextEntry = false
            showHidePasswordButton.setTitle("-", for: .normal)
        } else {
            passwordTextField.isSecureTextEntry = true
            showHidePasswordButton.setTitle("+", for: .normal)
        }
    }
    
    @objc func signUpButtonPressed() {
        if loginInputsView.isHidden == true {
            loginInputsView.isHidden = false
            signupInputsView.isHidden = true
        } else {
            loginInputsView.isHidden = true
            signupInputsView.isHidden = false
        }
    }
}
