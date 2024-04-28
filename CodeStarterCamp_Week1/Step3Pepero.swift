//
//  Step3Pepero.swift
//  CodeStarterCamp_Week1
//
//  Created by Sebin Kwon on 4/28/24.
//

import Foundation


func drawBodyWithTopping(body: String, topping: String) -> String {
    return topping + body + topping
}

func drawBody(body: String, length: Int) {
    for _ in 0..<length {
        print(body)
    }
}

func drawStick(body: String, length: Int) {
    let spaceCount = max((body.count-3)/2, 0)
    let space = String(repeating: " ", count: spaceCount)
    let stick: String
    if body.count % 2 == 0 && body.count > 3 {
        stick = space + "|  |" + space
    } else if body.count < 3 {
        stick = space + "|" + space
    } else {
        stick = space + "| |" + space
    }
    for _ in 0..<length {
        print(stick)
    }
}

func makePepero(bodyLength: Int, body: String, stickLength: Int, topping: String = " ") {
    print("<정보>\n길이: \(bodyLength)\n몸통: \(body)\n토핑: \(topping)\n막대길이: \(stickLength)\n")
    let bodyWithTopping = drawBodyWithTopping(body: body, topping: topping)
    drawBody(body: bodyWithTopping, length: bodyLength)
    drawStick(body: bodyWithTopping, length: stickLength)
}
