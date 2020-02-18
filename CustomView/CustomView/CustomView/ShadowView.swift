//
//  ShadowView.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ShadowView: UIView {

    override init(frame: CGRect) {
        super.init(frame: CGRect.zero)
        self.backgroundColor = .red
        
    }
    
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        
        self.layer.cornerRadius = 10
        self.layer.shadowPath = UIBezierPath(rect: CGRect(x: 0, y: 0, width: self.frame.width, height: self.frame.height)).cgPath
        self.layer.shadowOpacity = 0.5
        self.layer.shadowRadius = 10
        self.layer.shadowOffset = CGSize(width: 10, height: 10)
        
//        masktoBound  = true không hiển thị phần layer vượt giới hạn kíck thước UIView()
        self.layer.masksToBounds = false
        
    }
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
