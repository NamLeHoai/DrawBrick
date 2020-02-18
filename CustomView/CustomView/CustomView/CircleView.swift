//
//  CircleView.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class CircleView: UIView {

    var fillColor = UIColor()
    
    convenience init(center: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: center.x - radius,
                                y: center.y - radius,
                                width: radius*2,
                                height: radius*2))
        
//       self.backgroundColor = color
        self.fillColor = color
   }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let shapeLayer = CAShapeLayer()
        shapeLayer.path = UIBezierPath(ovalIn: self.bounds).cgPath
        shapeLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(shapeLayer)
    }

}
