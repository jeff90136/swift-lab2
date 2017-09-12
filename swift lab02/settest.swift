//
//  settest.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/11.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

//Array = >1.有順序 元素可重複
//Set = >1.無順序 元素不可重複
//Dictionary = >1.無順序 元素可重複


func set(){
    var s1=Set<Int>()
    print(type(of: s1))
    print(s1.count)
    s1.insert(234)
    s1.insert(00)
    s1.insert(567)
    s1.insert(00)
    s1.insert(305)
    s1.insert(02)
    print(s1)
    s1.remove(000)
    print(s1)
    s1.popFirst()
    print(s1)
    for i in s1{
        print(i)
        }
    
    
    var lott=Set<Int>()
    while lott.count<6{
        lott.insert(Int(arc4random_uniform(49)+1))
    }
    print(lott.sorted())



}
