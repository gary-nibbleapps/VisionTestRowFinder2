//
//  Item2.swift
//  VisionTest2
//
//  Created by gary on 03/10/2020.
//

import CoreGraphics


public protocol Item2 {
    var bottomLeft: CGPoint { get }
    var topRight: CGPoint { get }
}


extension Item2 {
    var midY: CGFloat {
        (topRight.y + bottomLeft.y) / 2
    }


    func isSameRow(_ other: Item2) -> Bool {
        return bottomLeft.y <= other.midY && other.midY <= topRight.y
    }
}
