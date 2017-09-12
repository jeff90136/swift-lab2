//
//  poke.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/8.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

func poker(){
    var num = 52
    let point:[Any] = ["A",2,3,4,5,6,7,8,9,10,"J","Q","K"]
    let flower = ["黑桃","紅心","方塊","梅花"]
    var poke:[Int] = Array()
    for i in 0..<num{
        poke.append(i+1)
    }
    print(poke.description)
    var newpoke = washcard(source: poke)
    print(newpoke.description)
    
    var play:[[Int]] = [[],[],[],[]]
    
    for i in 0..<num {
        play[i%4] += [newpoke[i]]
    }
    for i in 0..<play.count {
        play[i].sort()
        for c in play[i]{
            print("\(flower[c%4])\(point[c%13])",terminator:"\t")
        }
        print("")
    }
}

func washcard(source:Array<Int>)->Array<Int>{
    var poke = source
    for i in 0..<poke.count{
        var count = poke.count-i
        var rand = (Int)(arc4random_uniform((UInt32)(count)))
        var temp = poke[rand]
        poke[rand]=poke[count-1]
        poke[count-1]=temp
    }
    return poke
}
