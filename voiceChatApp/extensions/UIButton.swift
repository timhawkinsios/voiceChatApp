//
//  UIButton.swift
//  voiceChatApp
//
//  Created by Timothy Hawkins on 09/09/2018.
//  Copyright © 2018 Timothy Hawkins. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    func addBorderToBottom(colour: UIColor) {
        
        let border = CALayer()
        let borderWidth = CGFloat(2.0)
        
        border.borderColor = colour.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - borderWidth, width: self.frame.size.width , height: self.frame.size.height)
        border.name = "bottomBorder"
        
        border.borderWidth = borderWidth
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
    
    func removeBorders() {
        if let layers = self.layer.sublayers {
            for layer in layers {
                if layer.name == "bottomBorder" {
                    layer.removeFromSuperlayer()
                }
            }
        }
    }
}
