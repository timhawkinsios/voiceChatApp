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
        signupInputsView = UIView(frame: CGRect(x: 16, y: (displayHeight/3*2) - 108, width: displayWidth - 32, height: 216))
        signupInputsView.backgroundColor = .white
        signupInputsView.isHidden = true
        
        self.view.addSubview(signupInputsView)
    }
}
