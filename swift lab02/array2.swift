//
//  array2.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/7.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

func arr2(){
    var ar1 = [[2,0],[4,1,3,],[9]]
    print(type(of: ar1))
    print(ar1)
    print(ar1[0])
    print(ar1[1])
    print(ar1[2])
    ar1+=[[3,2]]
    ar1[1]+=[9,3]
    print(ar1.description)
    
    for (x1,y1) in ar1.enumerated(){
        print("-------")
        for(x2,y2) in y1.enumerated(){
        print("\(x2):\(y2)")
        }
    }
    print("--------------------------------------------------")
    
    for num3 in 0...1{
        for num in 1...9{
            for num2 in 2...5{
                var sum = num*(num2+num3*4)
                print("\(num2+num3*4)*\(num)=\(sum)",terminator:"\t")
            }
            print()
        }
        print("------------------------------")
    }
    
    var ary5 = [3,7,1,57,23,0]
    print(ary5)
    ary5.sort()
    print(ary5)
    ary5.sort(by: >)
    print(ary5)
}
