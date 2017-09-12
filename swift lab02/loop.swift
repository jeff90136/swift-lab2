//
//  loop.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/12.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation
func loop(){
    
    var  a=1
    while a<10{
        print(a)
        a+=1
    }

    var b = 1
    repeat {
    print(b)
    b+=1
    }while b<10

    var sum = 0
    var count = 1
    repeat{
        sum+=count
        count+=1
    }while count<101
    print(sum)
    
    var cards:[Int] = Array()
    
    for i in 0..<52{
        var state = false
        var card = 0
        
        repeat {
            card = (Int)(arc4random_uniform(52))
            state = false
            for j in 0..<i{
                if card == cards[j]{
                    state = true
                    break
                }
            }
            
        }while state
            
        cards += [card]
    }
    print(cards)
    
    
    
    
    
    
    
    
}
