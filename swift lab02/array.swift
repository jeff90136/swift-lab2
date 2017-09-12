//
//  array.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/6.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation
func arr(){
    let a1 = [1,3.6,5]
    print(type(of: a1))
    
    let a2:[Any] = [1,2,"5"]
    print(type(of: a2))
    
    let ary1:[Int]=[]
    let ary2:[Int]=Array()
    let ary3:Array<Int>=[]
    let ary4:Array<Int>=Array()
    let ary5=Array<Int>.init()
    
    let ary6:[Int]=[1,2,3]
    if ary6.isEmpty{
    print("O")
    }else{print("X :\(ary6.count)")}
    
    let ary7=Array<Int>.init(repeating:3, count: 10)
    print(ary7.description)
    
    for k in ary7{
    print(k)
    }
    
    var point=0
    var ary8=Array(repeating:0,count:6)
    
    for _ in 1...100{
        point=Int(arc4random_uniform(6))
        ary8[point]+=1
    }
    print(ary8)
    
    for i in 0..<ary8.count{
        print("\(i+1) point:\(ary8[i])")
    }
    for (i,value) in ary8.enumerated(){
        print("\(i+1) point:\(value)")
    }
    print(ary8[0])
    print(ary8.first!)
    print(ary8[5])
    print(ary8.last!)
    print("---------------------------------------")
    var ary10=Array(repeating:0,count:3)
    ary10+=[100]
    print(ary10)
    ary10.append(123)
    print(ary10)
    ary10.insert(99, at: 3)
    print(ary10)
    ary10.insert(77, at: 3)
    print(ary10)
    ary10.remove(at: 2)
    print(ary10)
    ary10.replaceSubrange(2...3, with: [44])
    print(ary10)
    ary10[2...2]=[1,2,3,4,5,6,7,8,9]
    print(ary10)
    ary10[5...5]=[]
    print(ary10)
    ary10.reverse()
    print(ary10)
    var ary11=ary10
    print(ary11)
    
    let n=77
    for n in 1...3{
    print(n)
    }
    print(n)
    
    
    
    
    
    
}
