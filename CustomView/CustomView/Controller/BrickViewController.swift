//
//  BrickViewController.swift
//  CustomView
//
//  Created by Nam Le on 2/15/20.
//  Copyright © 2020 Nam Le. All rights reserved.
//

import UIKit

class BrickViewController: UIViewController {
    
    var brickView: BrickView!
    override func viewDidLoad() {
        super.viewDidLoad()

//        draw0()
//        draw1()
//        draw2()
//        draw3()
//        draw4()
        draw5()
    }
    
    func draw0(){
        for i in 0...1{
            for j in 0...1{
                drawBrick(row: i, col: j, radius: 50, color: .red)
            }
        }
    }
    
    //I
    func draw1(){
        for i in 0...2{
            drawBrick(row: i, col: 0, radius: 50, color: .purple)
        }
    }
    
    //L
    func draw2(){
        for i in 0...2{
            for j in 0...1{
                drawBrick(row: i, col: 0, radius: 50, color: .red)
                if i == 2{
                    drawBrick(row: i, col: 1, radius: 50, color: .red)
                }
            }
        }
    }

    //L ngược
    func draw3(){
        for i in 0...2{
            for j in 0...1{
                drawBrick(row: i, col: 1, radius: 50, color: .red)
                if i == 2{
                    drawBrick(row: i, col: 0, radius: 50, color: .red)
                }
            }
        }
    }
    
    //Z
    func draw4(){
        for i in 0...2{
            for j in 0...2{
                drawBrick(row: i, col: 1, radius: 50, color: .red)
                if i == 0{
                    drawBrick(row: i, col: 0, radius: 50, color: .red)
                }
                else if i == 2{
                    drawBrick(row: i, col: 2, radius: 50, color: .red)
                }
            }
        }
    }
    //Z ngược
    func draw5(){
        for i in 0...2{
            for j in 0...2{
                drawBrick(row: i, col: 1, radius: 50, color: .red)
                if i == 0{
                    drawBrick(row: i, col: 2, radius: 50, color: .red)
                }
                else if i == 2{
                    drawBrick(row: i, col: 0, radius: 50, color: .red)
                }
            }
        }
    }

    func drawBrick(row: Int, col: Int, radius: CGFloat, color: UIColor){
        let d = radius * 2
        let brick = BrickView(startPoint: CGPoint(x: d*CGFloat(col), y: d*CGFloat(row)), radius: radius, color: color)
        view.addSubview(brick)
    }
    
}
