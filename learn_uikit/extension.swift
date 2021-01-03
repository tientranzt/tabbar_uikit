//
//  extension.swift
//  learn_uikit
//
//  Created by tientran on 26/12/2020.
//

import UIKit


extension UIView {
    
    func anchor(top: NSLayoutYAxisAnchor? = nil,
                right : NSLayoutXAxisAnchor? = nil,
                bottom : NSLayoutYAxisAnchor? = nil,
                left : NSLayoutXAxisAnchor? = nil,
                paddingTop : CGFloat = 0,
                paddingRight : CGFloat = 0,
                paddingBottom : CGFloat = 0,
                paddingLeft : CGFloat = 0,
                width : CGFloat? = nil,
                height : CGFloat? = nil)  {
        translatesAutoresizingMaskIntoConstraints = false
            
        if let top = top {
            topAnchor.constraint(equalTo: top, constant: paddingTop).isActive = true
        }
        
        if let right = right {
            rightAnchor.constraint(equalTo: right, constant: paddingRight).isActive = true
        }
        
        if let bottom = bottom {
            bottomAnchor.constraint(equalTo: bottom, constant: paddingBottom).isActive = true
        }
        
        if let left = left {
            leftAnchor.constraint(equalTo: left, constant: paddingLeft).isActive = true
        }
        
        if let width = width {
            widthAnchor.constraint(equalToConstant: width).isActive = true
        }
        
        if let height = height {
            heightAnchor.constraint(equalToConstant: height).isActive = true
        }

    }
    
    func centerXAnchor(inView view  : UIView)  {
        translatesAutoresizingMaskIntoConstraints = false
        centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
    }
    
    func centerYAnchor(inView view  : UIView)  {
        translatesAutoresizingMaskIntoConstraints = false
        centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
    }
    
    func setDimension(width : CGFloat, height : CGFloat)  {
        translatesAutoresizingMaskIntoConstraints = false
        heightAnchor.constraint(equalToConstant: height).isActive = true
        widthAnchor.constraint(equalToConstant: width).isActive = true
    }
}
