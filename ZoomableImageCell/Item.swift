//
//  Item.swift
//  ZoomableImageCell
//
//  Created by Aleksandr Kurdiukov on 27.07.21.
//

import UIKit

struct Item {
    
    static private let array = [
        "leaf.arrow.triangle.circlepath",
        "ladybug",
        "ant.circle",
        "tortoise.fill",
        "ant.circle",
        "flame",
        "hearingaid.ear",
        "hand.point.up.braille.fill",
        "bus.fill",
        "hourglass",
    ]
    
    static var randomImage: UIImage? {
        UIImage(systemName: array.randomElement()!)
    }
}
