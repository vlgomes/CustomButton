//
//  CustomButton.swift
//  CustomButton
//
//  Created by Vasco Gomes on 29/03/2017.
//  Copyright © 2017 Vasco Gomes. All rights reserved.
//

import UIKit

@IBDesignable
class CustomButton: UIButton {
    
    let another = UIView()
    
    @IBInspectable var padding : CGFloat = 0.0
    
    @IBInspectable var innerViewHidden : Bool = false {
        didSet {
            another.isHidden = innerViewHidden
        }
    }
    
    
    override func draw(_ rect: CGRect) {

        another.backgroundColor = UIColor.purple
        
        let pad =  padding * 2
        
        let size = CGSize(width: self.frame.size.width - pad, height: self.frame.size.height - pad)
        
        another.frame = CGRect(x: padding, y: padding, width: size.width, height: size.height)
        
        self.addSubview(another)
    }
}
