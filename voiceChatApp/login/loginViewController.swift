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
    var createAccountButton: UIButton!
    
    var signUpInputsView: UIView!
    var signUpButton: UIButton!
    var signUpPasswordTextField: UITextField!
    var signUpUsernameTextField: UITextField!
    
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
    
    @objc func createAccountButtonPressed() {
        if loginInputsView.isHidden == true {
            loginInputsView.isHidden = false
            signUpInputsView.isHidden = true
            createAccountButton.setTitle("Don't have an account? Create one", for: .normal)
        } else {
            loginInputsView.isHidden = true
            signUpInputsView.isHidden = false
            createAccountButton.setTitle("back", for: .normal)
        }
    }
}
