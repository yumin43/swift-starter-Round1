//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation

// 아이스크림 부분 그리기
func drawIceCream(iceCreamWidth: Int, iceCreamheight: Int) {
    for _ in 1...iceCreamheight {
        print(String(repeating: "*", count: iceCreamWidth))
    }
}

// 막대 부분 그리기
func drawStick(iceCreamWidth: Int, stickHeight: Int) {
    let stick = iceCreamWidth % 2 == 0 ? String(repeating: " ", count: iceCreamWidth / 2 - 2) + "|  |" : String(repeating: " ", count: iceCreamWidth / 2 - 1) + "| |"
    
    for _ in 1...stickHeight {
        print(stick)
    }
}

let iceCreamWidth: Int = 11
let iceCreamheight: Int = 8
let stickHeight = 4

drawIceCream(iceCreamWidth: iceCreamWidth, iceCreamheight: iceCreamheight)
drawStick(iceCreamWidth: iceCreamWidth, stickHeight: stickHeight)
