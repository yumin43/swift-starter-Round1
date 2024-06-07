//
//  PpaePpaeRoPainter.swift
//  CodeStarterCamp_Week1
//
//  Created by 김기현 on 6/1/24.
//

import Foundation

func paintBar(barLength length: Int) {
    for _ in 1...length{
        print(" | |")
    }
}

func combineToppingAndBody(topping: String, body: String) -> String{
    return topping + body + topping
}

func paintBody(toppedBody body: String, bodyLength length: Int){
    for _ in 1...length{
        print(body)
    }
}

func paintPpaePpaeRo(length: Int, body: String, barLength: Int, topping: String = " "){
    // COMMENT - print() 함수를 많이 쓰는 것을 지양하므로 문자열 보간법 사용 후 출력
    var orderInfo: String = String()
    orderInfo.append("<정보>\n")
    orderInfo.append("길이: \(length)\n")
    orderInfo.append("몸통: \(body)\n")
    orderInfo.append("토핑: \(topping)\n")
    orderInfo.append("막대길이: \(barLength)\n")
    print(orderInfo, terminator: "\n")
    
    let toppedBody: String = combineToppingAndBody(topping:topping, body:body)
    paintBody(toppedBody: toppedBody, bodyLength: length)
    paintBar(barLength: barLength)
}

