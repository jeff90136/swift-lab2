//
//  diction.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/11.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

//Array = >1.有順序 元素可重複
//Set = >1.無順序 元素不可重複
//Dictionary = >1.無順序 元素可重複

func dic(){
    let d1:[Int:String]=[:]
    print(type(of: d1))
    let d2 = [Int:String]()
    print(type(of: d2))
    let d3:[Int:String]=Dictionary()
    print(type(of: d3))
    var d4:[Int:String]=[1:"a",5:"fd",23:"  "]
    print(d4)
    print(d4[1]!)
    d4[10]="ccc"
    print(d4)
    d4[10]="ooo"
    print(d4)
    var d5:[String:Int]=[:]
    d5["weigh"]=50
    d5["heigh"]=150
    print(d5)
    for (i,j) in d5{
        print("\(i):\(j)")
    }
    var line:[[String:Int]]=Array()
    for i in 0...5{
        line+=[["X":50+i , "Y":100+i]]
    }
    print(line)
    for posi in line{
        let x = posi["X"]
        let y = posi["Y"]
        print("(\(x!) : \(y!))")
    }
    
    for k in d5.keys{
        print(k)
    }
    for v in d5.values{
        print(v)
    }

    if let k=d5["heigh"]{print("Yes")}else{print("No")}
    if d5.values.contains(120){print("Yes")}else{print("No")}
}
