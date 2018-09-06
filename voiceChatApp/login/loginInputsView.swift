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
        loginInputsView.backgroundColor = .blue
        
        self.view.addSubview(loginInputsView)
    }
}
