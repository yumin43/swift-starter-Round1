//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//

import Foundation
let icecreamWidth: Int = Int(readLine()!)!
let bodyHeight: Int = Int(readLine()!)!
let barHeight: Int = Int(readLine()!)!

func makeBody(width: Int, height: Int) {
    for _ in 0..<height {
        print(String(repeating: "*", count: width))
    }
}

func makeBar(width: Int,height: Int) {
    var bar: [String] = Array(repeating: " ", count: width)
    if width == 1 {
        bar = ["|"]
    } else if width % 2 == 1 {
        bar[width / 2 - 1] = "|"
        bar[width / 2 + 1] = "|"
    } else {
        bar[width / 2 - 1] = "|"
        bar[width / 2] = "|"
    }
    for _ in 0..<height{
        print(bar.joined())
    }
}

func makeIcecream(width icecreamWidth: Int, body bodyHeight: Int, bar barHeight: Int) {
    makeBody(width: icecreamWidth, height: bodyHeight)
    makeBar(width: icecreamWidth, height: barHeight)
}

makeIcecream(width: icecreamWidth, body: bodyHeight, bar: barHeight)
