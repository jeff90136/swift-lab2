//
//  string.swift
//  swift lab02
//
//  Created by 蔡俊賢 on 2017/9/8.
//  Copyright © 2017年 蔡俊賢. All rights reserved.
//

import Foundation

func str(){
    var name = "Tom"
    name += " 湯姆"
    print(type(of: name))
    for c in name.characters{
        print(c)
        }
    print(name.unicodeScalars.count)
    print(name.utf8.count)
    print(name.utf16.count)
    
    let charnum = Array(name.characters)
    print(type(of: charnum))
    print(charnum)
    
    let new = String(charnum)
    print(type(of: new))
    print(new)
    
    let test = ["J","o","h","n"]
    print(type(of: test))
    let test2 = String.init(describing:test)
    print(type(of: test2))
    print(test2)
    let cc3 = test2 + name
    print(cc3)
    
    var letter = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
//    let sel = select(source:letter,from:2,to:10)
    let sel2 = select2(source:letter,from:2,to:10)
    
    print(letter.substring(with: rangeselect(source: letter, from: 2, to: 10)))
    print(sel2)
    letter.replaceSubrange(rangeselect(source: letter, from: 2, to: 5), with: "7777")
    print(letter)
    letter.removeSubrange(rangeselect(source: letter, from: 3, to: 6))
    print(letter)
    
//    var from = letter.index(letter.startIndex, offsetBy: 5)
//    var to = letter.index(letter.startIndex, offsetBy: 8)
//    var ra = from..<to
//    var abc = letter.substring(with: ra)
//    print(abc)
}
func select (source:String,from:Int,to:Int)->String{
//    let begin = source.index(source.startIndex, offsetBy: from)
//    let end = source.index(source.startIndex, offsetBy: to)
//    let ra = begin..<end
    let ra = rangeselect(source: source, from: from, to:to)
    let abc = source.substring(with: ra)
    return abc
}
func select2 (source:String,from:Int,to:Int)->String{
    var abc = Array(source.characters)
    var co = ""
    for i in from..<to{
        co+=String(abc[i])
    }
    return co
}
func rangeselect(source:String,from:Int,to:Int)->Range<String.Index>{
    let begin = source.index(source.startIndex, offsetBy: from)
    let end = source.index(source.startIndex, offsetBy: to)
    let ra = begin..<end
    return ra
}

func string2(){
    let a = 10
    let b=2
    if a>b {print("ok")}
    else {print("XX")}
    let c="20"
    let d = "7"
    if c>d {print("ook")}
    else {print("xxx")}
    
    var e:String?
    if let f = e{
        print("oook")
    }else{
        print("xxxx")
    }
    
    let id = "a123456789"
    if let ra = id.range(of: "1234"){
        print("ooook")
    }else {
        print("xxxxx")
    }
    
    if let ra = id.range(of: "^[A-Za-z][1,2][0-9]{8}$", options: .regularExpression){
        print("oooook")
    }else {
        print("xxxxxx")
    }
 
}
