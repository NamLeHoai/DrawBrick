//
//  SecondViewController.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    let view1 = ColorView(color: .blue)
    let view2 = ColorView(color: .purple)
    let view3 = ColorView(color: .systemPink)
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        view.addSubview(view1)
        view.addSubview(view2)
        view.addSubview(view3)
        
        view1.frame = CGRect(x: 0, y: 100, width: 300, height: 100)
        view2.frame = CGRect(x: 0, y: 300, width: 300, height: 100)
        view3.frame = CGRect(x: 0, y: 500, width: 300, height: 100)
        
        view1.center.x = view.center.x
        view2.center.x = view.center.x
        view3.center.x = view.center.x
    }
    

    

}
