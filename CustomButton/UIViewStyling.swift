//
//  UIViewStyling.swift
//  CustomButton
//
//  Created by Vasco Gomes on 29/03/2017.
//  Copyright © 2017 Vasco Gomes. All rights reserved.
//

import UIKit

extension UIView{
    
    @IBInspectable var cornerRadius : CGFloat{
        get{
            return layer.cornerRadius
        }
        set {
            layer.cornerRadius = newValue
            layer.masksToBounds = newValue > 0
        }
    }
    
}
