//
//  File.swift
//  Starbucks
//
//  Created by Jean Ricardo Cesca on 31/08/22.
//

import Foundation
import UIKit

extension UIView {
    
    public func setViewSettingWithBgShade(view: UIView) {
        view.layer.cornerRadius = 8
        
        //MARK:- Shade a view
        view.layer.shadowOpacity = 0.5
        view.layer.shadowOffset = CGSize(width: 1.0, height: 1.0)
        view.layer.shadowRadius = 3.0
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.masksToBounds = false
    }
}
