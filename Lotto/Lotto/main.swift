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
    var lotteryTicket :[Int] = []
    var lotto : [Int] = []
    var count = 0
    init(){
        purchase()
    }
    func purchase(){
        print("복권 번호 7자리를 하나씩 입력하시오")
        for i in 1...7 {
            print(i, "번째 숫자: ")
            lotteryTicket.append(Int(readLine()!)!)
        }
        

    }
    func operate(){
        for _ in 0...6 {
            lotto.append(Int(arc4random_uniform(99)+1))
        }
        for lotteryTicketNumber in lotteryTicket{
            for lottoNumber in lotto{
                if lotteryTicketNumber == lottoNumber{
                    count += 1
                }
            }
        }
        if(count == 7){
            print("복권에 당첨되었습니다!")
        }
        else
        {
            print("결과와 \(count)개의 번호가 일치합니다.")
        }
    }
    
}

var flag :Bool = false
var instance = lottoMachine()
print("------------로또 프로그램------------")
while(true){
    print("원하는 서비스를 선택하세요")
    print("1. 복권 구매 2. 결과 확인 3. 당첨 번호 확인 4. 종료")
    let input = Int(readLine()!)!
    
    switch input {
    case 1:
        instance.purchase()
    case 2:
        instance.operate()
    case 3:
        print("당첨 번호는 \(instance.lotto) 입니다.")
    case 4:
        print("프로그램을 종료합니다.")
        flag = true
    default:
        print("잘못누르셨습니다.")
    }
    
    if flag == true{
        break
    }
}

