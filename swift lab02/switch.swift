//
//  switch.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/12.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

func sw(){

    let a = 5
    
    switch a {
    case 1:
        print("A")
    case 2,3,4,5,6,7:
        print("B")
        fallthrough
    case 10:
        print("YO!!!!")
    case 13:
        print("YO!!!!")
    case 15:
        print("YO!!!!")
    default:
        print("XXXX")
    }
    let month = (Int)(arc4random_uniform(12)+1)
    switch month {
    case 1,3,5,7,8,10,12:
        print("\(month)月有31天")
    case 4,6,9,11:
        print("\(month)月有30天")
    case 2:
        print("\(month)月有28天")
    default:
        print("fuck")
    }
    
    let score = (Int)(arc4random_uniform(101))
    switch score {
    case 90...100:
        print("\(score)得到Ａ")
    case 80..<90:
        print("\(score)得到B")
    case 70..<80:
        print("\(score)得到C")
    case 60..<70:
        print("\(score)得到D")
    case 0..<60:
        print("\(score)得到loser")
    default:
        print("fuck")
    }
    
    let b = 4
    let c = 3
    switch b {
    case c+1:
        print("AAAA")
    case 4:
        print("BBBB")
    default:
        print("fuck")
    }

    let d = (1,"2",3)
    switch d {
    case (_,"2",3):
        print("A1")
//    case (1,2,3):
//        print("A2")
    case (1,"2",3):
        print("A3")
    case let (x,y,z):
        print("\(x)\(y)\(z)")
    }

    let e = (12,12)
    switch e {
    case let (x,y)where x == y:
        print("(1,1)")
    case let (x,y)where x == -y:
        print("(1,-1)")
    case let (x,y):
        print("\(x)\(y)")
    }










}
