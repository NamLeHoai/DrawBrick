//
//  ThirdViewController.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {

    var view1 : CircleView!
    var view2 : CircleView!
    var view3 : CircleView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view1 = CircleView(center: CGPoint(x: view.center.x, y: 150), radius: 30, color: UIColor.red)
        view2 = CircleView(center: CGPoint(x: view.center.x, y: 300), radius: 30, color: UIColor.purple)

        view3 = CircleView(center: CGPoint(x: view.center.x, y: 450), radius: 30, color: UIColor.black)

        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
    }
    

    
}


