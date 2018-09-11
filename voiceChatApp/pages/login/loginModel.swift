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
                controller.signUpSuccessful()
            } else {
                controller.handleModelErrors(error: (error?.localizedDescription)!)
            }
        })
    }
}
