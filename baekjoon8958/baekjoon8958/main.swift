//
//  main.swift
//  baekjoon8958
//
//  Created by 이준협 on 2023/01/06.
//

import Foundation

var count = Int(readLine()!)!
var stringArr:[String] = []
var totalArr:[Int] = []
var score = 1
var total = 0
for i in 0..<count{
    var value = readLine()!
    stringArr.append(value)
}

for j in 0..<count {
    total = 0
    score = 1
    for k in 0..<stringArr[j].count{
        var text = stringArr[j]
        if text[text.index(text.startIndex, offsetBy: k)] == "o" || text[text.index(text.startIndex, offsetBy: k)] == "O" {
            total = total + score
            score = score + 1
        }else {
            score = 1
        }
        
        if k == stringArr[j].count - 1 {
            totalArr.append(total)
        }
    }
}
for i in 0..<totalArr.count{
    print(totalArr[i])
}


