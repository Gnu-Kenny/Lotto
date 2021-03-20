//
//  main.swift
//  Lotto
//
//  Created by 박근우 on 2021/03/18.
//

import Foundation

//복권 번호 추출 <- 랜덤함수 사용
//let randomNo: UInt32 = arc4random_uniform(99)+1;
//var lotto : [Int] = []
//for i in 0...6 {
 //   lotto.append(Int(arc4random_uniform(99)+1))
//}
//print(lotto)

class lottoMachine{
    var lotteryTicket :[Int] = [0,0,0,0,0,0,0]
    var lotto : [Int] = []
    
    init(){
        operate()
    }
    func purchase(){
        for _ in 0...6 {
            lotteryTicket.append(Int(arc4random_uniform(99)+1))
        }
        

    }
    func operate(){
        for _ in 0...6 {
            lotto.append(Int(arc4random_uniform(99)+1))
        }
    }
    
}


var instance = lottoMachine()

if let input = readLine() {
    let a = input.split(separator: " ").map{Int($0)}
    
    switch a {
        case 1:
            print("press 1")
        default:
            print("other")
    }
}

    
