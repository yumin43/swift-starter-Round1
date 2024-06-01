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

func paintBody(toppedBody body: String, length: Int){
    for _ in 1...length{
        print(body)
    }
}

func paintPpaePpaeRo(length: Int, body: String, barLength: Int, topping: String = " "){
    print("<정보>")
    print("길이", length, separator: ": ")
    print("몸통", body, separator: ": ")
    print("토핑", topping, separator: ": ")
    print("막대길이", barLength, separator: ": ", terminator: "\n\n")
    let toppedBody: String = combineToppingAndBody(topping:topping, body:body)
    paintBody(toppedBody: toppedBody, length: length)
    paintBar(barLength: barLength)
}
