//
//  Round1_Step3.swift
//  CodeStarterCamp_Week1
//
//  Created by Lee Soheun on 5/6/24.
//

import Foundation

func printInfo(by bodyHeight: Int, and stickHeight: Int, for bodyType: String, with topping: String) {
    print("<정보>")
    print("길이: \(bodyHeight)")
    print("몸통: \(bodyType)")
    print("토핑: \(topping)")
    print("막대길이: \(stickHeight)\n")
}

func drawStick(centering stickHeight: Int, on bodyWidth: Int) {
    var space: String
    var stick: String
    
    if bodyWidth == 1 {
        space = ""
        stick = "|"
    } else {
        space = String(repeating: " ", count: bodyWidth / 2 - 1)
        stick = bodyWidth % 2 == 0 ? "||" : "| |"
    }
    
    for _ in 0..<stickHeight {
        print(space + stick)
    }
}

func addToppings(in body : String, add topping: String) -> String {
    return topping + body + String(topping.reversed())
}

func drawBody(repeat bodyWithToppings: String, for bodyHeight: Int) {
    for _ in 0..<bodyHeight {
        print(bodyWithToppings)
    }
}

func drawPepero(by bodyHeight: Int, and stickHeight: Int, for bodyType: String, with topping: String = "") {
    if !bodyType.isEmpty && stickHeight >= 0 && bodyHeight >= 0 {
        let bodyWithToppings: String = addToppings(in: bodyType, add: topping)
        let bodyWidth: Int = bodyWithToppings.count
        printInfo(by: bodyHeight, and: stickHeight, for: bodyType, with: topping)
        drawBody(repeat: bodyWithToppings, for: bodyHeight)
        drawStick(centering: stickHeight, on: bodyWidth)
    }
}

let bodyHeight: Int = 10
let bodyType: String = "*"
let topping: String = "@#"
let stickHeight: Int = 4

drawPepero(by: bodyHeight, and: stickHeight, for: bodyType, with: topping)
