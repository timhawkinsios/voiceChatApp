//
//  signUpModel.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 11/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import FirebaseAuth

class loginModel {
    func firebaseSignUp(email: String, password: String, controller: loginViewController) {
        Auth.auth().createUser(withEmail: email, password: password, completion: {(user, error) in
            if user != nil {
                self.setUsername(controller: controller)
            } else {
                controller.handleModelErrors(error: (error?.localizedDescription)!)
            }
        })
    }
    
    func firebaseLogin(email: String, password: String, controller: loginViewController) {
        Auth.auth().signIn(withEmail: email, password: password, completion: {(user, error) in
            if user != nil {
                controller.signInSuccessful()
            } else {
                dump(error)
            }
        })
    }
    
    func setUsername(controller: loginViewController) {
        let changeRequest = Auth.auth().currentUser?.createProfileChangeRequest()
        changeRequest?.displayName = controller.signUpUsernameTextField.text!
        changeRequest?.commitChanges { (error) in
            controller.signUpSuccessful()
        }
    }
}
