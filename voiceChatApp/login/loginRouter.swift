//
//  loginRouter.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 09/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation

extension loginViewController {
    func routeToHomeViewController() {
        let viewController = homeViewController()
        self.present(viewController, animated: true, completion: nil)
    }
}
