//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

func drawBody(bodyWidth: Int, bodyHeight: Int) {
    for _ in 0..<bodyHeight {
        print(String(repeating: "*", count: bodyWidth))
    }
}

func drawStick(bodyWidth: Int, stickHeight: Int) {
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

func drawIceCream(bodyWidth: Int, bodyHeight: Int, stickHeight: Int) {
    if bodyWidth > 0 && bodyHeight > 0 && stickHeight >= 0 {
        drawBody(bodyWidth: bodyWidth, bodyHeight: bodyHeight)
        drawStick(bodyWidth: bodyWidth, stickHeight: stickHeight)
    }
}

let bodyWidth: Int = 11
let bodyHeight: Int = 8
let stickHeight = 4

drawIceCream(bodyWidth: bodyWidth, bodyHeight: bodyHeight, stickHeight: stickHeight)
