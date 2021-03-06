//
//  BrickView.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class BrickView: UIView {

    var radius: CGFloat = 0.0
    var fillColor = UIColor()
    
    convenience init(startPoint: CGPoint, radius: CGFloat, color: UIColor) {
        self.init(frame: CGRect(x: startPoint.x,
                                y: startPoint.y,
                                width: radius*2,
                                height: radius*2))
        
        self.radius = radius
        self.fillColor = color
    }

    override func draw(_ rect: CGRect) {
        super.draw(rect)
        let squareLayer = CAShapeLayer()
        squareLayer.path = UIBezierPath(roundedRect: self.bounds, cornerRadius: 0).cgPath
        squareLayer.fillColor = fillColor.cgColor
        self.layer.addSublayer(squareLayer)
        
        let L: CGFloat = radius*2
        let x: CGFloat = L / 10
        
        let topLayer = CAShapeLayer()
        let path1 = UIBezierPath()
        path1.move(to: CGPoint(x: 0, y: 0))
        path1.addLine(to: CGPoint(x: L, y: 0))
        path1.addLine(to: CGPoint(x: L - x, y: x))
        path1.addLine(to: CGPoint(x: x, y: x))
        
        topLayer.path = path1.cgPath
        topLayer.fillColor = UIColor.white.cgColor
        topLayer.opacity = 0.4
        squareLayer.insertSublayer(topLayer, at: 0)
        
        // right
        let rightLayer = CAShapeLayer()
        let path2 = UIBezierPath()
        path2.move(to: CGPoint(x: L, y: 0))
        path2.addLine(to: CGPoint(x: L - x, y: x))
        path2.addLine(to: CGPoint(x: L - x, y: L - x))
        path2.addLine(to: CGPoint(x: L, y: L))
        
        rightLayer.fillColor = UIColor.white.cgColor
        rightLayer.opacity = 0.5
        rightLayer.path = path2.cgPath
        squareLayer.insertSublayer(rightLayer, at: 1)
        
        // bot
        let botLayer = CAShapeLayer()
        let path3 = UIBezierPath()
        path3.move(to: CGPoint(x: L, y: L))
        path3.addLine(to: CGPoint(x: L - x, y: L - x))
        path3.addLine(to: CGPoint(x: x, y: L - x))
        path3.addLine(to: CGPoint(x: 0, y: L))
        
        botLayer.fillColor = UIColor.white.cgColor
        botLayer.opacity = 0.3
        botLayer.path = path3.cgPath
        squareLayer.insertSublayer(botLayer, at: 2)
        
        // left
        let leftLayer = CAShapeLayer()
        let path4 = UIBezierPath()
        path4.move(to: CGPoint(x: 0, y: L))
        path4.addLine(to: CGPoint(x: x, y: L - x))
        path4.addLine(to: CGPoint(x: x, y: x))
        path4.addLine(to: CGPoint(x: 0, y: 0))
        
        leftLayer.fillColor = UIColor.white.cgColor
        leftLayer.opacity = 0.1
        leftLayer.path = path4.cgPath
        squareLayer.insertSublayer(leftLayer, at: 3)
        
        print(self.layer.sublayers?.count)
        print(squareLayer.sublayers?.count)
    }
}
