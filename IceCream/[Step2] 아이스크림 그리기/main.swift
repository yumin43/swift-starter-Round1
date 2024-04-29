//
//  main.swift
//  [Step2] 아이스크림 그리기
//
//  Created by 이재영 on 2024/04/29.
//

import Foundation

func printWholeIceCream(iceCream: Int, stick: Int) {
    func printIceCream(layerOfIceCream: Int) {
        for layer in 1...layerOfIceCream {
            print("***********")
        }
    }
    
    func printCone(layerOfStick: Int) {
        for layer in 1...layerOfStick {
            print("    | |")
        }
    }
    
    printIceCream(layerOfIceCream: iceCream)
    
    printCone(layerOfStick: stick)
}

printWholeIceCream(iceCream: 8, stick: 4)

//
//  main.swift
//  CodeStarterCamp_Week1
//
//  Created by yagom.
//  Copyright © yagom academy. All rights reserved.
//
print("\n\n\n\n\n\n\n")
import Foundation

func drawIceCream(height: Int, width: Int) {
    let iceCreamString = String(repeating: "*", count: width)
    for _ in 0..<height {
        print(iceCreamString)
    }
}

func drawStick(height: Int, width: Int) {
    let space = (width - 3) / 2
    let spaceString = String(repeating: " ", count: space)
    var stickString = ""
    if width % 2 == 0 && width > 3 {
        stickString = spaceString + "|  |" + spaceString
    } else {
        stickString = spaceString + "| |" + spaceString
    }
    for _ in 0..<height {
        print(stickString)
    }
}

func makeIceCream(iceCreamHeight: Int, stickHeight: Int, iceCreamWidth: Int) {
    drawIceCream(height: iceCreamHeight, width: iceCreamWidth)
    drawStick(height: stickHeight, width: iceCreamWidth)
}

makeIceCream(iceCreamHeight: 9, stickHeight: 4, iceCreamWidth: 50)
