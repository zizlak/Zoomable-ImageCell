//
//  UIColor+Ext.swift
//  ZoomableImageCell
//
//  Created by Aleksandr Kurdiukov on 27.07.21.
//

import UIKit

extension UIColor {
    
    static func randomColor() -> UIColor {
        UIColor(red: CGFloat.random(in: 0...1),
                green: CGFloat.random(in: 0...1),
                blue: CGFloat.random(in: 0...1),
                alpha: 1)
    }
}
