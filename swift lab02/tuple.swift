//
//  tuple.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/11.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

func tuple(){
    let p1 = (10,33)
    print(type(of:p1))
    print(p1.0)
    print(p1.1)
    let (x1,y1)=p1
    print(x1)
    print(y1)
    let p2 = (7,55)
    if p1<p2{
        print("ok")
    }else{print("XX")}
    let p3 = (p1,p2)
    print(type(of: p3))
    print(p3.0.1)
    
    let p4:(x:Double,y:String,z:Int)=(2.2,"333",66)
    print(p4.z)
    
    let p5=(x:3.3,y:"234")
    print(p5.y)
    
    
    
    
}
