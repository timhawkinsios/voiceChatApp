//
//  userRouter.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 10/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation

extension userViewController {
    func routeToHomeView() {
        let viewController = homeViewController()
        self.present(viewController, animated: true, completion: nil)
    }
}
